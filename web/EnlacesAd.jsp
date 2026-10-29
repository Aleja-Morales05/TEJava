<%-- 
    Document   : EnlacesAd
    Created on : 3/06/2024, 5:48:55 p. m.
    Author     : Asus-PC
--%>

<%@page import="java.util.List"%>
<%@page import="Modelo.Enlaces"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Enlaces</title>
    </head>
    <body style="background-color:#000000; width: 100%; overflow-x: hidden; height: 100%;">
        <center>
            <h1 style="font-family: Segoe Script;font-weight: bold; color: #a0e9f3;">Enlaces</h1><br>
                <div class="col-sm-11" style="background-color: #121212; color: #ffffff; padding: 20px; border-radius: 10px;">
                    <table class="table table-hover" style="color: #ffffff; background-color: #1e1e1e; border-radius: 10px;">
                        <thead>
                            <tr>
                                <th style="border-bottom: 1px solid #444444;">TITULO</th>
                                <th style="border-bottom: 1px solid #444444;">TIPO</th>
                                <th style="border-bottom: 1px solid #444444;">LINK</th>
                                <th style="border-bottom: 1px solid #444444;">USO</th>
                                <th style="border-bottom: 1px solid #444444;">ACCIONES</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                List<Enlaces> listaEnlaces = (List<Enlaces>) request.getAttribute("enlaces");
                                if (listaEnlaces != null) {
                                    for (Enlaces en : listaEnlaces) {
                            %>
                            <tr style="color: #ffffff; border-top: 1px solid #444444;">
                                <td style="border-top: 1px solid #444444; width:250px;"><%= en.getTitulo() %></td>
                                <td style="border-top: 1px solid #444444;"><%= en.getTipo() %></td>
                                <td style="border-top: 1px solid #444444;">
                                    <a class="btn btn-warning" href="<%= en.getLink() %>" style="background-color: #568bc3; border-color: #568bc3; color: #ffffff; width:90px;">Visitar</a>
                                </td>
                                <td style="border-top: 1px solid #444444; width:450px;"><%= en.getUso() %></td>
                                <td style="border-top: 1px solid #444444;">
                                    <a class="btn btn-warning" href="ControladorAd?menu=Enlaces&accion=Editar&id=<%= en.getId() %>" style="background-color: #3b7fa8; border-color: #3b7fa8; color: #ffffff;">Modificar</a> | 
                                    <a class="btn btn-danger" href="ControladorAd?menu=Enlaces&accion=Delete&id=<%= en.getId() %>" style="background-color: #568bc3; border-color: #568bc3; color: #ffffff;">Eliminar</a>
                                </td>
                            </tr>
                            <%
                                    }
                                }
                            %>
                        </tbody>
                    </table>
                </div>
                        <br><br>
                <div class="card col-sm-4" style="background-color: #1e1e1e; color:#ffffff; padding: 20px">
                <div class="card-body">
                    <form action="ControladorAd?menu=Enlaces" method="POST">
                        <div class="form-group">
                            <label>Titulo</label>
                            <input type="text" value="${enlace.getTitulo()}" name="txtTitulo" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Tipo</label>
                            <input type="text" value="${enlace.getTipo()}" name="txtTipo" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Link</label>
                            <input type="text" value="${enlace.getLink()}" name="txtLink" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Uso</label>
                            <input type="text" value="${enlace.getUso()}" name="txtUso" class="form-control">
                        </div>
                        <input type="submit" name="accion" value="Agregar" class="btn bg-info" style="background-color: #3b7fa8; border-color: #3b7fa8; color: #ffffff;"> | 
                        <input type="submit" name="accion" value="Actualizar" class="btn btn-success" style="background-color: #568bc3; border-color: #568bc3; color: #ffffff;">
                    </form>
                </div>
            </div>
            </center>

            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
