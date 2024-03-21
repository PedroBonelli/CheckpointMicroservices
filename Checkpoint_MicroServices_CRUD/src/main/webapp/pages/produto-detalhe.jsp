<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${produto.nome} - Mais detalhes</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
	
</head>


<body>
   <div class="container-fluid px-0 mx-0">
		<div class="header-dark py-4 ps-4 shadow bg-body">
			<h1 class="display-5">Miliuma Bebidas
			</h1>
		</div>
	</div>
	
	<div class="container-fluid mt-5 d-flex flex-column justify-content-center align-items-center">
        <div class="card shadow-lg bg-body p-3" style="width: 40rem;">
          
            <div class="card-body">
                <h5 class="card-title">${produto.nome}</h5>
                <p class="card-text lead py-2">${produto.desc}</p>
            </div>
            
            <ul class="list-group list-group-flush">
                <li class="list-group-item">SKU: ${produto.sku}</li>
                <li class="list-group-item">Preço: R$ ${produto.preco}</li>
                <li class="list-group-item">País de Origem: ${produto.paisOrigem}</li>
                <li class="list-group-item">Estoque: ${produto.quantidadeEstoque} unidades</li>
                
                
            </ul>

        </div>
        <a href="./" class="btn btn-outline-dark mt-5">Voltar à pagina de produtos</a>
    </div>


</body>
</html>