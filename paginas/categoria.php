<?php

/**
 * @author Bruno Guimarães da Silva
 * @version 0.1 
 * @copyright MIT © 2020, burnes ltda. 
 * @access public  
 */

/**
 * Verificar se a variável $pagina não existe
 */
if (!isset($pagina)) exit;
?>
<div class="row">
	<?php

	$idd = trim($_GET["id"] ?? NULL);

	if (empty($idd)) {
		echo "<script>alert('Categoria Inválida');history.back();</script>";
		exit;
	} else {
		$sql  = "select * from produto where categoria_id = {$idd} limit 6";
	}


	$result = mysqli_query($con, $sql);



	while ($dados = mysqli_fetch_array($result)) {

		$id = $dados["id"];
		$produto = $dados["produto"];
		$imagem = $dados["imagem"];
		$valor = $dados["valor"];
		$promo = $dados["promo"];


		if (empty($promo)) {
			$valor = "R$ " . number_format($valor, 2, ",", ".");
			$de = "";
		} else {
			$de = "DE: R$ " . number_format($valor, 2, ",", ".");
			$valor = "POR: R$ " . number_format($promo, 2, ",", ".");
		}

		echo "<div class='col-12 col-md-4 text-center'>
				<img src='produtos/{$imagem}' alt='{$produto}' class='w-100'>
				<h2>{$produto}</h2>
				<p class='de'>{$de}</p>
				<p class='valor'>{$valor}</p>
				<p>
					<a href='index.php?pagina=produto&id={$id}' class='btn btn-success btn-lg w-100'>
					Detalhes
					</a>
				</p>
			</div>";
	}
	?>
</div>