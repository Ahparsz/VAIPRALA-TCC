<?php
include 'banco/conexao.php';

//AQUI QUANDO APERTAR NA REGIAO PRA MUDAR NOS DESTINOS
if(isset($_POST['regiao'])) {
    $regiao = $_POST['regiao'];
    $estados="";
    $getestado = "SELECT estado.cd_estado, estado.nm_estado, estado.id_regiao FROM estado WHERE estado.id_regiao =".$regiao;
		if($query = $mysqli->query($getestado)){
			if($query->num_rows>0){
				while($dados = $query->fetch_object()){
                    $_SESSION['cd_estado'] = $dados->cd_estado;
					$estados.="<option value=".$_SESSION['cd_estado'].">".$dados->nm_estado."</option>";					
				}
                echo $estados;
			}
		}
 }


//AQUI QUANDO APERTAR NO ESTADO, APARECE AS CIDADES
if(isset($_POST['estado'])) {
    $_SESSION['estado'] = $_POST['estado'];
        $cidades="";
        $getcidade = "SELECT distinct cidade.cd_cidade, cidade.nm_cidade FROM cidade WHERE cidade.id_estado =".$_SESSION['estado'];
                if($query = $mysqli->query($getcidade)){
                    if($query->num_rows>0){
                        while($dados = $query->fetch_object()){
                            $_SESSION['cd_cidade'] = $dados->cd_cidade;
                            $nm_cidade=$dados->nm_cidade;

                            $cidades.="
                            <br>
                            <h4><a href=cidades.php?codigo_filtro=".$_SESSION['cd_cidade'].">".$nm_cidade."</a></h4>";
                        }
                    }  
                    echo $cidades;
                }

}

//AQUI É O FILTRO 
if(isset($_POST['clima']) || isset($_POST['ambiente']) || isset($_POST['tipo'])) {

    $cidades = '';
    $clima = '';
    $ambiente = '';
    $tipo = '';
    $sql = "select distinct cidade.cd_cidade, cidade.nm_cidade from cidade";
    

    if(isset($_POST['clima'])){
        $clima = " inner join cidadeclima on cidade.cd_cidade = cidadeclima.id_cidade and cidadeclima.id_clima = ".$_POST['clima'];
    }

    if(isset($_POST['ambiente'])){
        $ambiente = " inner join cidadeambiente on cidade.cd_cidade = cidadeambiente.id_cidade and cidadeambiente.id_ambiente = ".$_POST['ambiente'];
    }

    if(isset($_POST['tipo'])){
        $tipo = " inner join cidadetipo on cidade.cd_cidade = cidadetipo.id_cidade and cidadetipo.id_tipo = ".$_POST['tipo'];
    }

    $estado = " and cidade.id_estado = ".$_SESSION['estado']." Limit 2";

    $sql = $sql.$clima.$ambiente.$tipo.$estado;

    if($query = $mysqli->query($sql)){
        if($query->num_rows>0){
            while($dados = $query->fetch_object()){
                $_SESSION['cd_cidade'] = $dados->cd_cidade;
                $nm_cidade = $dados->nm_cidade;
                
                $cidades = "
                <br>
                <h4><a href=cidades.php?codigo_filtro=".$_SESSION['cd_cidade'].">".$nm_cidade."</a></h4>
                ";
                echo $cidades;
            }
        } else{
            echo "
            <br><br><br><br><br><br><center><br><h4>Nenhuma cidade encontrada.</h4><center>
            ";
        }
    }
}else if(!isset($cidades)){
    $cidades="";
    $getcidade = "SELECT distinct cidade.cd_cidade, cidade.nm_cidade FROM cidade WHERE cidade.id_estado =".$_SESSION['estado'];
    if($query = $mysqli->query($getcidade)){
        if($query->num_rows>0){
            while($dados = $query->fetch_object()){
                $_SESSION['cd_cidade'] = $dados->cd_cidade;
                $nm_cidade=$dados->nm_cidade;

                $cidades.="
                <br>
                <h4><a href=cidades.php?codigo_filtro=".$_SESSION['cd_cidade'].">".$nm_cidade."</a></h4>";
            }
        }  
        echo $cidades;
    }
}

?>






<script type="text/javascript">
        $(document).ready(function(){
            $(".favoritar").on("click", function(){
				var selecionado = $(this);
				var op_favoritar = selecionado.val();
                
				$.ajax({
                url: "botoes.php",
                type: "POST",
                data: 'favoritar='+op_favoritar,
                dataType: "html"
 
                }).done(function(resposta) {
                    $('#cidade').html(resposta);
					
                }).fail(function(jqXHR, textStatus ) {
                    console.log("Request failed: " + textStatus);
 
                }).always(function() {
                    console.log("completou");
                });
            });
        });
</script> 