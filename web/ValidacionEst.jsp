<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Modelo.Validacion" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Validacion</title>
    </head>
    <body style="background-color:#000000; width: 100%; overflow-x: hidden; height: 100%;">
    <center>
        <h1 style="font-family: Segoe Script;font-weight: bold; color: #a0e9f3;">Preguntas</h1><br>
        <form action="Controlador?menu=Validacion&accion=Respuestas" method="post">
            <% 
                // Obtener la lista de preguntas desde el atributo de solicitud
                List<Validacion> preguntas = (List<Validacion>) request.getAttribute("preguntas");
                // Verificar si hay preguntas para mostrar
                if (preguntas != null && !preguntas.isEmpty()) {
                    // Iterar sobre la lista de preguntas
                    for (Validacion pregunta : preguntas) {
            %>
            <div>
                <label style="color: white;"><%= pregunta.getNro_pregunta() %>. <%= pregunta.getPregunta() %></label><br>
                <textarea name="respuesta_<%= pregunta.getNro_pregunta() %>" rows="4" cols="50"></textarea>
            </div>
            <% 
                    }
                } else {
            %>
            <p>No hay preguntas disponibles.</p>
            <% 
                }
            %>
            <button type="submit" name="accion" value="Guardar Respuestas" class="btn bg-info" style="background-color: #3b7fa8; border-color: #3b7fa8; color: #ffffff;">Guardar Respuestas</button>
        </form>

        <% 
            String mensaje = (String) request.getAttribute("mensaje");
            if (mensaje != null) {
        %>
        <p><%= mensaje %></p>
        <% 
            }
        %>

    </center>
</body>
</html>