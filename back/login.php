<?php
session_start();
include_once("conexao.php");

$email = mysqli_real_escape_string($con, $_POST['email']);
$pass = mysqli_real_escape_string($con, $_POST['pass']);

if(!empty($email) && !empty($pass)){
    $sql = "SELECT * FROM users WHERE email = '$email' AND password = '$pass'";

    $result = $con -> query($sql);

    if($result -> num_rows > 0){
        $row = mysqli_fetch_assoc($result);
        $_SESSION['unique_id'] = $row['unique_id'];
        echo "success";
    } else {
        echo "Email ou senha incorretos";
    }
} else {
    echo "Por favor, preencha todos os campos";
}