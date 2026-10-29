<%-- 
    Document   : Estudiantes.jsp
    Created on : 21/05/2024, 9:45:47 p. m.
    Author     : jeale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Modelo.Estudiante" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Estudiante</title>
    </head>
    <body style="background-color:#000000; width: 100%; overflow-x: hidden; height: 100%;">
    <center>
        <h1 style="font-family: Segoe Script;font-weight: bold; color: #a0e9f3;">Estudiantes</h1><br>
        <div class="col-sm-11" style="background-color: #121212; color: #ffffff; padding: 20px; border-radius: 10px;">
                    <table class="table table-hover" style="color: #ffffff; background-color: #1e1e1e; border-radius: 10px;">
                <thead>
                    <tr>
                        <th style="border-bottom: 1px solid #444444;">ID</th>
                        <th style="border-bottom: 1px solid #444444;">NOMBRE</th>
                        <th style="border-bottom: 1px solid #444444;">TELEFONO</th>
                        <th style="border-bottom: 1px solid #444444;">CORREO</th>
                        <th style="border-bottom: 1px solid #444444;">CONTRASEÑA</th>
                        <th style="border-bottom: 1px solid #444444;">ACCION</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        // Obtener la lista de estudiantes del request
                        List<Estudiante> estudiantes = (List<Estudiante>) request.getAttribute("estudiantes");
                        if (estudiantes != null && !estudiantes.isEmpty()) {
                            for (Estudiante estudiante : estudiantes) {
                    %>
                    <tr>
                        <td><%= estudiante.getId() %></td>
                        <td><%= estudiante.getNombre() %></td>
                        <td><%= estudiante.getTelefono() %></td>
                        <td><%= estudiante.getCorreo() %></td>
                        <td><%= estudiante.getContraseña() %></td>
                        <td>
                            <a class="btn btn-warning"  href="ControladorAd?menu=Estudiantes&accion=Editar&id=<%= estudiante.getId() %>" style="background-color: #3b7fa8; border-color: #3b7fa8; color: #ffffff;">Editar</a> |
                            <a class="btn btn-danger"  href="ControladorAd?menu=Estudiantes&accion=Eliminar&id=<%= estudiante.getId() %>" style="background-color: #568bc3; border-color: #568bc3; color: #ffffff;">Eliminar</a>    
                        </td>
                    </tr>

                    <% 
                            }
                        } else {
                    %>
                    <tr>
                        <td colspan="4">No se encontraron estudiantes.</td>
                    </tr>
                    <% 
                        }
                    %>
                </tbody>
            </table> 
        </div>
                <br>
        <div class="card col-sm-4" style="background-color: #1e1e1e; color:#ffffff; padding: 20px">
            <div class="card-body">
                <form action="ControladorAd?menu=Estudiantes" method="POST">
                    <div>
                        <label>Nombres</label>
                        <input type="text" value="${estudiante.getNombre()}" name="txtNombres" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Telefono</label>
                        <input type="text" value="${estudiante.getTelefono()}" name="txtTel" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Correo</label>
                        <input type="text" value="${estudiante.getCorreo()}" name="txtcorreo" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Contraseña</label>
                        <input type="password" value="${estudiante.getContraseña()}" name="txtPass" class="form-control">
                    </div>
                    <input type="submit" name="accion" value="Actualizar" class="btn btn-success" style="background-color: #568bc3; border-color: #568bc3; color: #ffffff;">
                </form>
            </div>
        </div>
    </center>
    </body>  
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</html>
