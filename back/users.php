<?php
session_start();
include_once("conexao.php");

$sql = mysqli_query($con, "SELECT * FROM users");
$output = "";

if($sql -> num_rows == 1){
    $output .= "Nenhum usuário disponível para conversar";
} elseif($sql -> num_rows > 0) {
    include("dados.php");
}

echo $output;