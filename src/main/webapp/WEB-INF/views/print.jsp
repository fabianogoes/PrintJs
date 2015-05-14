<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PrintJs</title>
</head>
<body>

	<table border="1">
		<thead>
			<tr>
				<th>ID</th><th>Nome</th><th>CPF</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="cliente" items="${ lista }">
				<tr>
					<td>${ cliente.id }</td>
					<td>${ cliente.nome }</td>
					<td>${ cliente.cpf }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>