<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login Condominio</title>
    <script src="index.js"></script>
    <link rel="stylesheet" href="login.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
          integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="content first-content">
        <div class="first-column">
            <h2 class="title title-primary">bem vindo de volta!</h2>
            <p class="description description-primary">Para se manter conectado conosco</p>
            <p class="description description-primary">por favor faça login com suas informações pessoais</p>
            <button id="signin" class="btn btn-primary">entrar</button>
        </div>
        <div class="second-column">
            <h2 class="title title-second">criar uma conta</h2>
            <div class="social-media">
                <ul class="list-social-media">
                    <a class="link-social-media" href="https://www.facebook.com">
                        <li class="item-social-media">
                            <i class="fab fa-facebook-f"></i>
                        </li>
                    </a>
                    <a class="link-social-media" href="https://www.google.com/intl/pt-BR/gmail/about/">
                        <li class="item-social-media">
                            <i class="fab fa-google-plus-g"></i>
                        </li>
                    </a>
                    <a class="link-social-media" href="https://www.linkedin.com/home">
                        <li class="item-social-media">
                            <i class="fab fa-linkedin-in"></i>
                        </li>
                    </a>
                </ul>
            </div><!-- social media -->
            <p class="description description-second">ou use seu e-mail para inscrição:</p>
            <form class="form" action="Primeiro/" method="POST">
                <label class="label-input" for="nome">
                    <i class="far fa-user icon-modify"></i>
                    <input type="text" id="nome" name="nome" placeholder="Nome">
                </label>

                <label class="label-input" for="email">
                    <i class="far fa-envelope icon-modify"></i>
                    <input type="email" id="email" name="email" placeholder="Email">
                </label>

                <label class="label-input" for="cpf">
                    <i class="fas fa-address-card icon-modify"></i>
                    <input type="text" id="cpf" name="cpf" placeholder="CPF">
                </label>

                <label class="label-input" for="telefone">
                    <i class="fas fa-phone icon-modify"></i>
                    <input type="text" id="telefone" name="telefone" placeholder="Telefone">
                </label>

                <label class="label-input" for="senha">
                    <i class="fas fa-lock icon-modify"></i>
                    <input type="password" id="senha" name="senha" placeholder="Senha">
                </label>

                <button  class="btn btn-second">registrar</button>
            </form>
        </div><!-- second column -->
    </div><!-- first content -->
    <div class="content second-content">
        <div class="first-column">
            <h2 class="title title-primary">olá amigo!</h2>
            <p class="description description-primary">Insira seus dados pessoais</p>
            <p class="description description-primary">e comece a jornada conosco</p>
            <button id="signup" class="btn btn-primary">inscrever-se</button>
        </div>
        <div class="second-column">
            <h2 class="title title-second">faça login no desenvolvedor</h2>
            <div class="social-media">
                <ul class="list-social-media">
                    <a class="link-social-media" href="https://www.facebook.com">
                        <li class="item-social-media">
                            <i class="fab fa-facebook-f"></i>
                        </li>
                    </a>
                    <a class="link-social-media" href="https://www.google.com/intl/pt-BR/gmail/about/">
                        <li class="item-social-media">
                            <i class="fab fa-google-plus-g"></i>
                        </li>
                    </a>
                    <a class="link-social-media" href="https://www.linkedin.com/home">
                        <li class="item-social-media">
                            <i class="fab fa-linkedin-in"></i>
                        </li>
                    </a>
                </ul>
            </div><!-- social media -->
            <p class="description description-second">ou use sua conta de e-mail:</p>
            <form class="form" action="Primeiro/login" method="POST">

                <label class="label-input" for="email-login">
                    <i class="far fa-envelope icon-modify"></i>
                    <input type="email" id="email-login" name="email-login" placeholder="Email">
                </label>

                <label class="label-input" for="senha-login">
                    <i class="fas fa-lock icon-modify"></i>
                    <input type="password" id="senha-login" name="senha-login" placeholder="Password">
                </label>

                <a class="password" href="#">Esqueceu sua senha?</a>
                <button class="btn btn-second">entrar</button>
            </form>
        </div><!-- second column -->
    </div><!-- second-content -->
</div>
</body>
</html>
