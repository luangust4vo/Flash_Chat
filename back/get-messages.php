<?php
session_start();
include_once("conexao.php");

if(isset($_SESSION["unique_id"])){
    $sender_id = trim($_POST["sender_id"]);
    $receiver_id = trim($_POST["receiver_id"]);

    $output = "";

    $sql = "SELECT * FROM messages WHERE (sender_id = {$sender_id} AND receiver_id = {$receiver_id}) 
            OR (sender_id = {$receiver_id} AND receiver_id = {$sender_id}) ORDER BY message DESC";

    $result = $con->query($sql);
    if($result -> num_rows > 0){
        while($row = mysqli_fetch_assoc($result)){
        }
    }
} else {
    header("Location: ../pages/login.php");
}