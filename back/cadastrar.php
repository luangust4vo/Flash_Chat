<?php
session_start();
include_once("conexao.php");

$firstname = mysqli_real_escape_string($con, $_POST['name']);
$lastname = mysqli_real_escape_string($con, $_POST['lastname']);
$email = mysqli_real_escape_string($con, $_POST['email']);
$pass = mysqli_real_escape_string($con, $_POST['pass']);


if(!empty($firstname) && !empty($lastname) && !empty($email) && !empty($pass)){
    if(filter_var($email, FILTER_VALIDATE_EMAIL)){
        $sql = "SELECT email FROM users WHERE email = '{$email}'";
        $result = $con->query($sql);

        if($result -> num_rows > 0){
            echo "$email - Esse email já está cadastrado";
        } else {
            if(isset($_FILES['image'])){
                $img_name = $_FILES['image']['name'];
                $img_type = $_FILES['image']['type'];
                $tmp_name = $_FILES['image']['tmp_name'];

                $img_explode = explode('.', $img_name);
                $img_ext = end($img_explode);

                $extensions = ['png', 'jpeg', 'jpg'];
                if(in_array($img_ext, $extensions) == true){
                    $time = time();

                    $new_image_name = $time.$img_name;
                    if(move_uploaded_file($tmp_name, "../assets/".$new_image_name)){
                        $status = "Online";

                        $random_id = rand(time(), 10000000);

                        $sql = "INSERT INTO users VALUES 
                                    (null, $random_id, '$firstname', '$lastname', '$email', '$pass', '$new_image_name', '$status')";

                        $result = $con -> query($sql);
                        if($result){
                            $sql = "SELECT * FROM users WHERE email = '$email'";
                            
                            $result = $con -> query($sql);
                            if($result -> num_rows > 0){
                                $row = mysqli_fetch_assoc($result);
                                $_SESSION['unique_id'] = $row['unique_id'];
                                echo "success";
                            }
                        } else {
                            echo "Algo deu errado";
                        }
                    }
                } else {
                    echo "Por favor, escolha uma imagem válida - jpg, jpeg, png";
                }
            } else {
                echo "Por favor, insira uma arquivo de imagem";
            }
        }
    } else {
        echo "$email - Esse email não é um endereço válido";
    }
} else {
    echo "Por favor, preencha todos os campos";
}