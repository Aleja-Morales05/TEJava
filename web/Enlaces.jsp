<%@page import="java.util.List"%>
<%@page import="Modelo.Enlaces"%>
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
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                List<Enlaces> listaEnlaces = (List<Enlaces>) request.getAttribute("enlaces");
                                if (listaEnlaces != null) {
                                    for (Enlaces en : listaEnlaces) {
                            %>
                            <tr style="color: #ffffff; border-top: 1px solid #444444;">
                                <td style="border-top: 1px solid #444444; width:300px;"><%= en.getTitulo() %></td>
                                <td style="border-top: 1px solid #444444;"><%= en.getTipo() %></td>
                                <td style="border-top: 1px solid #444444;">
                                    <a class="btn btn-warning" href="<%= en.getLink() %>" style="background-color: #568bc3; border-color: #568bc3; color: #ffffff; width:90px;">Visitar</a>
                                </td>
                                <td style="border-top: 1px solid #444444; width:600px;"><%= en.getUso() %></td>
                            </tr>
                            <%
                                    }
                                }
                            %>
                        </tbody>
                    </table>
                </div>
                <div style="color:#FFFFFF">
                    <a class="btn btn-warning" href="Controlador?menu=Enlaces&accion=Filtrar&tipo=Libro" style="background-color: #3b7fa8; border-color: #3b7fa8; color: #ffffff;">Libros</a> | 
                    <a class="btn btn-warning" href="Controlador?menu=Enlaces&accion=Filtrar&tipo=Revista"style="background-color: #3b7fa8; border-color: #3b7fa8; color: #ffffff;">Revistas</a> | 
                    <a class="btn btn-warning" href="Controlador?menu=Enlaces&accion=Filtrar&tipo=Articulo" style="background-color: #3b7fa8; border-color: #3b7fa8; color: #ffffff;">Artículos</a> | 
                    <a class="btn btn-warning" href="Controlador?menu=Enlaces&accion=Filtrar&tipo=Video" style="background-color: #3b7fa8; border-color: #3b7fa8; color: #ffffff;">Videos</a>
                </div>
            </center>
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>