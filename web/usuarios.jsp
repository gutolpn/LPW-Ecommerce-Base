<%-- 
    Document   : usuarios
    Created on : 09/10/2019, 16:07:59
    Author     : gutol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            boolean logado = false;
            
            if(session != null && 
               session.getAttribute("logado") != null){
                logado = (boolean) session.getAttribute("logado");
            }
            
            if(!logado){ 
        %>
            <jsp:forward page="login.jsp"/>          
        <%    
            }
        %>
        
        
        <h1>Lista de Usuários do Sistema</h1>
        
        <h3>...</h3>
        
    </body>
</html>
