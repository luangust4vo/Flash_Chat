<?php
include("header.php");
?>
<body>
  <div class="container">
    <section class="form signup">
      <header>Flash Chat</header>
      <form action="#" method="post" enctype="multipart/form-data">
        <div class="text-error"></div>
        <div class="name-details">
          <div class="form-field input">
            <label for="name">Nome</label>
            <input type="text" name="name" id="name" placeholder="Seu nome aqui" required />
          </div>
          <div class="form-field input">
            <label for="lastname">Sobrenome</label>
            <input type="text" name="lastname" id="lastname" placeholder="Seu sobrenome aqui" required />
          </div>
        </div>
        <div class="form-field input">
          <label for="email">Email</label>
          <input type="email" name="email" id="email" placeholder="Seu melhor email" required />
        </div>
        <div class="form-field input">
          <label for="pass">Senha</label>
          <input type="password" name="pass" id="pass" placeholder="Crie uma senha" required />
          <i class="fa-solid fa-eye"></i>
        </div>
        <div class="form-field file">
          <input type="file" name="image" required />
        </div>
        <div class="form-field button">
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <button type="submit">Cadastrar</button>
        </div>
      </form>
      <div class="link-sigin">
        Já está cadastrado? Então <a href="./login.php">faça login aqui!</a>
      </div>
    </section>
  </div>

  <script src="https://kit.fontawesome.com/9e0806c8d8.js" crossorigin="anonymous"></script>
  <script src="../js/show_pass.js"></script>
  <script src="../js/cadastrar.js"></script>
</body>

</html>