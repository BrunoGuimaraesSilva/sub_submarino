<?php
//verificar se a variável $pagina não existe
if (!isset($pagina)) exit;

if ($_POST) {

    $email = trim($_POST["email"] ?? "");
    $senha = trim($_POST["senha"] ?? "");

    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo "<script>alert('Digite um e-mail válido');history.back();</script>";
        exit;
    } else if (strlen($senha) < 4) {
        echo "<script>alert('Digite uma senha válida');history.back();</script>";
        exit;
    }

    $sql = "SELECT id, nome, email, senha FROM cliente WHERE email = '{$email}' LIMIT 1";
    $resultado = mysqli_query($con, $sql);
    $dados = mysqli_fetch_array($resultado);

    if (empty($dados["id"])) {
        echo "<script>alert('E-mail ou Senha inválidos!');history.back();</script>";
        exit;
    } else if (!password_verify($senha, $dados["senha"])) {
        echo "<script>alert('E-mail ou Senha inválidos!');history.back();</script>";
        exit;
    }

    $_SESSION["cliente"] = array("id" => $dados["id"], "nome" => $dados["nome"], "email" => $dados["email"]);

    echo "<script>location.href='index.php?pagina=carrinho';</script>";
    exit;
}
