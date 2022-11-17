<?php
include_once("conexao.php");

$name = $_POST["name"];
$lastName = $_POST["lastname"];
$email= $_POST["email"];
$pass = $_POST["pass"];
$confirmPass = $_POST["c-pass"];

$sql = "INSERT INTO dados VALUES (null, '$name', '$lastName', '$email', '$pass')";

$result = $con->query($sql);

if($result){
    header("Location: ../pages/chat.php");
}