/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.AvancesDAO;
import Modelo.EnlacesDAO;
import Modelo.Estudiante;
import Modelo.EstudianteDao;
import Modelo.Respuestas;
import Modelo.RespuestasDao;
import Modelo.Validacion;
import Modelo.ValidacionDao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 *
 * @author jeale
 */
public class Controlador extends HttpServlet {

    Estudiante es = new Estudiante();
    EstudianteDao edao = new EstudianteDao();
    ValidacionDao ValDao = new ValidacionDao();
    RespuestasDao rDao = new RespuestasDao();
    Respuestas res = new Respuestas();
    EnlacesDAO endao = new EnlacesDAO();
    AvancesDAO avdao = new AvancesDAO();
    String ti;

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
            request.getRequestDispatcher("Principal.jsp").forward(request, response);
        }
        if (accion != null && accion.equals("Registrar")) {
            String nom = request.getParameter("txtnom");
            String tel = request.getParameter("txttel");
            String correo = request.getParameter("txtcorreo");
            String contraseña = request.getParameter("txtcon");

            es.setNombre(nom);
            es.setTelefono(tel);
            es.setCorreo(correo);
            es.setContraseña(contraseña);
            edao.registrar(es);

            // Redirige a la página de Login después de registrar
            response.sendRedirect("Login.jsp");
            return; // Termina el procesamiento de esta solicitud
        }

        if (menu != null && menu.equals("Perfil")) {
            if (accion != null) {
                switch (accion) {
                    case "Ver Datos":
                        String usuario = (String) request.getSession().getAttribute("usuario");
                        es = edao.listar(usuario);
                        request.setAttribute("estudiante", es);
                        request.getRequestDispatcher("Perfil.jsp").forward(request, response);
                        return;
                    case "Actualizar":
                        String nom = request.getParameter("txtNombre");
                        String tel = request.getParameter("txtTelefono");
                        String correo = request.getParameter("txtCorreo");
                        String contraseña = request.getParameter("txtContraseña");

                        es.setNombre(nom);
                        es.setTelefono(tel);
                        es.setCorreo(correo);
                        es.setContraseña(contraseña);
                        edao.modificar(es);

                        // Redirige a la página de Perfil después de actualizar
                        request.getRequestDispatcher("Perfil.jsp").forward(request, response);
                        return;
                    default:
                        break;
                }
            }
            request.getRequestDispatcher("Perfil.jsp").forward(request, response);
        }

        if (menu != null && menu.equals("Validacion")) {
            if (accion != null) {
                switch (accion) {
                    case "Listar" -> {
                        List<Validacion> lista = ValDao.tabla();
                        List<Respuestas> respuestas = rDao.tabla();
                        System.out.println("Lista de Preguntas Estudiantes: " + lista);
                        request.setAttribute("preguntas", lista);
                        request.setAttribute("respuestas", respuestas);
                        request.getRequestDispatcher("ValidacionEst.jsp").forward(request, response);
                    }
                    case "Respuestas" -> {
                        List<Validacion> preguntas = ValDao.tabla();

                        for (Validacion pregunta : preguntas) {
                            String respuesta = request.getParameter("respuesta_" + pregunta.getNro_pregunta());
                            System.out.println("Procesando pregunta nro: " + pregunta.getNro_pregunta() + " con respuesta: " + respuesta);
                            if (respuesta != null && !respuesta.trim().isEmpty()) {
                                Respuestas r = new Respuestas();
                                r.setNro_pregunta(pregunta.getNro_pregunta());
                                r.setRespuesta(respuesta);
                                System.out.println("Guardando respuesta: " + r);
                                rDao.agregar(r); // Llama al método para guardar la respuesta
                            } else {
                                System.out.println("Respuesta vacía o nula para la pregunta nro: " + pregunta.getNro_pregunta());
                            }
                        }

                        request.setAttribute("mensaje", "Respuestas guardadas exitosamente.");
                        preguntas = ValDao.tabla(); // Actualiza la lista de preguntas (opcional)
                        request.setAttribute("preguntas", preguntas);
                        request.getRequestDispatcher("ValidacionEst.jsp").forward(request, response);;
                    }
                }
            }
            request.getRequestDispatcher("ValidacionEst.jsp").forward(request, response);
        }
        if (menu != null && menu.equals("Enlaces")) {
            if (accion != null) {
                switch (accion) {
                    case "Listar" -> {
                        List lista = endao.listar();
                        request.setAttribute("enlaces", lista);
                        break;
                    }
                    case "Filtrar" -> {
                        ti = request.getParameter("tipo");
                        List filtro = endao.filtrar(ti);
                        request.setAttribute("enlaces", filtro);
                        request.getRequestDispatcher("Enlaces.jsp").forward(request, response);
                        break;
                    }
                }
            }
            request.getRequestDispatcher("Enlaces.jsp").forward(request, response);
        }
        if (menu != null && menu.equals("Avances")) {
            if (accion != null) {
                switch (accion) {
                    case "Listar" -> {
                        List lista = avdao.listar();
                        request.setAttribute("avances", lista);
                        break;
                    }
                }
            }
            request.getRequestDispatcher("Informacion.jsp").forward(request, response);
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
