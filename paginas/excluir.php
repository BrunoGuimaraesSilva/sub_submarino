<?php
//verificar se a variável $pagina não existe
if (!isset($pagina)) exit;

$id = trim($_GET['id'] ?? NULL);

if (empty($id)) {
    echo "<script>alert('Produto inválido');history.back();</script>";
    exit;
}

unset($_SESSION['carrinho'][$id]);

echo "<script>location.href='index.php?pagina=carrinho';</script>";
