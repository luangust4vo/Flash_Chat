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
    <section class="chat">
      <header>
        <?php
        $user_id = mysqli_real_escape_string($con, $_GET["user_id"]);
        $sql = mysqli_query($con, "SELECT * FROM users WHERE unique_id = {$user_id}");

        if ($sql -> num_rows > 0) {
          $row = mysqli_fetch_assoc($sql);
        }
        ?>
        <a href="../pages/users.php" class="back-arrow"><i class="fa-solid fa-arrow-left-long"></i></a>
        <img src="../assets/<?php echo $row["image"]; ?>" alt="" />
        <div class="details">
          <span><?php echo $row["name"] . " " . $row["lastname"]; ?></span>
          <p><?php echo $row["status"]; ?></p>
        </div>
      </header>
      <div class="chat-field"></div>
      <form action="#" class="typing-area" autocomplete="off">
        <input type="hidden" name="sender_id" value="<?php echo $_SESSION['unique_id']; ?>">
        <input type="hidden" name="receiver_id" value="<?php echo $user_id; ?>">
        <input type="text" name="message" class="input-field" placeholder="Digite a mensagem..." />
        <button type="submit">
          <i class="fa-solid fa-paper-plane"></i>
        </button>
      </form>
    </section>
  </div>

  <script src="https://kit.fontawesome.com/9e0806c8d8.js" crossorigin="anonymous"></script>
  <script src="../js/chat.js"></script>
</body>

</html>