<?php
//verificar se a variável $pagina não existe
if (!isset($pagina)) exit;

unset($_SESSION['carrinho']);

echo "<script>location.href='index.php?pagina=carrinho';</script>";
