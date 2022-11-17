<?php
include_once("conexao.php");

$user = $_COOKIE["user"];
$pass = $_COOKIE["password"];

$sql = "SELECT * FROM dados WHERE email = '$user'  AND  password = '$pass'";
$result = $con->query($sql);

if ($result->num_rows != 1) {
    header("Location: error.php");
    exit(0);
}else if($usuario == "" || $senha == ""){
    header("Location: error.php");
    exit(0);
}