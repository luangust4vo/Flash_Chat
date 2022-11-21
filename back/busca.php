<?php
include_once("conexao.php");
$searchUser = trim($_POST["searchUser"]);

$sql = mysqli_query($con, "SELECT * FROM users WHERE name LIKE '%{$searchUser}%' OR lastname '%{$searchUser}%'");
$output = "";

if($sql -> num_rows > 0){
    include("dados.php");
} else {
    $output .= "Nenhum usuário encontrado relacionado a sua pesquisa";
}

echo $output;