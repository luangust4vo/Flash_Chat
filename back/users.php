<?php
session_start();
include_once("conexao.php");

$sender_id = $_SESSION["unique_id"];
$sql = mysqli_query($con, "SELECT * FROM users WHERE NOT unique_id = {$sender_id} LIMIT 10");
$output = "";

if($sql -> num_rows == 0){
    $output .= "Nenhum usuário disponível para conversar";
} elseif($sql -> num_rows > 0) {
    include("dados.php");
}

echo $output;