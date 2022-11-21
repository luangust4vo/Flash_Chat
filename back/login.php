<?php
session_start();
include_once("conexao.php");

@$email = trim($_POST['email']);
@$pass = trim($_POST['pass']);

if(!empty($email) && !empty($pass)){
    $sql = mysqli_query($con, "SELECT * FROM users WHERE email = '$email' AND password = '$pass'");

    if($sql -> num_rows > 0){
        $row = mysqli_fetch_assoc($sql);
        $_SESSION['unique_id'] = $row['unique_id'];
        echo "success";
    } else {
        echo "Email ou senha incorretos";
    }
} else {
    echo "Por favor, preencha todos os campos";
}