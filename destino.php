<?php
//AQUI É O INICIO

include 'banco/conexao.php';
include 'css/header.php';
if (!isset($_SESSION)) session_start();
?>

<!DOCTYPE html>
<html lang="en">
    <meta charset="utf-8">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Destinos</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <style>
        body{
    		background-image: linear-gradient(to bottom right, #FEC8AE, #FEDBD2, #FEE9D2, #FEFFDE, #F3F1EA);
    		background-size: cover;
    		background-repeat: no-repeat;
    	}
        .scrollspysite{
            position:relative;
            overflow: auto;
            height: 400px;
        }
        #regiao{
            width: 80px;
            height: 80px;
            float:left;
            margin-left:5px;
            text-align:center;
            font-size: 15px;
            border-radius:50%;
            background-color:#88002F;
            transition:all 0.4s ease-out;
        }
        #regiao:hover{
            cursor:pointer;
            transform:translateY(-20px);
            box-shadow: 4px 30px 16px 2px #888;
        }
        #caixas{
  			background-color: #FFF;
  			border-radius: 10px;
  			padding: 25px;
              height:auto;
        }
        *{
		    font-family: 'DM Serif Display', serif;	
		  }
        a{
        color:#f95426;
      }
    </style>
</head>
<body>
<?php
	//AQUI É O INICIO LOGADO PODE SER O PERFIL
		if (isset($_SESSION['usuario'])){
			$usuario = $_SESSION['usuario'];
			$user = $_SESSION['user'];
		
			echo "<nav class='navbar nav-expand-lg bg-white'>
			<a class='navbar-brand nav-link justify-content-center' href='index.php'>
			 <img src='img/cristo.png' width='100' class='d-inline-block align-center justify-content-center'>
			 Vai Pra lá.com
		   </a>
		   <ul class='nav justify-content-end'>
			   <li class='nav-item'><a href='sobre.php' class='nav-link'>Sobre</a></li>
			   <li class='nav-item'><a href='perfil.php' class='nav-link'>Perfil</a></li>
			</ul>
            
            <ul class='nav justify-content-end'>
            <form method='post' action='pesquisa.php' class='form-inline my-2 my-lg-0'>
                <input class='form-control mr-sm-2' type='search' id='pesquisa' name='pesquisa' placeholder='Procure aqui'>
                <button class='btn btn-outline-warning' type='submit'>Procurar</button>
            </form>
            </ul>
		 </nav>";
		}
?>

<?php
	//AQUI É O NÃO LOGADO
	if (!isset($_SESSION['usuario'])){
		echo "<nav class='navbar nav-expand-lg bg-white'>
		<a class='navbar-brand nav-link justify-content-center' href='index.php'>
		 <img src='img/cristo.png' width='100' class='d-inline-block align-center justify-content-center'>
		 Vai Pra lá.com
	   </a>
       <ul class='nav justify-content-end'>
       <li class='nav-item'><a href='sobre.php' class='nav-link'>Sobre</a></li>
       <li class='nav-item'><a href='login.php' class='nav-link'>Entrar</a></li>
    </ul>
    
    <ul class='nav justify-content-end'>
        <form method='post' action='pesquisa.php' class='form-inline my-2 my-lg-0'>
            <input class='form-control mr-sm-2' type='search' id='pesquisa' name='pesquisa' placeholder='Procure aqui'>
            <button class='btn btn-outline-warning' type='submit'>Procurar</button>
        </form>
    </ul>
	 </nav>";
	}
?>

    <br>

    <div class='container-fluid'>
        <div class='row'>
            <div class='col-sm-5 offset-md-1' id='caixas'>
                <?php
                    if(isset($_POST['regiao'])) {
                        $regiao = $_POST['regiao'];
                        
                        $sql = "SELECT * FROM regiao WHERE regiao.cd_regiao =".$regiao;
                            if($query = $mysqli->query($sql)){
                                if($query->num_rows>0){
                                    while($dados = $query->fetch_object()){
                                        $_SESSION['cd_regiao'] = $dados->cd_regiao;
                                        
                                        echo "<h2><b>".$dados->nm_regiao."</b></h2>
                                        <p class='text-justify'>".$dados->info."</p>";
                                    }
                                }
                            }
                    }
                ?>

                <br>
                <h5>Alguma direção</h5>
                <form method='post' action='destino.php'>
                    <?php
			            //BOTOES DAS REGIOES
			                $getregiao = "SELECT * FROM regiao";
			                  if($query = $mysqli->query($getregiao)){
			        	          if($query->num_rows>0){
			        		            while($dados = $query->fetch_object()){
			        			            $cd_regiao = $dados->cd_regiao;
			        			            $nm_regiao = $dados->nm_regiao;
                                        
			        			            echo "
                                            <div class='col-sm-12'>
                                              <button type='submit' id='regiao' name='regiao' class='text-warning' value='".$cd_regiao."'>".$nm_regiao."</button>
                                            </div>";
			        		            }
			        	          }
			                  }else{
			        	          echo'erro';
			                  }
			        ?>
                </form>
            </div>

            <div class='col-sm-4 offset-md-1 bg-white'id='caixas'>    
            <?php
            //FOTO DA REGIAO
                if(isset($_POST['regiao'])) {
                    $regiao = $_POST['regiao'];
                    
                    $sql = "SELECT * FROM regiao WHERE regiao.cd_regiao =".$regiao;
                        if($query = $mysqli->query($sql)){
                            if($query->num_rows>0){
                                while($dados = $query->fetch_object()){
                                    echo "<img class='justify' width='100%' height='auto' src='img/regiao/".$dados->cd_regiao.".jpg'>";
                                }
                            }
                        }
                }
            ?>
            </div>           
        </div>

        <br>

        <div class='row'>
        <div class='col-sm-10 offset-md-1 bg-white' id='caixas'>
            <center>
            <div class=''>
                <div class='card-body'>
                <h3 class='card-title'>Estados</h3>
                <select id='estado' class='form-control'>
                <option><b>SELECIONE UM ESTADO</b></option>
                <?php
                    $sql = "SELECT * FROM estado WHERE estado.id_regiao =".$_SESSION['cd_regiao'];
                    $estados='';
                        if($query = $mysqli->query($sql)){
                            if($query->num_rows>0){
                                while($dados = $query->fetch_object()){
                                    $_SESSION['cd_estado'] = $dados->cd_estado;
                                    $nm_estado = $dados->nm_estado;
					                $estados.="<option value=".$_SESSION['cd_estado'].">".$dados->nm_estado."</option>";
                                }
                                echo $estados;
                            }
                        }
                ?>
                </select>
                </div>
            </div>
            </center>
        </div>
        </div>

        <br>
        <div class='row'>
            <div class='col-sm-3 offset-md-1 bg-white' id='caixas'>
            <button class='btn btn-outline-warning' id='filtroBtn'>Filtrar</button>
            <button class='btn btn-outline-info' id='clearBtn'>Limpar</button><br>
            <hr>
                <div data-spy="scroll" data-target="#navbar-vertical" data-offset="0" class='scrollspysite'>
                    <div id="filtro">
                    <label>
						<b>Clima da cidade:</b>
					</label><br>
                        <?php
                        $clima = "SELECT * FROM clima";
                        if($query = $mysqli->query($clima)){
                            if($query->num_rows>0){
                                while($dados = $query->fetch_object()){
                                    echo "<input type='radio' class='clima' name='clima' value='$dados->cd_clima'> $dados->nm_clima <br>";
                                }
                            }
                        }

                        $ambientesql = "select * from ambiente";
						if ($result = $mysqli->query($ambientesql)) {
							echo "<hr><label><b>Ambiente da cidade: </b></label><br>";
							while($obj = $result->fetch_object()){
								echo "<input type='radio' class='ambiente' name='ambiente' value='$obj->cd_ambiente'> $obj->nm_ambiente <br>";
							}
						} 
					
						$tiposql = "select * from tipo";
						if ($result = $mysqli->query($tiposql)) {
							echo "<hr><label><b>Característica da cidade: </b></label><br>";
							while($obj = $result->fetch_object()){
								echo "<input type='radio' class='tipo' name='tipo' value='$obj->cd_tipo'> $obj->nm_tipo <br>";
							}
						} 
					
						?>
					</div>
                </div>  
            </div>

            <div class='col-sm-6 offset-md-1 bg-white justify' id='caixas'>
                <h2 class='text-center'> Encontre o seu futuro destino:</h2>
                <div data-spy="scroll" id='cidade_local' data-target="#navbar-vertical" data-offset="0" class='scrollspysite'>
                </div>
            </div>
        </div>
        <br>
        <br>
    </div>

    <script type="text/javascript">
        $(document).ready(function(){
            $(".regiao").on("click", function(){
				var selecionado = $(this);
				var op_regiao = selecionado.val();
                
				$.ajax({
                url: "filtro.php",
                type: "POST",
                data: 'regiao='+op_regiao,
                dataType: "html"
 
                }).done(function(resposta) {
                    $('#estado').html(resposta);
					
                }).fail(function(jqXHR, textStatus ) {
                    console.log("Request failed: " + textStatus);
 
                }).always(function() {
                    console.log("completou");
                });
				
            });

			$("#estado").on("change", function(){
				var selecionado = $('#estado option:selected');
				var op_estado = selecionado.val();
                $.ajax({
                url: "filtro.php",
                type: "POST",
                data: 'estado='+op_estado,
                dataType: "html"
 
                }).done(function(resposta) {
                    $('#cidade_local').html(resposta);
 
                }).fail(function(jqXHR, textStatus ) {
                    console.log("Request failed: " + textStatus);
 
                }).always(function() {
                    console.log("completou");
                });
            });

            $("#clearBtn").on("click", function(){
                $('input[type="radio"]:checked').prop('checked', false);

                var selecionado = $('#estado option:selected');
				var op_estado = selecionado.val();
                $.ajax({
                url: "filtro.php",
                type: "POST",
                data: 'estado='+op_estado,
                dataType: "html"
 
                }).done(function(resposta) {
                    $('#cidade_local').html(resposta);
 
                }).fail(function(jqXHR, textStatus ) {
                    console.log("Request failed: " + textStatus);
 
                }).always(function() {
                    console.log("completou");
                });
            });

            $("#filtroBtn").on("click", function(){
				var clima = $('input[name="clima"]:checked');
				var op_clima = clima.val();

                var ambiente = $('input[name="ambiente"]:checked');
				var op_ambiente = ambiente.val();

                var tipo = $('input[name="tipo"]:checked');
				var op_tipo = tipo.val();
                 
				$.ajax({
                url: "filtro.php",
                type: "POST",
                data: {clima:op_clima, ambiente:op_ambiente, tipo:op_tipo},
                dataType: "html"
 
                }).done(function(resposta) {
                    $('#cidade_local').html(resposta);
					
                }).fail(function(jqXHR, textStatus ) {
                    console.log("Request failed: " + textStatus);
 
                }).always(function() {
                    console.log("completou");
                });
				
            });
        });
    	</script>
</body>
</html>