# PrintJs
Exemplo de uma aplicação que envia um conteúdo para a impressora por Javascript

***Controller que direciona para uma pagina JSP com um lista no contexto***
```java
	@RequestMapping(value = "/imprimir", method = RequestMethod.GET)
	public String imprimir(Model model) {
		System.out.println( "print()..." );
		
		List<Cliente> lista = Arrays.asList( new Cliente(1, "AAAAAAA", "123456789"),
											 new Cliente(2, "BBBBBBBBBBBB", "987654321"),
											 new Cliente(3, "CCCCCCCCCCCCCC", "147258369"));
		
		model.addAttribute("lista", lista);
		System.out.println( lista );
		
		return "print";
	}
```   

***Pagina JSP com o conteudo que deve ser Impresso***   
```html
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
```   

***Pagina JSP onde farÃ¡ a chamada para a impressÃ£o***   
> Perceba que tem uma funÃ§Ã£o Javascript   

```html
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Print JS</title>
	<script type="text/javascript">
    	var width = screen.width;
        var height = screen.height;
        function printIframe(elementId) {
            var getMyFrame = document.getElementById(elementId);
            getMyFrame.focus();
            getMyFrame.contentWindow.print();
        }
	
	</script>
</head>
<body>
	<h1>Print JS</h1>

	<input type="button" value="Print Frame" onclick="printIframe('id_frame_print');" />
	
	<div style="display:none;">
		<iframe id="id_frame_print" src="${ pageContext.request.contextPath }/imprimir" 
	 		style="dispaly:none; visibility:hidden;"></iframe>
	</div>

</body>
</html>
```   

> O Controller de impreesÃ£o Ã© chamado atravÃ©s do atributo "src" do iFrame quando a pagina for carregada
