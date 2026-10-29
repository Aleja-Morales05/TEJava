/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Config;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

public class Conexion {
    Connection con;
    String url = "jdbc:mysql://localhost:3307/tutorial";
    String user = "root";
    String pass= "";
    
    public Connection Conexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(url,user,pass);
            if(con!=null){
                //JOptionPane.showMessageDialog(null, "Base de datos conecta correctamente");
                System.out.println("Base de datos conectada ");
            }
        }catch (Exception e){
            JOptionPane.showMessageDialog(null, "Error "+e.toString());
            System.out.println("Error conexion "+e);
        }
        return con;
    }
}
