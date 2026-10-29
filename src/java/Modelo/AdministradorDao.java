/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Config.Conexion;
import java.sql.*;

/**
 *
 * @author jeale
 */
public class AdministradorDao {
    Conexion cn= new Conexion();
    Connection con; 
    PreparedStatement ps;
    ResultSet rs;
    
    public Administrador validar(String CorreoAd, String ContraseñaAd){
       // Estudiante es = new Estudiante()
        Administrador Ad = new Administrador();
        String sql = "Select * from administradores where CorreoAd=? and ContraseñaAd=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, CorreoAd);//item.erUser
            ps.setString(2, ContraseñaAd);//item.getContraseña
            rs = ps.executeQuery();
            while (rs.next()){
                Ad.setIdAd(rs.getInt("IdAd"));
                Ad.setCorreoAd(rs.getString("CorreoAd"));
                Ad.setContraseñaAd(rs.getString("ContraseñaAd"));
                Ad.setNombreAd(rs.getString("NombreAd"));
                
            }
        } catch (Exception e) {
        }
        return Ad;
    }
}
