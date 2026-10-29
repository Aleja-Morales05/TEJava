/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author jeale
 */
public class Respuestas {
    int Id;
    int nro_pregunta;
    String Respuesta;

    public Respuestas() {
    }

    public Respuestas(int nro_pregunta, String Respuesta) {
        this.nro_pregunta = nro_pregunta;
        this.Respuesta = Respuesta;
    }

    public int getNro_pregunta() {
        return nro_pregunta;
    }

    public void setNro_pregunta(int nro_pregunta) {
        this.nro_pregunta = nro_pregunta;
    }

    public String getRespuesta() {
        return Respuesta;
    }

    public void setRespuesta(String Respuesta) {
        this.Respuesta = Respuesta;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }
    
}
