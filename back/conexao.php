<?php
$con = new mysqli("localhost", "root", "", "flash_chat");

if(!$con) {
    echo "Can't connect to database" . mysqli_connect_error();
}