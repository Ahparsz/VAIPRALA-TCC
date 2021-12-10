<?php
include 'banco/conexao.php';
include 'css/header.php';
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

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <style>
        body{
    		background-image: url(img/cidades.jpg); 
    		background-size: cover;
    		background-repeat: no-repeat;
    	}
        .scrollspysite{
            position:relative;
            overflow: auto;
            height: 400px;
        }
        #caixas{
  			border-radius: 10px;
  			padding: 25px;
        }
        #caixas2{
            border-radius: 10px;
  			padding: 25px;
            height: relative;
        }
        
        #favorito{
            margin-top: 90%;
        }
        #botão{
            position:absolute;
            z-index: 1;
        }
        *{
			font-family: 'DM Serif Display', serif;
		}
		a{
			color:#f95426;	
		}
        .fas{
            margin-left: 30px;
            margin-right: 30px;
            margin-top: 10px;
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
        <br>
        <div class='row'>
            <div class='col-sm-5 offset-md-1 bg-white' id='caixas2'>
                <div class="carousel slide" id="carrosel" data-ride="carousel">
                    <ul class="carousel-indicators">
                        <li class="active" data-target='#carrosel' data-slide-to="0" ></li>
                        <li data-target='#carrosel' data-slide-to="1"></li>
                    </ul>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                                <?php
                                    if (isset($_POST['pesquisa'])){
                                      $_SESSION['pesquisa'] = $_POST['pesquisa'];

                                      if($query = $mysqli->query("select * from cidade where cidade.nm_cidade like '%".$_SESSION['pesquisa']."%'")){
                                            while($dados = $query->fetch_object()){
                                            $maps = $dados->maps;
                                            $foto = $dados->cd_cidade;

                                              echo "<img width='500' height='500' src='img/cidade/".$foto.".jpg'>";                                 
                                            }

                                        }
                                    }else {
                                        echo 'aaaaaaaaaa';
                                    }
                                ?>
                        </div>
                        <div class="carousel-item">
                            <?php
                            echo $maps;
                            ?>
                        </div>
                    </div>
                    <a href="#carrosel" class="carousel-control-prev" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a href="#carrosel" class="carousel-control-next" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </a>
                </div>
            </div>

            <div class='col-sm-4 offset-md-1 bg-white' id='caixa'>
                <div id='caixinha'>
                <center>
                    <?php
                        if (isset($_POST['pesquisa'])){
                            $_SESSION['pesquisa'] = $_POST['pesquisa'];
                            
                            if($query = $mysqli->query("select * from cidade where cidade.nm_cidade like '%".$_SESSION['pesquisa']."%'")){
                                while($dados = $query->fetch_object()){
                                    $_SESSION['cd_cidade'] = $dados->cd_cidade;
                                    $nm_cidade = "<br>
                                    <div class='row'>
                                        <div class='col-sm-6'>
                                            <h2>".$dados->nm_cidade."</h2>
                                        </div>
                                        <br>
                                        <br>
                                        <br>";
                                }

                                echo $nm_cidade;

                                if (isset($_SESSION['usuario'])){
                                    $fav = false;
                                    if($query2 = $mysqli->query("select * from favorito where id_usuario = ".$_SESSION['usuario'])){
                                        while($data = $query2->fetch_object()){
                                            if($data->id_cidade == $_SESSION['cd_cidade']){
                                                $fav = true;
                                            }
                                        }
                                    }
                                    if($fav){
                                        echo "
                                                  <div class='col-sm-6'>
                                                      <i class='fas fa-heart float-right'></i>
                                                  </div>
                                              </div>";
                                    }else{
                                        echo "
                                              <div class='col-sm-6'>
                                                  <a id='favoritar' value='".$_SESSION['cd_cidade']."' class='btn btn-danger bnt-sm float-right'><i class='fas fa-heart'></i></a>
                                              </div>
                                          </div>";
                                    }
                                }
                            }
                        }
                    ?>  
                </center>
                </div>
                <div data-spy="scroll" data-target="#navbar-vertical" data-offset="0" class='scrollspysite'>
                    <?php
                    	if (isset($_POST['pesquisa'])){
                            $_SESSION['pesquisa'] = $_POST['pesquisa'];
                            
                            if($query = $mysqli->query("select * from cidade where cidade.nm_cidade like '%".$_SESSION['pesquisa']."%'")){
                                while($dados = $query->fetch_object()){
                                $info=$dados->info;
                                $_SESSION['cd_cidade'] = $dados->cd_cidade; 
                              }
                                echo $info;
                            }
                            $_SESSION['pesquisa'] = null;
                        }
                    ?>
                    <br>
                    <br>
                    <br>
                    <br>
                    <div class='container'>
                        <a href='destino.php' class='btn btn-danger bnt-sm float-left'>VOLTAR</a>
                    </div>
                </div>
            </div>
           
        </div>
        <br>
    </div>
</body>
</html>

<script type="text/javascript">
      $(document).ready(function(){
          $("#favoritar").on("click", function(){
			    var selecionado = $(this);
			    var op_fave = selecionado.val();
              
			    $.ajax({
              url: "botoes.php",
              type: "POST",
              data: 'favoritar='+op_fave,
              dataType: "html"

              }).done(function(resposta) {
                  $('#caixinha').html(resposta);
				
              }).fail(function(jqXHR, textStatus ) {
                  console.log("Request failed: " + textStatus);

              }).always(function() {
                  console.log("completou");
              });				
          });
      });
</script>
