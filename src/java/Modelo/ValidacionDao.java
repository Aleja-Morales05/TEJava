/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
 /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Config.Conexion;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 *
 * @author jeale
 */
public class ValidacionDao {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;

    public int agregar(Validacion val) {
        String sql = "insert into validacion(nro_pregunta, Pregunta)values(?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            //ps.setInt(1, es.getId());
            ps.setInt(1, val.getNro_pregunta());
            ps.setString(2, val.getPregunta());
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error registrarestudianteDao " + e);
        }
        return r;
    }

    public List tabla() {
        String sql = "select * from validacion ";
        List<Validacion> lista = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Validacion val = new Validacion();
                val.setNro_pregunta(rs.getInt("nro_pregunta"));
                val.setPregunta(rs.getString("Pregunta"));
                lista.add(val);
            }
        } catch (Exception e) {
            System.out.println("Error Tabla " + e);
        }
        return lista;
    }


    public Validacion listarId(int nro_pregunta) {
        Validacion val = new Validacion();
        String sql = "SELECT * FROM validacion WHERE nro_pregunta = " + nro_pregunta;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            //ps.setInt(1, nro_pregunta);
            rs = ps.executeQuery();
            while (rs.next()) {
                val.setNro_pregunta(rs.getInt("nro_pregunta"));
                val.setPregunta(rs.getString("Pregunta"));
            }
        } catch (Exception e) {
            System.out.println("Error listarIdEmpleadoDAO " + e);
        }
        return val;
    }

    public int modificar(Validacion val) {
        String sql = "UPDATE validacion set Pregunta=? where nro_pregunta=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            //ps.setInt(1, es.getId());
            ps.setString(1, val.getPregunta());
            ps.setInt(2, val.getNro_pregunta());
            r = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error registrarestudianteDao " + e);
        }
        return r;
    }

    public void eliminar(int nro_pregunta) {
        String sql = "Delete from validacion where nro_pregunta=" + nro_pregunta;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

}
