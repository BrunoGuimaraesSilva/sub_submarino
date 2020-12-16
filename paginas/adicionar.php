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

if ($_POST) {
	/** 
    * Recuperar as variáveis
    * @access public 
    * @param String $promo
    * @return Null
    */
	$id = trim($_POST['id'] ?? NULL);
	$quantidade = trim($_POST['quantidade'] ?? 1);

	/**
	 * Verificar se o id está vazio
	 * @param Float $id
	 * @return html
	 */
	if (empty($id)) { echo "<script>alert('Produto inválido');history.back();</script>"; exit; }

	/**
	 * Busca os dados do banco
	 * @var sql
	 * @var result
	 * @var dados
	 */
	 $sql = 
	 "SELECT id, produto, valor, promo 
			FROM produto 
			WHERE id = ".(int)$id." LIMIT 1";

	$result = mysqli_query($con, $sql);
	$dados = mysqli_fetch_array($result);

	$id = $dados["id"];
	$produto = $dados["produto"];
	$valor = $dados["valor"];
	$promo = $dados["promo"];

	//O $valorProduto sempre será o valor do produto
	$valorProduto = $valor;

	/** 
    * Verifica se existe $valorProduto caso sim sera igual a $promo
    * @access public 
    * @param String $promo
    * @return $valorProduto
    */
	if (!empty($promo)) {
		$valorProduto = $promo;
	}

	/** 
    * Faz a soma total dos itens pela quantidade
    * @access public 
    * @param String $valorProduto
    * @param String $quantidade
    * @return $total
	*/	
	$total = $valorProduto * $quantidade;

	/** 
    * Guardar os valores na sessão
    * @access public 
	*/	
	$_SESSION["carrinho"][$id] = array(
		"id" => $id,
		"produto" => $produto,
		"valor" => $valorProduto,
		"quantidade" => $quantidade,
		"total" => $total
	);

	/** 
    * Faz o redirecionamento para o carrinho
	* @access public 
	* @return html
	*/
	echo "<script>location.href='index.php?pagina=carrinho';</script>";
	exit;
}


	/** 
    * Mensagem de erro
	* @access public 
	* @return html
	*/
?>
<script type="text/javascript">
	alert('Requisição inválida, tente novamente');
	history.back();
</script>