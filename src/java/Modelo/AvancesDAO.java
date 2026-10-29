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

public class AvancesDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    //----------------OPERACIONES CRUD-----------------
    
    
    public List listar(){
        String sql = "select * from seguimiento";
        List<Avances>lista = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Avances av = new Avances();
                av.setId(rs.getInt(1));
                av.setModulo(rs.getString(2));
                av.setPorcentaje(rs.getString(3));
                lista.add(av);
            }
        } catch (Exception e) {
            System.out.println("Error listarAvancesDAO: " + e.getMessage());
            e.printStackTrace();
        }
        return lista;
    }
    
    public int agregar(Avances av){
        String sql = "insert into seguimiento(modulo, porcentaje) values(?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, av.getModulo());
            ps.setString(2, av.getPorcentaje());
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error agregar AvancesDAO "+e);
        }
        return r;
    }
    
    public Avances listarId(int id){
        Avances av = new Avances();
        String sql = "select * from seguimiento where id="+id;
        try {
            con =cn.Conexion(); 
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                av.setModulo(rs.getString(2));
                av.setPorcentaje(rs.getString(3));
            }
        } catch (Exception e) {
            System.out.println("Error listarIdAvancesDAO "+e);
        }
        return av;
    }
    
    public int actualizar(Avances av){
        String sql = "update seguimiento set modulo=?, porcentaje=? where id=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, av.getModulo());
            ps.setString(2, av.getPorcentaje());
            ps.setInt(3, av.getId());
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error actualizar AvancesDAO "+e);
        }
        return r;
    }
    
    public void delete(int id){
        String sql = "delete from seguimiento where id="+id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error delete AvancesDAO "+e);
        }
    }
}
