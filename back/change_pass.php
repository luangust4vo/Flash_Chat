<?php
include_once("conexao.php");

@$email = trim($_POST["email"]);
@$new_pass = trim($_POST["pass"]);

if(!empty($new_pass) && !empty($email)){
    $sql = mysqli_query($con, "SELECT * FROM users WHERE email = '{$email}'");
    
    if($sql -> num_rows > 0){
        $row = mysqli_fetch_assoc($sql);

        if($new_pass == $row["password"]){
            echo "A nova senha não pode ser igual a anterior";
        } else {
        $sql = mysqli_query($con, "UPDATE users SET password = '{$new_pass}' WHERE email = '{$email}'");
            echo "success";
        }
    } else {
        echo "$email - Nenhum usuário cadastrado com este email";
    }
} else {
    echo "Por favor, preencha todos os campos";
}