<?php
session_start();
include_once("conexao.php");

$sender_id = $_SESSION["unique_id"];
$searchUser = mysqli_real_escape_string($con, $_POST["searchUser"]);

$sql = mysqli_query($con, "SELECT * FROM users WHERE NOT unique_id = {$sender_id} 
                            AND (name LIKE '%{$searchUser}%' OR lastname LIKE '%{$searchUser}%')");
$output = "";

if($sql -> num_rows > 0){
    include("dados.php");
} else {
    $output .= "Nenhum usuário encontrado relacionado a sua pesquisa";
}

echo $output;