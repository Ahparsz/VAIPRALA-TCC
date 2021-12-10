<?php
//FIM NÉ
include('banco/conexao.php');
session_destroy();
header("location: index.php");
?>