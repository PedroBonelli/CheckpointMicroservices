<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Produtos</title>


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">


<c:set value="${pageContext.request.contextPath}" var="contextPath" />




</head>

<body>

	<div class="container-fluid px-0 mx-0">
		<div class="py-4 ps-4 bg-primary text-light">
			<h1 class="display-5">Miliuma Bebidas
			</h1>
		</div>
	</div>


	<div class="ms-4 mt-5">
		<h2>Cadastrar novo produto</h2>

		<a href="${contextPath}/produtos/new" class="btn btn-outline-dark my-3">Cadastrar
			novo produto</a>
	</div>


	<div class="container-fluid">



		<div
			class="row mt-5 mb-3 p-3 d-flex justify-content-between align-items-center">

			<h2>Produtos</h2>

			<c:forEach items="${produtos}" var="produto">
				<div class="col-12 col-sm-12 col-md-4 col-lg-4 my-3">
					<div class="card shadow bg-body">
						<div class="card-body">
							<h5 class="card-title">${produto.nome}</h5>
							<p class="card-text py-1 lead">R$ ${produto.preco}</p>
							<p class="card-text">${produto.desc}</p>

							<form:form action="${contextPath}/produtos/delete/${produto.id}"
								method="delete">

								<a href="${contextPath}/produtos/${produto.id}"
									class="btn btn-outline-dark">Mais detalhes</a>
								<a href="${contextPath}/produtos/update/${produto.id}"
									class="btn btn-outline-primary">Editar</a>
								<input type="submit" class="btn btn-outline-danger"
									value="Excluir">

							</form:form>
						</div>
					</div>
				</div>
			</c:forEach>








		</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
</body>

</html>