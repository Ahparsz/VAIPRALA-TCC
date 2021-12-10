<title>Vai pra lá</title>
<?php
include 'banco/conexao.php';
include 'css/header.php';
?>

<?php
	//AQUI É O NÃO LOGADO
	if (!isset($_SESSION['usuario'])){
		header('login.php');
	}
?>

<?php
    //AQUI TA LOGADO
if (isset($_SESSION['usuario'])){
	$usuario = $_SESSION['usuario'];
	$user = $_SESSION['user'];
    $email = $_SESSION['email'];
	$nome = $_SESSION['nome'];
    $senha = $_SESSION['senha'];
}
?>


<!DOCTYPE html>
<html lang="en">
    <meta charset="utf-8">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <style>
        *{
			font-family: 'DM Serif Display', serif;
		}
        body{
    		background-image: url(img/perfil.jpg); 
    		background-size: cover;
    		background-repeat: no-repeat;  
    	}
        a{
			color:#f95426;	
		}
        #foto{
        width:150px;
        height:150px;
        border-radius:50%;
        background-color:#f95426;
        display: flex;
        align-items: center;
        }
        .card{ 
            display:flex;
            border-radius: 15px;
        }
        .scrollspysite{
            position:relative;
            overflow: auto;
            height: 340px;
        }
        .scrollspysite2{
            position:relative;
            overflow: auto;
            height: 300px;
        }
        #coisas{
			border-bottom: 2px solid #f95426;
			margin-bottom: 40px;
		}
        #text-favorito{
            font-size:20px;
        }
    </style>

    </head>
<body>
    <nav class="navbar nav-expand-lg bg-light">
       <a class="navbar-brand nav-link justify-content-center" href="index.php">
        <img src="img/cristo.png" width="100" class="d-inline-block align-center justify-content-center">
        Vai Pra lá.com
      </a>
      <ul class="nav justify-content-end">
          <li class="nav-item"><a href="sobre.php" class="nav-link">Sobre</a></li>
        </ul>

        <ul class='nav justify-content-end'>
		    <form method='post' action='pesquisa.php' class='form-inline my-2 my-lg-0'>
		    	<input class='form-control mr-sm-2' type='search' id='pesquisa' name='pesquisa' placeholder='Procure aqui'>
		    	<button class='btn btn-outline-warning' type='submit'>Procurar</button>
  		    </form>
        </ul>
    </nav>
    <br>
    <div class='container'>
        <div class='row'>
            <div class='col-sm-6'>
                <div class='card'>
                    <?php
                        $show = "SELECT * FROM usuario WHERE usuario.cd_usuario=".$usuario;
                        if ($query = $mysqli->query($show)) {
                            while ($dados = $query->fetch_object()) {
                                $foto = $dados->cd_usuario;
                                echo "<img class='img-thumbnail img-responsive img-top mx-auto d-block my-4' src='img/usuario/".$foto.".jpg' alt='' width='50' id='foto'>";
                                
                                if (!$foto=$dados->cd_usuario) {
                                    echo "<img class='img-thumbnail img-responsive img-top mx-auto d-block my-4' src='img/usuario/louro.jpg' alt='' width='50' id='foto'>";
                                }
                            }
                        }
                    ?>
                    <h4 class='text-center'>Bem-vindo, <?php echo $_SESSION['nome'];?></h4>
                    <hr>
                    <div class='card-body scrollspysite2 float-left' data-spy="scroll" data-target="#navbar-vertical" data-offset="0">
                        <h5>Nome de Usuário:</h5>
                        <p id='coisas'> 
                            <?php echo "
                                ".$user;
                            ?>
                        </p>
                        <h5>Email:</h5>
                        <p id='coisas'> 
                            <?php echo "
                                ".$email;
                            ?>
                        </p>
                        <h5>Senha:</h5>
                        <p id='coisas'> 
                            <?php echo "
                                ".$senha;
                            ?>
                        </p>
                        <br>
                        <a href='logout.php' class='btn btn-md btn-danger float-right'><i class="fas fa-sign-out-alt"></i>Sair</a>
                        <a href='alterar.php' class='btn btn-md btn-info float-left'>Modificar seus dados</a>
                            <?php
                                $nivel_necessario = 1;
                                if (!isset($_SESSION['usuario']) OR ($_SESSION['nivel'] > $nivel_necessario)) {
                                    echo "<a class='btn btn-success float-left' href='restrito.php'><i class='fas fa-users-cog'></i>Administrar</a>";
                                }
                            ?>
                        <br>    
                    </div>   
                </div>
            </div>
            <br>
            <div class='col-sm-6'>
                <div class='card'>
                    <div class='card-body'>
                        <h5 class='card-title list-group-item my-2 text-center'>Lista de favoritos</h5>
                        <br>
                        <div data-spy="scroll" data-target="#navbar-vertical" data-offset="0" class='scrollspysite'>    
                                <?php
                                    $show = "SELECT * FROM favorito, cidade WHERE favorito.id_usuario=".$usuario." AND cidade.cd_cidade=favorito.id_cidade";
                                            if ($query = $mysqli->query($show)) {
                                                while ($dados = $query->fetch_object()) {
                                                    $_SESSION['cd_cidade'] = $dados->cd_cidade;
                                                    echo "
                                                        <div class='table'>
                                                            <td ><a id='text-favorito' href=cidades.php?codigo_filtro=".$_SESSION['cd_cidade'].">".$dados->nm_cidade."</a></td>
                                                            <td><a id='text-favorito' href=excluir.php?codigo_favorito=$dados->cd_favorito>
                                                            <i class='fas fa-trash float-right'></i></td>
                                                            <hr>
                                                        </div>
                                                        <br>
                                                        ";
                                                }
                                            }
                                ?> 
                        </div>
                        <br>  
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>