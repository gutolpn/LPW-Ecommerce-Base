<%-- 
    Document   : index
    Created on : 21/08/2019, 17:26:44
    Author     : gutol
--%>

<%@page import="modelos.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Minha Loja</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/ofertas.css">
    </head>
    <body>
        
        <jsp:include page="menu.jsp">
            <jsp:param name="item" value="ofertas" />
        </jsp:include>
        
        <div class="container">
            <h1>Ofertas da Loja!</h1>
            
            <div class="ofertas">
            <%
                for(int i=0; i<Produto.getLista().size(); i++){
                    Produto p = Produto.getLista().get(i);
                    
                    if(p.isOferta()){
                    %>    
                        <div>
                            <h5> <%= p.getDescricao()%> </h5>
                            <p>  <%= p.getPreco()%> </p>
                            <img src="<%=p.getImagem()%>"></img>
                        </div>
                    <%    
                    }                    
                }
            %>
            </div>
        
        </div>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
