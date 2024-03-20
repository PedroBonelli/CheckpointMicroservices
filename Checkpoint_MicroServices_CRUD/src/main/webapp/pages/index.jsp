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
	
	
	 <spring:url value="/resources/css" var="css"/>
	 <spring:url value="/resources/images" var="imgs"/>

	 
	<link href="${css}/style.css" rel="stylesheet">

</head>

<body>

	<div class="container-fluid px-0 mx-0">
		<div class="header-dark py-4 ps-4 shadow bg-body">
			<h1 class="lexend-deca-textos-principais">Nossa Empresa Projeto
			</h1>
		</div>
	</div>

	<div class="container-fluid">

		<div
			class="row my-5 p-3 d-flex justify-content-between align-items-center">
			
			<a href="./new" class="btn btn-outline-dark mt-3">Cadastrar novo produto</a>

			<c:forEach items="${produtos}" var="produto">
				<div class="col-12 col-sm-12 col-md-4 col-lg-4 my-5">
				<div class="card shadow bg-body">
					<img src="${imgs}/${produto.pathImagem}" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">${produto.nome}</h5>
						<p class="card-text">${produto.desc}</p>
						<a href="./${produto.id}" class="btn btn-outline-dark">Mais detalhes</a> 
						<a href="./update/${produto.id}" class="btn btn-outline-info">Editar</a> 
						<a href="#" class="btn btn-outline-danger">Excluir</a>
						
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