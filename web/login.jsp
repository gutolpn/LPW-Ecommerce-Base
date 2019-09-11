<%-- 
    Document   : login
    Created on : 04/09/2019, 17:26:29
    Author     : gutol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Minha Loja</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <div class="container">
            <h1>Entrar no Sistema</h1>

            <form action="Login" method="post">
              <div class="form-group">
                <label for="exampleInputEmail1">Email:</label>
                <input name="email" type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1">Senha</label>
                <input name="senha" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
              </div>
              <button type="submit" class="btn btn-default">Submit</button>
            </form>
        
        </div>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
