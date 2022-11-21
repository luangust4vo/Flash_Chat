<?php
session_start();
include_once("conexao.php");

@$firstname = trim($_POST['name']);
@$lastname = trim($_POST['lastname']);
@$email = trim($_POST['email']);
@$pass = trim($_POST['pass']);


if(!empty($firstname) && !empty($lastname) && !empty($email) && !empty($pass)){
    if(filter_var($email, FILTER_VALIDATE_EMAIL)){
        $sql = mysqli_query($con, "SELECT email FROM users WHERE email = '{$email}'");

        if($sql -> num_rows > 0){
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

                        $sql = mysqli_query($con, "INSERT INTO users VALUES 
                                    (null, $random_id, '$firstname', '$lastname', '$email', '$pass', '$new_image_name', '$status')");

                        if($sql){
                            $sql = mysqli_query($con, "SELECT * FROM users WHERE email = '$email'");
                            
                            if($sql -> num_rows > 0){
                                $row = mysqli_fetch_assoc($sql);
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