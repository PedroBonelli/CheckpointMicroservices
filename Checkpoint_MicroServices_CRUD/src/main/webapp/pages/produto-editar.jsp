<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alteração de produto</title>

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

	<div
		class="container-fluid mt-5 d-flex flex-column justify-content-center align-items-center">

		<h1>Editar produto</h1>
		
		<form action="../update" method="post">
					
						<div class="form-group">
							<input type="hidden" name="id" id="id" value="${produto.id}" />
                       
                        </div>
						
						<div class="form-group">
							<label class="control-label" for="nome">Nome</label>
							<input type="text" name="nome" id="nome" value="${produto.nome}" class="form-control" maxlength="50" size="50" />
                        </div>
                        
                        <div class="form-group">
							<label class="control-label" for="nome">SKU</label>
							<input type="text" name="sku" id="sku" value="${produto.sku}" class="form-control" maxlength="50" size="50" />
						</div>
						
						<div class="form-group">
							<label class="control-label" for="desc">Descrição</label>
							<textarea id="desc" class="form-control" name="desc" rows="4" cols="100">${produto.desc}</textarea>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="preco">Preço</label>
							<input type="text" name="preco" id="preco" value="${produto.preco}" class="form-control" maxlength="14" size="15" />
						</div>
						
						<div class="form-group">
							<label class="control-label" for="mesnagem">Quantidade em estoque</label>
							<input type="number" id="quantidadeEstoque" class="form-control" name="quantidadeEstoque" value="${produto.quantidadeEstoque}">
						</div>
						
						<div class="form-group">
							<label class="control-label" for="paisOrigem">País de origem</label>
							<input type="text" id="paisOrigem" class="form-control" name="paisOrigem" value="${produto.paisOrigem}">
						</div>
						
						<hr>
						
						
						<button type="submit" class="btn btn-primary">Gravar</button>
                            
                        <br>
                        <br>
					</form>

		<a href="../" class="btn btn-outline-dark mt-3">Cancelar</a>
	</div>
	
</body>
</html>