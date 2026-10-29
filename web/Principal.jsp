<%-- 
    Document   : Principal.jsp
    Created on : 30/04/2024, 2:25:17 a. m.
    Author     : jeale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Principal</title>
    </head>
    <body style="background-color:#000000; width: 100%; overflow-x: hidden; height: 100%;">
        <nav class="navbar navbar-expand-lg " style="background-color:#000000" bg-info>
            <div class="collapse navbar-collapse" id="navbarNav" >
                <ul class="navbar-nav">
                   <li class="nav-item active" style="margin-left: 50px">
                        <a class="nav-link" style="color:#a0e9f3;font-size: 30px; padding:none; font-weight: bold;">Java</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 20px; border: none; color: #FFFFFF;padding: 22px;" class="btn btn-outline-dark" href="Controlador?menu=Perfil" target="myFrame">Perfil</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 20px; border: none; color: #FFFFFF;padding: 22px;" class="btn btn-outline-dark" href="Controlador?menu=Enlaces&accion=Listar" target="myFrame">Enlaces</a>  
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 20px; border: none; color: #FFFFFF;padding: 22px;" class="btn btn-outline-dark" href="Controlador?menu=Avances&accion=Listar" target="myFrame">Información</a>                 
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 20px; border: none; color: #FFFFFF;padding: 22px;" class="btn btn-outline-dark" href="Controlador?menu=Validacion&accion=Listar" target="myFrame">Validacion</a>
                    </li>

                </ul>
            </div>
            <div class="dropdown">
                <button style="border: none; color: #FFFFFF" class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    ${estudiante.getNombre()}
                </button>
                <div class="dropdown-menu ">
                    <a class="dropdown-item" href="#">
                        <img src="img/user.png" alt="60" width="60"/>
                    </a>
                    <a class="dropdown-item" href="#">${estudiante.getCorreo()}</a>
                    <div class="dropdown-divider"></div>
                    <form action="Validar" method="POST">
                        <button name="accion" value="Salir" class="dropdown-item" href="#">Salir</button>
                    </form>
                </div>  
            </div>
        </nav>
        <div class="m-4" style="height: 550px;">
            <iframe name="myFrame" style="height: 100%; width: 100%; border: none"></iframe>
        </div>
        
        
        
        <%--background-image: url('img/fondo9.jpg');background-repeat: no-repeat;background-size: 100%;--%>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
