/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

public class Estudiante {
    int Id;
    String Nombre;
    String Telefono;
    String Correo;
    String Contraseña;

    public String toString() {
        return "Estudiante{" +
                "id=" + Id +
                ", nombre='" + Nombre + '\'' +
                ", telefono='" + Telefono + '\'' +
                ", correo='" + Correo + '\'' +
                ", contraseña='" + Contraseña + '\'' +
                '}';
    }
    public Estudiante() {
    }

    public Estudiante(int Id, String Nombre, String Telefono, String Correo, String Contraseña) {
        this.Id = Id;
        this.Nombre = Nombre;
        this.Telefono = Telefono;
        this.Correo = Correo;
        this.Contraseña = Contraseña;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public String getContraseña() {
        return Contraseña;
    }

    public void setContraseña(String Contraseña) {
        this.Contraseña = Contraseña;
    }  
}
