package Modelo;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EnlacesDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    public List<Enlaces> filtrar(String tipo) {
    String sql = "select * from enlaces WHERE tipo = ?";
    List<Enlaces> lista = new ArrayList<>();
    try {
        con = cn.Conexion();
        ps = con.prepareStatement(sql);
        ps.setString(1, tipo);
        rs = ps.executeQuery();
        while (rs.next()) {
            Enlaces en = new Enlaces();
            en.setId(rs.getInt(1));
            en.setTitulo(rs.getString(2));
            en.setTipo(rs.getString(3));
            en.setLink(rs.getString(4));
            en.setUso(rs.getString(5));
            lista.add(en);
        }
    } catch (Exception e) {
        System.out.println("Error filtrarEnlacesDAO: " + e.getMessage());
        e.printStackTrace();
    }
    return lista;
    }
    
    //----------------OPERACIONES CRUD-----------------
    
    
    public List listar(){
        String sql = "select * from enlaces";
        List<Enlaces>lista = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Enlaces en = new Enlaces();
                en.setId(rs.getInt(1));
                en.setTitulo(rs.getString(2));
                en.setTipo(rs.getString(3));
                en.setLink(rs.getString(4));
                en.setUso(rs.getString(5));
                lista.add(en);
            }
        } catch (Exception e) {
            System.out.println("Error listarEnlacesDAO: " + e.getMessage());
            e.printStackTrace();
        }
        return lista;
    }
    
    public int agregar(Enlaces en){
        String sql = "insert into enlaces(titulo, tipo, link, uso)values(?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, en.getTitulo());
            ps.setString(2, en.getTipo());
            ps.setString(3, en.getLink());
            ps.setString(4, en.getUso());
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error agregar EnlacesDAO "+e);
        }
        return r;
    }
    
    public Enlaces listarId(int id){
        Enlaces en = new Enlaces();
        String sql = "select * from enlaces where id="+id;
        try {
            con =cn.Conexion(); 
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                en.setTitulo(rs.getString(2));
                en.setTipo(rs.getString(3));
                en.setLink(rs.getString(4));
                en.setUso(rs.getString(5));
            }
        } catch (Exception e) {
            System.out.println("Error listarIdEnlacesDAO "+e);
        }
        return en;
    }
    
    public int actualizar(Enlaces cl){
        String sql = "update enlaces set titulo=?, tipo=?, link=?, uso=? where id=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, cl.getTitulo());
            ps.setString(2, cl.getTipo());
            ps.setString(3, cl.getLink());
            ps.setString(4, cl.getUso());
            ps.setInt(5, cl.getId());
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error actualizar EnlacesDAO "+e);
        }
        return r;
    }
    
    public void delete(int id){
        String sql = "delete from enlaces where id="+id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error delete EnlacesDAO "+e);
        }
    }
}
