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
    </head>
    <body>
        
        <nav class="navbar navbar-inverse">
          <div class="container-fluid">
            <div class="navbar-header">
              <a class="navbar-brand" href="index.jsp">Minha Loja</a>
            </div>
            <ul class="nav navbar-nav">
              <li class="active"><a href="index.jsp">Ofertas</a></li>
              <li><a href="produtos.jsp">Produtos</a></li>
              <li><a href="sobre.jsp">Sobre</a></li>            
            </ul>
 

            <ul class="nav navbar-nav navbar-right">
              <li><a href="login.jsp">Entrar</a></li>

            </ul>

          </div>
            
        </nav>
        
        <div class="container">
            <h1>Ofertas da Loja!</h1>
            
            <%
                for(int i=0; i<Produto.getLista().size(); i++){
                    Produto p = Produto.getLista().get(i);
                    
                    if(i%4==0){ %>
                        <div class="row">
                    <%}                                        

                    out.println("<pre> "+ p.getDescricao() +" </pre>");
                    
                    if(i%4==0){ %>
                        </div>
                    <%}
                }
            %>
        
        </div>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
