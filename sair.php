<?php
    session_start();

    unset($_SESSION['cliente']);

    echo "<script>location.href='index.php?pagina=carrinho'</script>";