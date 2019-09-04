<%-- 
    Document   : produtos
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
              <li><a href="index.jsp">Ofertas</a></li>
              <li class="active"><a href="produtos.jsp">Produtos</a></li>
              <li><a href="sobre.jsp">Sobre</a></li>            
            </ul>
 

            <ul class="nav navbar-nav navbar-right">
              <li><a href="login.jsp">Entrar</a></li>

            </ul>

          </div>
            
        </nav>
        
        <h1>Hello World!</h1>
        
        <form action="AddProduto" method="post">
            Descrição: <input name="descricao">
            Preço: <input name="preco">
            
            <button type="submit">OK</button>
        </form>
        
        <%
            for(int i=0; i<Produto.getLista().size(); i++){
                
                Produto p = Produto.getLista().get(i);
                
                out.println("<pre> "+ p.getDescricao() +" </pre>");
            
            }
        
        %>
        
        
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
