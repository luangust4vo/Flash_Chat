<?php
include("header.php");
?>
<body>
  <div class="container">
    <section class="form change">
      <header>Flash Chat</header>
      <form action="../back/change_pass.php" method="post">
        <div class="text-error"></div>
        <div class="form-field input">
          <label for="email">Email</label>
          <input type="email" name="email" id="email" placeholder="Informe o email cadastrado" />
        </div>
        <div class="form-field input">
          <label for="pass">Senha</label>
          <input type="password" name="pass" id="pass" placeholder="Digite a nova senha" />
          <i class="fa-solid fa-eye"></i>
        </div>
        <div class="form-field button">
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <button type="submit">Enviar</button>
        </div>
      </form>
    </section>
  </div>

  <script src="https://kit.fontawesome.com/9e0806c8d8.js" crossorigin="anonymous"></script>
  <script src="../js/show_pass.js"></script>
  <script src="../js/change_pass.js"></script>
</body>

</html>