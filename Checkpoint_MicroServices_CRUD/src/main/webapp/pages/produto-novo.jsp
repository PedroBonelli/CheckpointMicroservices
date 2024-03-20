<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">

<title>Inserindo Novo Produto</title>
</head>
<body>

	<div class="container-fluid px-0 mx-0">
		<div class="header-dark py-4 ps-4 shadow bg-body">
			<h1 class="lexend-deca-textos-principais">Nossa Empresa Projeto
			</h1>
		</div>
	</div>

	<div
		class="container-fluid mt-5 d-flex flex-column justify-content-center align-items-center">

		<h1>Novo Produto</h1>

		<form action="./new" method="post">

			<div class="form-group">
				<label class="control-label" for="nome">Nome</label> <input
					type="text" name="nome" id="nome" class="form-control"
					maxlength="50" size="50" /> <font color="red"></font><br />
			</div>

			<div class="form-group">
				<label class="control-label" for="desc">Descrição</label> <input
					type="text" id="desc" name="desc" class="form-control" /> <font
					color="red"></font><br />
			</div>

			<div class="form-group">
				<label class="control-label" for="preco">Preço</label> <input
					type="text" id="preco" name="preco" class="form-control" /> <font
					color="red"></font><br />
			</div>

			<div class="form-group">
				<label class="control-label" for="sku">SKU</label> <input
					type="text" name="sku" id="sku" class="form-control" maxlength="50"
					size="50" /> <font color="red"></font><br />
			</div>

			<div class="form-group">
				<label class="control-label" for="quantidadeEstoque">Quantidade
					no Estoque</label> <input type="text" id="quantidadeEstoque"
					name="quantidadeEstoque" class="form-control" /> <font color="red"></font><br />
			</div>

			<div class="form-group">
				<label class="control-label" for="volumeML">Volume em ml</label>
				 <input type="number" id="volumeML" name="volumeML" class="form-control" />
				<font color="red"></font><br />
			</div>

			<div class="form-group">
				<label class="control-label" for="paisOrigem">País de Origem</label>
				<input type="text" id="paisOrigem" name="paisOrigem"
					class="form-control" /> <font color="red"></font><br />
			</div>
			<hr>

			<a class="btn btn-default" href="./">Cancelar</a>
			<button type="submit" class="btn btn-primary">Gravar</button>

			<br> <br>
		</form>

		<a href="./" class="btn btn-outline-dark mt-3">Voltar à pagina de
			produtos</a>
	</div>



</body>
</html>