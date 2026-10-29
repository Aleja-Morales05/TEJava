<%-- 
    Document   : Validar
    Created on : 14/05/2024, 2:19:32 a. m.
    Author     : jeale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Modelo.Validacion" %>
<%@ page import="Modelo.Respuestas" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Validación</title>
    </head>
    <body style="background-color:#000000; width: 100%; overflow-x: hidden; height: 100%;">
    <center>
        <h1 style="font-family: Segoe Script;font-weight: bold; color: #a0e9f3;">Validación</h1><br>
        <div class="card col-sm-4" style="background-color: #1e1e1e; color:#ffffff; padding: 20px">
            <div class="card-body">
                <form action="ControladorAd?menu=Validacion" method="POST">
                    <div>
                        <label>Nro Pregunta</label>
                        <input type="text" value="${validacion.getNro_pregunta()}" name="txtnro" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Pregunta</label>
                        <input type="text" value="${validacion.getPregunta()}" name="txtpregunta" class="form-control">
                    </div>
                    <input type="submit" name="accion" value="Actualizar" class="btn bg-info" style="background-color: #3b7fa8; border-color: #3b7fa8; color: #ffffff;">|
                    <input type="submit" name="accion" value="Agregar" class="btn btn-success" style="background-color: #568bc3; border-color: #568bc3; color: #ffffff;">
                </form>
            </div>
        </div>
        <br>
        <div class="col-sm-11" style="background-color: #121212; color: #ffffff; padding: 20px; border-radius: 10px;">
            <table class="table table-hover" style="color: #ffffff; background-color: #1e1e1e; border-radius: 10px;">
                <thead>
                    <tr>
                        <th>Nro_Pregunta</th>
                        <th>Pregunta</th>
                        <th>Accion</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        // Obtener la lista de estudiantes del request
                        List<Validacion> validaciones = (List<Validacion>) request.getAttribute("validaciones");
                        if (validaciones != null && !validaciones.isEmpty()) {
                            for (Validacion validacion : validaciones) {
                    %>
                    <tr>
                        <td><%= validacion.getNro_pregunta() %></td>
                        <td><%= validacion.getPregunta() %></td>

                        <td>
                            <a class="btn btn-warning" href="ControladorAd?menu=Validacion&accion=Editar&nro_pregunta=<%= validacion.getNro_pregunta() %>"style="background-color: #3b7fa8; border-color: #3b7fa8; color: #ffffff;">Editar</a> |
                            <a class="btn btn-danger" href="ControladorAd?menu=Validacion&accion=Eliminar&nro_pregunta=<%= validacion.getNro_pregunta() %>" style="background-color: #568bc3; border-color: #568bc3; color: #ffffff;">Eliminar</a>
                        </td> 
                        </td>
                    </tr>

                    <% 
                            }
                        } else {
                    %>
                    <tr>
                        <td colspan="4">No se encontraron Preguntas.</td>
                    </tr>
                    <% 
                        }
                    %>
                </tbody>
            </table> 
        </div>
        <br>
        <div class="col-sm-11" style="background-color: #121212; color: #ffffff; padding: 20px; border-radius: 10px;">
            <h1 style="font-family: Segoe Script;font-weight: bold; color: #a0e9f3;">Respuestas </h1><br>
            <table class="table table-hover" style="color: #ffffff; background-color: #1e1e1e; border-radius: 10px;">
                <thead>
                    <tr>
                        <th>Nro Pregunta</th>
                        <th>Respuesta</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        // Obtener la lista de respuestas de validación del request
                        List<Respuestas> respuestas = (List<Respuestas>) request.getAttribute("respuestas");
                        if (respuestas != null && !respuestas.isEmpty()) {
                            for (Respuestas respuesta : respuestas) {
                    %>
                    <tr>
                        <td><%= respuesta.getNro_pregunta() %></td>
                        <td><%= respuesta.getRespuesta() %></td>
                    </tr>
                    <% 
                            }
                        } else {
                    %>
                    <tr>
                        <td colspan="4">No se encontraron respuestas de validación.</td>
                    </tr>
                    <% 
                        }
                    %>
                </tbody>
            </table>        
        </div>

    </body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</html>
