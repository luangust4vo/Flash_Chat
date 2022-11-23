<?php
session_start();
include_once("conexao.php");

if(isset($_SESSION["unique_id"])){
    $user_id = mysqli_real_escape_string($con, $_GET["user_id"]);
    if(isset($user_id)){
        $status = "Offline";
        $sql = mysqli_query($con, "UPDATE users SET status = '{$status}' WHERE unique_id = '{$user_id}'");

        if($sql){
            session_unset();
            session_destroy();
            header("Location: ../pages/login.php");
        }
    } else {
        header("Location: ../pages/users.php");
    }
} else {
    header("Location: ../pages/login.php");
}