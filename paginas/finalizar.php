<?php
//verificar se a variável $pagina não existe
if (!isset($pagina)) exit;

if (!isset($_SESSION['cliente']['id'])) {
    echo "<script>alert('Por favor, efetue o login');location.href='index.php?pagina=login';</script>";
    exit;
}
?>

<h1 class="text-center">Finalizar seu Pedido</h1>
<form method="post" target="pagseguro" action="https://pagseguro.uol.com.br/v2/checkout/payment.html">
    <div class="row">
        <div class="col-12 col-md-4 mt-5">
            <h3>Seus dados:</h3>

            <input type="hidden" name="encoding" value="UTF-8">
            <!-- Dados do comprador (opcionais) -->
            <input name="senderName" type="text" value="<?= $_SESSION['cliente']['nome']; ?>" class="form-control" required>
            <input name="senderEmail" type="text" value="<?= $_SESSION['cliente']['email']; ?>" class="form-control" required>

        </div>
        <div class="col-12 col-md-8 mt-5">
            <h3>Confira seu pedido:</h3>
            <?php
            if (isset($_SESSION['carrinho']))
                $produtos = count($_SESSION['carrinho']);
            ?>

            <!-- Campos obrigatórios -->
            <input name="receiverEmail" type="hidden" value="suporte@lojamodelo.com.br">
            <input name="currency" type="hidden" value="BRL">

            <table class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <td>Nome do Produto</td>
                        <td>Quantidade</td>
                        <td>Vlr Unit.</td>
                        <td>Vlr Total</td>
                    </tr>
                </thead>
                <tbody>
                    <?php

                    $i = $totalGeral = 0;

                    if ($produtos > 0) {

                        foreach ($_SESSION['carrinho'] as $dados) {
                            $i++;

                            $id = $dados["id"];
                            $produto = $dados["produto"];
                            $valor = $dados["valor"];
                            $quantidade = $dados["quantidade"];
                            $total = $dados["total"];

                            $totalGeral = $total + $totalGeral;

                            $valor = number_format($valor, 2, ",", ".");
                            $total = number_format($total, 2, ",", ".");

                            echo "<tr>
                                <td>{$produto}</td>
                                <td>{$quantidade}</td>
                                <td>R$ {$valor}</td>
                                <td>R$ {$total}</td>
                            </tr>";

                            $valorPagseguro = number_format($dados['valor'], 2, ".", "");

                            echo "<input name=\"itemId{$i}\" type=\"hidden\" value=\"000{$i}\">  
                            <input name=\"itemDescription{$i}\" type=\"hidden\" value=\"{$produto}\">  
                            <input name=\"itemAmount{$i}\" type=\"hidden\" value=\"{$valorPagseguro}\">  
                            <input name=\"itemQuantity{$i}\" type=\"hidden\" value=\"{$quantidade}\">  
                            <input name=\"itemWeight{$i}\" type=\"hidden\" value=\"1000\">";
                        }
                    }
                    ?>
                </tbody>
                <tfoot>
                    <tr>
                        <td>Valor Total:</td>
                        <td></td>
                        <td></td>
                        <td>R$ <?= number_format($totalGeral, 2, ",", "."); ?></td>
                    </tr>
                </tfoot>
            </table>

            <button type="submit" class="btn btn-success float-right">
                Efetuar Pagamento
            </button>
        </div>
    </div>
</form>