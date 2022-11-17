<?php
include_once("conexao.php");

@$user = trim($_POST["email"]);
@$pass = trim($_POST["pass"]);

$sql = "SELECT * FROM dados WHERE email ='$user' AND password ='$pass'";
$result = $con->query($sql);

if ($result->num_rows == 1) {
    setcookie("user", "$user");
    setcookie("password", "$pass");
    header("Location: ../pages/chat.php");
    exit(0);
} else {
    header("Location: error.php");
    exit(0);
}