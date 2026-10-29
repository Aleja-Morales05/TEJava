<%-- 
    Document   : InformacionAd
    Created on : 3/06/2024, 5:44:42 p. m.
    Author     : Asus-PC
--%>

<%@page import="Modelo.Avances"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Principal</title>
    </head>
    <body style="background-color:#000000; width: 100%; overflow-x: hidden; height: 100%;">
        
        <h1 style="font-weight: bold; font-size: 40px;color:#FDFEFE; position: relative; left: 100px">Información del proyecto</h1>
        <div class="d-flex" style="color:#FDFEFE;font-family: Tahoma; background-color:#000000; ">
            <div class="card-body">
                <a style="font-family: Segoe Script;font-weight: bold; font-size: 30px; color: #a0e9f3; position: relative; left: 100px;">Descripción</a>
                <div style="padding: 25px;width:50vw;height:25vh;">
                    <p style="position: relative; left: 55px">El proyecto consiste en un tutorial educativo en el cual se manejan diferentes temáticas y conceptos básicos e introductorios para el manejo del lenguaje de programación Java,
                    está dirigido principalmente a los estudiantes de primer y segundo semestre de la tecnología en sistematización de datos de la Universidad Distrital Francisco José de Caldas.
                    Cuenta con diferentes secciones que contienen explicaciones claras, ejemplos y actividades interactivas para facilitar el aprendizaje de manera dinámica y atractiva.
                    </p>
                    <img src="img/tec1.jpg" height="300" width="450" style="position: relative;top: -290px; left: 870px;">
                </div>
                
            </div>
        </div>
        <div>
            <center><p style="font-family: Segoe Script;font-weight: bold; font-size: 30px;color: #a0e9f3; margin-top: 30px">Objetivos</p></center>
            <div style="color:#FFFFFF">
                <div style="padding: 25px;border-radius: 10px;background-color:#2A2A2A;position: relative; top: 50px; left: 1050px;height:50vh;width:20vw;">
                    <img src="img/logo1.png" height="80" width="80"><br>
                    <br><p style="font-weight: bold">Transmitir</p>
                    <p>ideas e instrucciones claras para el correcto aprendizaje por parte de los usuarios que hagan uso de esta herramienta.</p>
                </div>
                <div style="padding: 25px;border-radius: 10px;background-color:#2A2A2A;position: relative; top: -225px; left: 725px;height:50vh;width:20vw;">
                    <img src="img/logo2.png" height="80" width="110"><br>
                    <br><p style="font-weight: bold">Crear</p>
                    <p>ejemplos que complementen, refuercen y den una mayor claridad a los conceptos manejados en el tutorial.</p>
                </div>
                <div style="padding: 25px;border-radius: 10px;background-color:#2A2A2A;position: relative; top: -500px; left: 80px;height:50vh;width:20vw;">
                    <img src="img/logo3.png" height="80" width="80"><br>
                    <br><p style="font-weight: bold">Proporcionar</p>
                    <p>una retroalimentación continua para la mejora del aprendizaje y la corrección de los errores que tengan los estudiantes.</p>
                </div>
                <div style="padding: 25px;border-radius: 10px;background-color:#2A2A2A;position: relative; top: -775px; left: 405px;height:50vh;width:20vw;">
                    <img src="img/logo4.png" height="80" width="110"><br>
                    <br><p style="font-weight: bold">Integrar</p>
                    <p>elementos de gamificación para motivar a los estudiantes a través de un aprendizaje más dinámico e interactivo</p>
                </div>
            </div> 
        </div>
        <div style="position: relative; top: 190px;color:#FFFFFF;font-family: Tahoma;">
            <div>
                <a style="font-family: Segoe Script;font-weight: bold; font-size: 30px;color: #a0e9f3;position: relative; top: -920px;left: 90px">Integrantes</a>
                <div style="padding: 20px;border-radius: 10px; border-width: 2px;border-style: solid;border-color: #3b7fa8;position: relative; top: -900px; left: 80px;height:9vh;width:22vw;">
                    <p>Jennifer Alejandra Morales </p>
                </div>
                <div style="padding: 20px;border-radius: 10px; border-width: 2px;border-style: solid;border-color: #3b7fa8;position: relative; top: -890px; left: 80px;height:9vh;width:22vw;">
                    <p>Sara Viviana Herrera</p>
                </div>
            </div>
        </div>
        
        
        
        
    <center><h1 style="font-family: Segoe Script;font-weight: bold; color: #a0e9f3; position: relative; top:-920px">Seguimiento</h1><br></center>
        <div class="d-flex" style="position: relative; top: -920px; left:9%">
            <div class="card col-sm-4" style="background-color: #1e1e1e; color:#ffffff; padding: 20px">
                <div class="card-body">
                    <form action="ControladorAd?menu=Avances" method="POST">
                        <div class="form-group">
                            <label>Modulo</label>
                            <input type="text" value="${avance.getModulo()}" name="txtModulo" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Porcentaje</label>
                            <input type="text" value="${avance.getPorcentaje()}" name="txtPorcentaje" class="form-control">
                        </div>
                        <input type="submit" name="accion" value="Agregar" class="btn bg-info" style="background-color: #3b7fa8; border-color: #3b7fa8; color: #ffffff;"> | 
                        <input type="submit" name="accion" value="Actualizar" class="btn btn-success" style="background-color: #568bc3; border-color: #568bc3; color: #ffffff;">
                    </form>
                </div>
            </div>
            <div class="col-sm-6">
                <table class="table table-hover" style="color: #ffffff; background-color: #1e1e1e; border-radius: 10px;">
                        <thead>
                            <tr>
                                <th style="border-bottom: 1px solid #444444;">MODULO</th>
                                <th style="border-bottom: 1px solid #444444;">PORCENTAJE</th>
                                <th style="border-bottom: 1px solid #444444;">ACCIONES</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                List<Avances> listaAvances= (List<Avances>) request.getAttribute("avances");
                                if (listaAvances != null) {
                                    for (Avances av : listaAvances) {
                            %>
                            <tr style="color: #ffffff; border-top: 1px solid #444444;">
                                <td style="border-top: 1px solid #444444; width:250px;"><%= av.getModulo() %></td>
                                <td style="border-top: 1px solid #444444;"> % <%= av.getPorcentaje() %></td>
                                <td style="border-top: 1px solid #444444;">
                                    <a class="btn btn-warning" href="ControladorAd?menu=Avances&accion=Editar&id=<%= av.getId() %>" style="background-color: #3b7fa8; border-color: #3b7fa8; color: #ffffff;">Modificar</a> | 
                                    <a class="btn btn-danger" href="ControladorAd?menu=Avances&accion=Delete&id=<%= av.getId() %>" style="background-color: #568bc3; border-color: #568bc3; color: #ffffff;">Eliminar</a>
                                </td>
                            </tr>
                            <%
                                    }
                                }
                            %>
                        </tbody>
                </table>

            </div>
        </div>   
    </body>  
</html>
