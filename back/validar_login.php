<?php
include_once("conexao.php");

$user = $_COOKIE["user"];
$pass = $_COOKIE["password"];

$sql = mysqli_query($con, "SELECT * FROM dados WHERE email = '$user'  AND  password = '$pass'");

if ($sql -> num_rows != 1) {
    header("Location: error.php");
    exit(0);
}else if($usuario == "" || $senha == ""){
    header("Location: error.php");
    exit(0);
}