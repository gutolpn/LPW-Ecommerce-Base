<%-- 
    Document   : produto.jsp
    Created on : 30/10/2019, 17:30:56
    Author     : gutol
--%>

<%@page import="modelos.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalhes de Produto</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <jsp:include page="menu.jsp">
            <jsp:param name="item" value="produtos" />
        </jsp:include>
        
        <div class="container">
            <h1>Hello World!</h1>

            <h2>Produto:</h2>

            <%
                int id =  Integer.parseInt(request.getParameter("id"));

                Produto p = Produto.lista.get(id);

                out.println(p.getDescricao());
            %>
            
            
            <form action="AddCarrinho" method="post">
                <label>Quantidade</label><input name="quantidade" >
                <input name="id" value="<%=id%>" type="hidden">
                
                <button type="submit">OK</button>
            </form>
            
        </div>
        
    </body>
</html>
