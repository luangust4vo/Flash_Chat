<?php
session_start();
include_once("../back/conexao.php");
if (!isset($_SESSION['unique_id'])) {
  header("Location: login.php");
  exit(0);
}
?>

<?php
include("header.php");
?>

<body>
  <div class="container">
    <section class="user">
      <header>
        <?php
        $sql = mysqli_query($con, "SELECT * FROM users WHERE unique_id = {$_SESSION['unique_id']}");

        if ($sql -> num_rows > 0) {
          $row = mysqli_fetch_assoc($sql);
        }
        ?>
        <div class="info">
          <img src="../assets/<?php echo $row['image']; ?>" alt="" />
          <div class="details">
            <span><?php echo $row['name'] . " " . $row['lastname']; ?></span>
            <p><?php echo $row['status']; ?></p>
          </div>
        </div>
        <a href="../back/logout.php?user_id=<?php $row["unique_id"] ?>" class="logout">Sair</a>
      </header>
      <div class="search">
        <span class="text"> Escolha alguém para conversar </span>
        <input type="text" placeholder="Insira o nome para procurar..." />
        <button><i class="fa-solid fa-magnifying-glass"></i></button>
      </div>
      <div class="users-list"></div>
    </section>
  </div>

  <script src="https://kit.fontawesome.com/9e0806c8d8.js" crossorigin="anonymous"></script>
  <script src="../js/users.js"></script>
</body>

</html>