<?php
//AQUI É O ALTERAR DADOS

include 'banco/conexao.php';
include 'css/header.php';

if (isset($_SESSION['usuario'])){
    if (isset($_POST['nome']) && isset($_POST['user']) && isset($_POST['email']) && isset($_POST['senha'])) {
    		$nome = $_POST['nome'];
    		$user = $_POST ['user'];
            $email = $_POST['email'];
            $senha = $_POST['senha'];

    		$update = "UPDATE usuario SET nome = '".$nome."', user = '".$user."', email = '".$email."', senha = '".$senha."' WHERE usuario.cd_usuario = ".$_SESSION['usuario'];
    
    		if ($mysqli->query($update)===TRUE){
            if($query = $mysqli->query("select * from usuario where nome = '".$nome."'")){
                while($dados = $query->fetch_object()){
                    echo $dados->cd_usuario;

                    if(isset($_FILES['foto'])){
                        $errors= array();
                        $file_name = $_FILES['foto']['name'];
                        $file_size =$_FILES['foto']['size'];
                        $file_tmp =$_FILES['foto']['tmp_name'];
                        $file_type=$_FILES['foto']['type'];

                        $extensions= array("jpeg","jpg","png");

                        $extension = pathinfo($_FILES["foto"]["name"], PATHINFO_EXTENSION);

                        if($file_size > 2097152){
                           $errors[]='File size must be excately 2 MB';
                        }

                        if(empty($errors)==true){
                           move_uploaded_file($file_tmp,"img/usuario/".$dados->cd_usuario.".jpg");
                           echo 'Sucesso';
                        }else{
                           print_r($errors);
                        }
                    }
                }
                header('Location: perfil.php');
            }
        }			
    }
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
        #uau{
            filter: blur(5px);
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

    <form method="POST" action="alterar.php">
    <div class='container'>
        <div class='row'>
            <div class='col-sm-6'>
                <div class='card'>
                    <h4 class='text-center'>Bem-vindo, <?php echo $_SESSION['nome'];?></h4>
                    <hr>
                    <input type="file" class="btn btn-md" name="foto" id='foto' class='form-control' placeholder="Adicione uma foto">

                    <div class='card-body scrollspysite2 float-left' data-spy="scroll" data-target="#navbar-vertical" data-offset="0">
                        <h5>Nome:</h5>
                        <p id='coisas'><input type="name" name="nome" class='form-control' id="nome" placeholder="Digite seu nome"></p>
                    
                        <h5>Nome de Usuário:</h5>
                        <p id='coisas'><input type="username" name="user" class='form-control' id="user" placeholder="Digite seu nome de usuário"></p>

                        <h5>Email:</h5>
                        <p id='coisas'><input type="email" name="email" class='form-control' id="email" placeholder="Digite seu E-mail"></p>

                        <h5>Senha:</h5>
                        <p id='coisas'><input type="password" name="senha" class='form-control' id="senha" placeholder="Digite sua senha"></p>

                        <br>
                        <input type='submit' class='btn btn-md btn-info float-right' value='Salvar'>
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
            <div class='col-sm-6' id='uau'>
                <div class='card'>
                    <div class='card-body'>
                        <h5 class='card-title list-group-item my-2 text-center'>Lista de favoritos</h5>
                        <br>
                        <div data-spy="scroll" data-target="#navbar-vertical" data-offset="0" class='scrollspysite'>    
                            <<center><h5>Seus favoritos aqui<h5></center> 
                        </div>
                        <br>  
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>