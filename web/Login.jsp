<%-- 
    Document   : Login.jsp
    Created on : 28/04/2024, 11:01:31 p. m.
    Author     : jeale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Inicio Sesion</title>
    </head>
    <body style="background-color:#1e1e1e;color:#ffffff; width: 100%; overflow-x: hidden; height: 100%;">
        <div class="container mt-3 col-lg-4">
            <div class="card col-sm-10"style="background-color: #000000; ">
                <div class="card-body">
                    <form class="form-sign" action="Validar" method="POST">
                        <div class="form-group text-center">
                            <h1 style="font-family: Segoe Script;font-weight: bold; color: #a0e9f3;">Login Estudiante</h1><br>
                            <img src="img/Login.jpg" alt="70" width="170"/>
                            <h4 style="font-family: Segoe Script;font-weight: bold; color: #a0e9f3;">Bienvenido al tutorial</h4><br>
                        </div>
                        <div class="form-group">
                            <label>Correo:</label>
                            <input type="text" name="txtuser" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Password:</label>
                            <input type="password" name="txtpass" class="form-control">
                        </div>
                        <input type="submit" name="accion" value="Ingresar" class="btn btn-primary btn-block" style=" margin-top: 10px; background-color: #3b7fa8; border-color: #3b7fa8; color: #ffffff;">   
                    </form>
                    <form form class="form-sign" action="Validar" method="GET">
                        <input type="hidden" name="accion" value="IngresarAdmin">
                        <input type="submit" value="Ingresar como administrador" class="btn btn-primary btn-block"  style="margin-top: 10px; background-color: #3b7fa8; border-color: #3b7fa8; color: #ffffff;">
                    </form>

                    <form action="index.jsp" method="post">
                           <input type="submit" name="accion" value="Atras" class="btn btn-primary btn-block" style="margin-top: 10px; background-color: #3b7fa8; border-color: #3b7fa8; color: #ffffff;">
                    </form>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>