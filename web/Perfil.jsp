<%-- 
    Document   : Perfil
    Created on : 4/06/2024, 3:27:07 p. m.
    Author     : jeale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Perfil</title>
    </head>
    <body style="background-color:#000000; width: 100%; overflow-x: hidden; height: 100%;">
    <center>
        <h1 style="font-family: Segoe Script;font-weight: bold; color: #a0e9f3;">Perfil</h1><br>
        <div class="card col-sm-4" style="background-color: #1e1e1e; color:#ffffff; padding: 20px">
            <div class="card-body">
                <form action="Controlador" method="POST">
                    <input type="hidden" name="menu" value="Perfil">
                    <div class="form-group">
                        <label for="txtNombre">Nombre</label>
                        <input type="text" id="txtNombre" name="txtNombre" value="${estudiante.getNombre()}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="txtTelefono">Telefono</label>
                        <input type="text" id="txtTelefono" name="txtTelefono" value="${estudiante.getTelefono()}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="txtCorreo">Correo</label>
                        <input type="text" id="txtCorreo" name="txtCorreo" value="${estudiante.getCorreo()}" class="form-control" readonly>
                    </div>
                    <div class="form-group">
                        <label for="txtContraseña">Contraseña</label>
                        <input type="password" id="txtContraseña" name="txtContraseña" value="${estudiante.getContraseña()}" class="form-control">
                    </div>

                    <button type="submit" name="accion" value="Ver Datos" class="btn bg-info" style="background-color: #3b7fa8; border-color: #3b7fa8; color: #ffffff;">Ver Datos</button>
                    <button type="submit" name="accion" value="Actualizar" class="btn bg-info" style="background-color: #3b7fa8; border-color: #3b7fa8; color: #ffffff;">Actualizar</button>
                </form>
            </div>

        </div>
    </div>
</center>
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</html>
