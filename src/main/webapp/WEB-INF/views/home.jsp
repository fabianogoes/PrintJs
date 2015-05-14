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
	 	<iframe id="id_frame_print" src="${ pageContext.request.contextPath }/imprimir" style="dispaly:none; visibility:hidden;"></iframe>
	</div>

</body>
</html>
