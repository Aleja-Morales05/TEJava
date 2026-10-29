/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class RespuestasDao {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    List<Respuestas> respuestas = new ArrayList<>();

    public boolean existeNroPregunta(int nro_pregunta) {
        String sql = "SELECT COUNT(*) FROM validacion WHERE nro_pregunta = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, nro_pregunta);
            ResultSet rs = ps.executeQuery();
            if (rs.next() && rs.getInt(1) > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public int actualizar(Respuestas res) {
        String sql = "UPDATE respuestas set Respuesta=? where nro_pregunta=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            //ps.setInt(1, es.getId());
            ps.setString(1, res.getRespuesta());
            ps.setInt(2, res.getNro_pregunta());
            r = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error registrarestudianteDao " + e);
        }
        return r;
    }

    public int agregar(Respuestas res) {
        if (!existeNroPregunta(res.getNro_pregunta())) {
            System.out.println("El nro_pregunta no existe en la tabla validacion");
            return 0;
        }

        String sql = "insert into respuestas(nro_pregunta, Respuesta) values (?, ?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, res.getNro_pregunta());
            ps.setString(2, res.getRespuesta());
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error registrarestudianteDao " + e);
            e.printStackTrace();
        }
        return r;
    }
    

    public List<Respuestas> tabla() {
        List<Respuestas> lista = new ArrayList<>();
        String sql = "SELECT * FROM respuestas";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Respuestas r = new Respuestas();
                r.setNro_pregunta(rs.getInt("nro_pregunta"));
                r.setRespuesta(rs.getString("Respuesta"));
                lista.add(r);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }
    
}
