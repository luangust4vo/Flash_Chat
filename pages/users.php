<?php 
session_start();
include_once("../back/conexao.php");
if(!isset($_SESSION['unique_id'])){
  header("Location: login.html");
  exit(0);
}
?>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Flash Chat</title>
    <link rel="stylesheet" href="../css/styles.css" />
  </head>
  <body>
    <div class="container">
      <section class="user">
        <header>
          <?php
            $sql = "SELECT * FROM users WHERE unique_id = {$_SESSION['unique_id']}";

            $result = $con -> query($sql);
            if($result -> num_rows > 0){
              $row = mysqli_fetch_assoc($result);
            }
          ?>
          <div class="info">
            <img src="../assets/<?php echo $row['image']; ?>" alt="" />
            <div class="details">
              <span><?php echo $row['name'] . " " . $row['lastname']; ?></span>
              <p><?php echo $row['status']; ?></p>
            </div>
          </div>
          <a href="#" class="logout">Sair</a>
        </header>
        <div class="search">
          <span class="text"> Escolha alguém para conversar </span>
          <input type="text" placeholder="Insira o nome para procurar..." />
          <button><i class="fa-solid fa-magnifying-glass"></i></button>
        </div>
        <div class="users-list">
        <a href="#">
          <div class="info">
            <img src="../assets/perfil.jpg" alt="" />
            <div class="details">
              <span>Teste</span>
              <p>Mensagem teste</p>
            </div>
          </div>
          <div class="status">
            <i class="fa-sharp fa-solid fa-circle"></i>
          </div>
        </a>
        </div>
      </section>
    </div>

    <script
      src="https://kit.fontawesome.com/9e0806c8d8.js"
      crossorigin="anonymous"
    ></script>
    <script src="../js/users.js"></script>
  </body>
</html>
