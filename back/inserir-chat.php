<?php
session_start();
include_once("conexao.php");

if(isset($_SESSION["unique_id"])){
    $sender_id = trim($_POST["sender_id"]);
    $receiver_id = trim($_POST["receiver_id"]);
    $message = trim($_POST["message"]);

    if(!empty($message)){
        $sql = mysqli_query($con, "INSERT INTO messages VALUES (null, {$sender_id}, {$receiver_id}, '{$message}')") or die();
    }
} else {
    header("Location: ../pages/login.php");
}