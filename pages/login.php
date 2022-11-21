<?php
include("header.php");
?>
<body>
  <div class="container">
    <section class="form signin">
      <header>Flash Chat</header>
      <form action="../back/login.php" method="post">
        <div class="text-error"></div>
        <div class="form-field input">
          <label for="email">Email</label>
          <input type="email" name="email" id="email" placeholder="Insira seu email" />
        </div>
        <div class="form-field input">
          <label for="pass">Senha</label>
          <input type="password" name="pass" id="pass" placeholder="Insira sua senha" />
          <i class="fa-solid fa-eye"></i>
        </div>
        <div class="form-field button">
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <button type="submit">Logar</button>
        </div>
      </form>
      <div class="link-sigin">
        Não possui cadastro? Então
        <a href="./cadastro.php">cadastre-se aqui!</a>
      </div>
    </section>
  </div>

  <script src="https://kit.fontawesome.com/9e0806c8d8.js" crossorigin="anonymous"></script>
  <script src="../js/show_pass.js"></script>
  <script src="../js/login.js"></script>
</body>

</html>