<?php
session_start();
include_once("conexao.php");

if(isset($_SESSION["unique_id"])){
    $logout_id = $_GET["logout_id"];
    if(isset($logout_id)){
        $status = "Offline";
        $sql = mysqli_query($con, "UPDATE users SET status = '{$status}' WHERE unique_id = {$logout_id}");

        if($sql){
            unset($_SESSION["unique_id"]);
            session_destroy();
            header("Location: ../pages/login.php");
        }
    } else {
        header("Location: ../pages/users.php");
    }
} else {
    header("Location: ../pages/login.php");
}