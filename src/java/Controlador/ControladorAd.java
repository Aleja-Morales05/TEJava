/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Administrador;
import Modelo.Avances;
import Modelo.AvancesDAO;
import Modelo.Enlaces;
import Modelo.EnlacesDAO;
import Modelo.Estudiante;
import Modelo.EstudianteDao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import Modelo.EstudianteDao;
import Modelo.Respuestas;
import Modelo.RespuestasDao;
import Modelo.Validacion;
import Modelo.ValidacionDao;
import jakarta.servlet.http.HttpSession;
import java.util.Iterator;
import java.util.List;

/**
 *
 * @author jeale
 */
public class ControladorAd extends HttpServlet {

    EstudianteDao edao = new EstudianteDao();
    Administrador Ad = new Administrador();
    Estudiante es = new Estudiante();
    Validacion val = new Validacion();
    ValidacionDao ValDao = new ValidacionDao();
    Respuestas res = new Respuestas();
    RespuestasDao rDao = new RespuestasDao();
    int ide;
    int nro_pregunta;
    Enlaces en = new Enlaces();
    EnlacesDAO endao = new EnlacesDAO();
    int id;
    
    Avances av = new Avances();
    AvancesDAO avdao = new AvancesDAO();
    int id2;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");

        // Primero, maneja el caso de acción "Registrar"
        if (accion != null && accion.equals("Principal")) {
            request.getRequestDispatcher("PrincipalAdm.jsp").forward(request, response);
        }
        if (menu != null && menu.equals("Estudiantes")) {
            if (accion != null) {
                switch (accion) {
                    case "Listar" -> {
                        List<Estudiante> lista = edao.tabla();
                        System.out.println("Lista de estudiantes: " + lista);
                        request.setAttribute("estudiantes", lista);
                        request.getRequestDispatcher("Estudiantes.jsp").forward(request, response);
                    }
                    case "Editar" -> {
                        String idString = request.getParameter("id");
                        System.out.println("Valor del ID recibido en el servlet: " + idString);
                        if (idString != null && !idString.isEmpty()) {
                            ide = Integer.parseInt(idString);
                            Estudiante e = edao.listarId(ide);
                            request.setAttribute("estudiante", e);
                            System.out.println("Estudiante cargado en el servlet: " + e);
                            request.getRequestDispatcher("ControladorAd?menu=Estudiantes&accion=Listar").forward(request, response);
                        } else {
                            System.out.println("ID NO ENCONTRADO");
                            request.getRequestDispatcher("ControladorAd?menu=Estudiantes&accion=Listar").forward(request, response);
                        }
                    }
                    case "Eliminar" -> {// Redirige a la página de Perfil después de actualizar
                        String idString = request.getParameter("id");
                        System.out.println("Valor del ID recibido en el servlet: " + idString);
                        if (idString != null && !idString.isEmpty()) {
                            ide = Integer.parseInt(idString);
                            edao.eliminar(ide);
                            request.getRequestDispatcher("ControladorAd?menu=Estudiantes&accion=Listar").forward(request, response);
                        } else {
                            System.out.println("ID NO ENCONTRADO");
                            request.getRequestDispatcher("ControladorAd?menu=Estudiantes&accion=Listar").forward(request, response);
                        }
                    }
                    case "Actualizar" -> {// Redirige a la página de Perfil después de actualizar
                        String nom1 = request.getParameter("txtNombres");
                        String tel1 = request.getParameter("txtTel");
                        String correo1 = request.getParameter("txtcorreo");
                        String con1 = request.getParameter("txtPass");
                        es.setNombre(nom1);
                        es.setTelefono(tel1);
                        es.setCorreo(correo1);
                        es.setContraseña(con1);
                        es.setId(ide);
                        edao.modificar(es);
                        request.getRequestDispatcher("ControladorAd?menu=Estudiantes&accion=Listar").forward(request, response);//para actualizar la tabla con los nuevos datos
                        break;
                    }
                }
            }
            request.getRequestDispatcher("Estudiantes.jsp").forward(request, response);
        }
        if (menu != null && menu.equals("Validacion")) {
            if (accion != null) {
                switch (accion) {
                    case "Listar" -> {
                        List<Validacion> listaValidaciones = ValDao.tabla();
                        System.out.println("Lista de Preguntas: " + listaValidaciones);
                        request.setAttribute("validaciones", listaValidaciones);
                        List<Respuestas> listaRespuestas = rDao.tabla();
                        System.out.println("Lista de Respuestas: " + listaRespuestas);
                        request.setAttribute("respuestas", listaRespuestas);
                        request.getRequestDispatcher("Validacion.jsp").forward(request, response);
                    }

                    case "Editar" -> {
                        String idString = request.getParameter("nro_pregunta");
                        System.out.println("Numero pregunta recibido en el servlet: " + idString);
                        if (idString != null && !idString.isEmpty()) {
                            nro_pregunta = Integer.parseInt(idString);
                            Validacion val = ValDao.listarId(nro_pregunta);
                            request.setAttribute("validacion", val);
                            System.out.println("Estudiante cargado en el servlet: " + val);
                            request.getRequestDispatcher("ControladorAd?menu=Validacion&accion=Listar").forward(request, response);
                        } else {
                            System.out.println("ID NO ENCONTRADO");
                            request.getRequestDispatcher("ControladorAd?menu=Validación&accion=Listar").forward(request, response);
                        }
                    }
                    case "Agregar" -> {// Redirige a la página de Perfil después de actualizar
                        String nro_pregun = request.getParameter("txtnro");
                        int nro_pregunta1 = Integer.parseInt(nro_pregun);//se obtiene datos de caja de texto
                        String pregunta = request.getParameter("txtpregunta");
                        val.setNro_pregunta(nro_pregunta1);//se guardan en cada variable por medio de la clase empleado
                        val.setPregunta(pregunta);
                        ValDao.agregar(val);//se gurdan datos de clase empleado en la bd por medio del metodo agregar de empleadoDAO
                        request.getRequestDispatcher("ControladorAd?menu=Validacion&accion=Listar").forward(request, response);//para actualizar la tabla con los nuevos datos
                    }
                    case "Eliminar" -> {// Redirige a la página de Perfil después de actualizar
                        String idString = request.getParameter("nro_pregunta");
                        System.out.println("Numero Pregunta recibido en el servlet(Eliminar): " + idString);
                        if (idString != null && !idString.isEmpty()) {
                            nro_pregunta = Integer.parseInt(idString);
                            ValDao.eliminar(nro_pregunta);
                            request.getRequestDispatcher("ControladorAd?menu=Validacion&accion=Listar").forward(request, response);
                        } else {
                            System.out.println("ID NO ENCONTRADO");
                            request.getRequestDispatcher("ControladorAd?menu=Validacion&accion=Listar").forward(request, response);
                        }
                    }
                    case "Actualizar" -> {// Redirige a la página de Perfil después de actualizar
                        String nom1 = request.getParameter("txtNombres");
                        String nro_pregun = request.getParameter("txtnro");
                        int nro_pregunta1 = Integer.parseInt(nro_pregun);//se obtiene datos de caja de texto
                        String pregunta = request.getParameter("txtpregunta");
                        val.setNro_pregunta(nro_pregunta1);//se guardan en cada variable por medio de la clase empleado
                        val.setPregunta(pregunta);
                        ValDao.modificar(val);
                        request.getRequestDispatcher("ControladorAd?menu=Validacion&accion=Listar").forward(request, response);//para actualizar la tabla con los nuevos datos
                        break;
                    }
                }
            }
            request.getRequestDispatcher("Validacion.jsp").forward(request, response);
        }
        if (menu != null && menu.equals("Enlaces")) {
            if (accion != null) {
                switch (accion) {
                    case "Listar" -> {// Redirige a la página de Perfil después de actualizar
                        List lista = endao.listar();
                        request.setAttribute("enlaces", lista);
                        break;
                    }
                    case "Agregar" -> {// Redirige a la página de Perfil después de actualizar
                        String tit = request.getParameter("txtTitulo");//se obtiene datos de caja de texto
                        String tip = request.getParameter("txtTipo");
                        String lin = request.getParameter("txtLink");
                        String uso = request.getParameter("txtUso");
                        en.setTitulo(tit);//se guardan en cada variable por medio de la clase clientes
                        en.setTipo(tip);
                        en.setLink(lin);
                        en.setUso(uso);
                        endao.agregar(en);//se gurdan datos de clase clientes en la bd por medio del metodo agregar de clientesDAO
                        request.getRequestDispatcher("ControladorAd?menu=Enlaces&accion=Listar").forward(request, response);//para actualizar la tabla con los nuevos datos
                        break;
                    }
                    case "Editar" -> {// Redirige a la página de Perfil después de actualizar
                        id = Integer.parseInt(request.getParameter("id"));//guardando el id que llega del clientes.jsp
                        Enlaces c = endao.listarId(id);
                        request.setAttribute("enlace", c);//enviar informacion al formulario Clientes.jsp
                        request.getRequestDispatcher("ControladorAd?menu=Enlaces&accion=Listar").forward(request, response);//para actualizar la tabla con los nuevos datos
                        break;
                    }
                    case "Actualizar" -> {// Redirige a la página de Perfil después de actualizar
                        String tit2 = request.getParameter("txtTitulo");//se obtiene datos de caja de texto
                        String tip2 = request.getParameter("txtTipo");
                        String lin2 = request.getParameter("txtLink");
                        String uso2 = request.getParameter("txtUso");
                        en.setTitulo(tit2);//se guardan en cada variable por medio de la clase clientes
                        en.setTipo(tip2);
                        en.setLink(lin2);
                        en.setUso(uso2);
                        en.setId(id);
                        endao.actualizar(en);
                        request.getRequestDispatcher("ControladorAd?menu=Enlaces&accion=Listar").forward(request, response);//para actualizar la tabla con los nuevos datos
                        break;
                    }
                    case "Delete" -> {// Redirige a la página de Perfil después de actualizar
                        id = Integer.parseInt(request.getParameter("id"));//guardando el id que llega de Clientes.jsp
                        endao.delete(id);
                        request.getRequestDispatcher("ControladorAd?menu=Enlaces&accion=Listar").forward(request, response);//para actualizar la tabla con los nuevos datos
                        break;
                    }
                }
            }
            request.getRequestDispatcher("EnlacesAd.jsp").forward(request, response);
        }
        if (menu != null && menu.equals("Avances")) {
            if (accion != null) {
                switch (accion) {
                    case "Listar" -> {// Redirige a la página de Perfil después de actualizar
                        List lista = avdao.listar();
                        request.setAttribute("avances", lista);
                        break;
                    }
                    case "Agregar" -> {// Redirige a la página de Perfil después de actualizar
                        String tit = request.getParameter("txtTitulo");//se obtiene datos de caja de texto
                        String mod = request.getParameter("txtModulo");//se obtiene datos de caja de texto
                        String por = request.getParameter("txtPorcentaje");
                        av.setModulo(mod);//se guardan en cada variable por medio de la clase clientes
                        av.setPorcentaje(por);
                        avdao.agregar(av);//se gurdan datos de clase clientes en la bd por medio del metodo agregar de clientesDAO
                        request.getRequestDispatcher("ControladorAd?menu=Avances&accion=Listar").forward(request, response);//para actualizar la tabla con los nuevos datos
                        break;
                    }
                    case "Editar" -> {// Redirige a la página de Perfil después de actualizar
                        id2 = Integer.parseInt(request.getParameter("id"));//guardando el id que llega del clientes.jsp
                        Avances a = avdao.listarId(id2);
                        request.setAttribute("avance", a);//enviar informacion al formulario Clientes.jsp
                        request.getRequestDispatcher("ControladorAd?menu=Avances&accion=Listar").forward(request, response);//para actualizar la tabla con los nuevos datos
                        break;
                    }
                    case "Actualizar" -> {// Redirige a la página de Perfil después de actualizar
                        String mod2 = request.getParameter("txtModulo");//se obtiene datos de caja de texto
                        String por2 = request.getParameter("txtPorcentaje");
                        av.setModulo(mod2);//se guardan en cada variable por medio de la clase clientes
                        av.setPorcentaje(por2);
                        av.setId(id2);
                        avdao.actualizar(av);
                        request.getRequestDispatcher("ControladorAd?menu=Avances&accion=Listar").forward(request, response);//para actualizar la tabla con los nuevos datos
                        break;
                    }
                    case "Delete" -> {// Redirige a la página de Perfil después de actualizar
                        id2 = Integer.parseInt(request.getParameter("id"));//guardando el id que llega de Clientes.jsp
                        avdao.delete(id2);
                        request.getRequestDispatcher("ControladorAd?menu=Avances&accion=Listar").forward(request, response);//para actualizar la tabla con los nuevos datos
                        break;
                    } 
                }
            }
            request.getRequestDispatcher("InformacionAd.jsp").forward(request, response);
        }
}

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
