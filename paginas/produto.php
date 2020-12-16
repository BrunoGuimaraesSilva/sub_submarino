<?php
//verificar se a variável $pagina não existe
if (!isset($pagina)) exit;

//recuperacao do id
//trim retira espaços em branco
$id = trim($_GET["id"] ?? "");

$id = (int)$id;

//recuperar o produto com o id
$sql    = "SELECT * FROM produto WHERE id = {$id} LIMIT 1";
$result = mysqli_query($con, $sql);
$dados  = mysqli_fetch_array($result);

//recuperar os dados do banco
$id 	   = $dados["id"];
$produto   = $dados["produto"];
$valor     = $dados["valor"];
$promo     = $dados["promo"];
$descricao = $dados["descricao"];
$imagem    = $dados["imagem"];
?>
<h1><?= $produto ?></h1>
<div class="row">
	<div class="col-12 col-md-4">
		<a href="produtos/<?= $imagem ?>" data-lightbox="produto" title="<?= $produto ?>">
			<img src="produtos/<?= $imagem ?>" alt="<?= $produto ?>" class="w-100">
		</a>
	</div>
	<div class="col-12 col-md-8">
		<?php
		if (empty($promo)) {
			//1499.99 -> 1.499,99
			$valor = "R$ " . number_format($valor, 2, ",", ".");
			$de = "";
		} else {
			//valor normal
			$de = "DE: R$ " . number_format($valor, 2, ",", ".");
			//valor promocional
			$valor = "POR: R$ " . number_format($promo, 2, ",", ".");
		}


		echo "<div class='container, mt-3'>
					<p class='de'>{$de}</p>
					<p class='valor'>{$valor}</p>
				  </div>";
		?>

		<form class="mt-5" name="formProduto" method="post" action="index.php?pagina=adicionar">
			<input type="hidden" name="id" value="<?= $id ?>">
			<div class="input-group">
				<input type="number" name="quantidade" value="1" class="form-control form-control-lg" placeholder="Quantidade" required inputmode="numeric">
				<div class="input-group-append">
					<button type="submit" class="btn btn-success btn-lg">
						<i class="fas fa-check"></i> Adicionar ao Carrinho
					</button>
				</div>
			</div>
		</form>

		<h2 class="text-center mt-5">Descrição do Produto:</h2>

		<?= nl2br($descricao); ?>
	</div>
</div>