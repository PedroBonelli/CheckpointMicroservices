<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>	

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Produto cadastrado com sucesso!</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">

<c:set value="${pageContext.request.contextPath}" var="contextPath"/>


</head>
<body>

	<div class="container-fluid px-0 mx-0">
		<div class="header-dark py-4 ps-4 shadow bg-body">
			<h1 class="display-5">Miliuma Bebidas
			</h1>
		</div>
	</div>


	<div class="container-fluid mt-5 d-flex flex-column justify-content-center align-items-center ">

		<div class="text-center">
			<h1 class="text-center">Produto cadastrado com sucesso :)</h1>
			<p class="lead py-2 text-center">
				O produto foi cadastrado com sucesso, você já pode voltar para a página de produtos
			</p>
			<a href="${contextPath}/produtos" class="btn btn-outline-dark mt-3 text-center">Voltar à página de produtos</a>
		</div>

	</div>


</body>
</html>