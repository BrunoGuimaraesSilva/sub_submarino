<?php if(!isset($pagina)) exit; ?>

<h1 class="text-center">Carrinho de Compras</h1>

<script>
	function excluirProduto(id) {
		if (confirm("Deseja relamente excluir este item?")) {
			location.href = "index.php?pagina=excluir&id=" + id;
		}
	}
</script>

<?php

if (isset($_SESSION['cliente']['nome'])) {
	echo "<p><strong>Olá, " . $_SESSION['cliente']['nome'] . " - <a href='sair.php'>Efetuar Logout</strong></p>";
}
$produtos = 0;

if (isset($_SESSION['carrinho']))
	$produtos = count($_SESSION['carrinho']);

?>

<p class="alert alert-warning">Existem <?= $produtos ?> produto(s) no carrinho:</p>
<table class="table table-striped table-bordered table-hover">
	<thead>
		<tr>
			<td>Nome do Produto</td>
			<td>Quantidade</td>
			<td>Vlr Unit.</td>
			<td>Vlr Total</td>
			<td></td>
		</tr>
	</thead>
	<tbody>
		<?php

		$totalGeral = 0;
		
		if ($produtos > 0) {
			foreach ($_SESSION['carrinho'] as $dados) {
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
					<td>
						<button type='button' class='btn btn-danger btn-sm' onclick='excluirProduto({$id})'>
							<i class='fas fa-trash'></i>
						</button>
					</td>
				</tr>";
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
			<td></td>
		</tr>
	</tfoot>
</table>

<a href="index.php?pagina=limpar" class="btn btn-danger btn-lg float-left">Limpar Carrinho</a>
<a href="index.php?pagina=finalizar" class="btn btn-success btn-lg float-right">Finalizar Pedido</a>
<div class="clearfix"></div>
