/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Config.Conexion;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author jeale
 */
public class EstudianteDao {
    Conexion cn= new Conexion();
    Connection con; 
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    public Estudiante validar(String Correo, String Contraseña){
        Estudiante es = new Estudiante();
        String sql = "Select * from estudiantes where Correo=? and Contraseña=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, Correo);//item.gerUser
            ps.setString(2, Contraseña);//item.getContraseña
            rs = ps.executeQuery();
            while (rs.next()){
                es.setId(rs.getInt("Id"));
                es.setCorreo(rs.getString("Correo"));
                es.setContraseña(rs.getString("Contraseña"));
                es.setNombre(rs.getString("Nombre"));
                
            }
        } catch (Exception e) {
        }
        return es;
    }
    
    public int registrar(Estudiante es){
        String sql = "insert into estudiantes(Nombre, Telefono, Correo, Contraseña)values(?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            //ps.setInt(1, es.getId());
            ps.setString(1, es.getNombre());
            ps.setString(2, es.getTelefono());
            ps.setString(3, es.getCorreo());
            ps.setString(4, es.getContraseña());
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error registrarestudianteDao "+e);
        }
        return r;
    }
    
    public List tabla(){
        String sql="select * from estudiantes ";
        List<Estudiante> lista = new ArrayList<>();
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Estudiante es = new Estudiante();
                es.setId(rs.getInt("Id"));
                es.setNombre(rs.getString("Nombre"));
                es.setTelefono(rs.getString("Telefono"));
                es.setCorreo(rs.getString("Correo"));
                es.setContraseña(rs.getString("Contraseña"));
                lista.add(es);
            }
        } catch (Exception e) {
            System.out.println("Error Tabla "+e);
        }
       return lista;
    }
    
    public Estudiante listar(String correo) {
        Estudiante es = new Estudiante();
        String sql = "SELECT * FROM estudiantes WHERE Correo = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, correo);
            rs = ps.executeQuery();
            while (rs.next()) {
                es.setNombre(rs.getString("Nombre"));
                es.setTelefono(rs.getString("Telefono"));
                es.setCorreo(rs.getString("Correo"));
                es.setContraseña(rs.getString("Contraseña"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return es;
    }
    public Estudiante listarId(int id){
        Estudiante es = new Estudiante();
        String sql = "SELECT * FROM estudiantes WHERE Id = ?";
        try {
            con =cn.Conexion(); 
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                es.setNombre(rs.getString("Nombre"));
                es.setTelefono(rs.getString("Telefono"));
                es.setCorreo(rs.getString("Correo"));
                es.setContraseña(rs.getString("Contraseña"));
            }
        } catch (Exception e) {
            System.out.println("Error listarIdEmpleadoDAO "+e);
        }
        return es;
    }
    
    public int modificar(Estudiante es){
        String sql = "UPDATE estudiantes set Nombre=?, Telefono=?, Correo=?, Contraseña=? where Correo=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            //ps.setInt(1, es.getId());
            ps.setString(1, es.getNombre());
            ps.setString(2, es.getTelefono());
            ps.setString(3, es.getCorreo());
            ps.setString(4, es.getContraseña());
            ps.setString(5, es.getCorreo());
            r=ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error registrarestudianteDao "+e);
        }
        return r;
    }
    public void eliminar(int id){
        String sql="Delete from estudiantes where Id="+id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        
    }
            
}
