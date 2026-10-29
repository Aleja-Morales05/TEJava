/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author jeale
 */
public class Validacion {
    int nro_pregunta;
    String Pregunta;

    public String toString() {
        return "Validacion{" +
                "nro_pregunta=" + nro_pregunta +
                ", pregunta='" + Pregunta + '\'' +
                '}';
    }
    public Validacion() {
    }

    public Validacion(int nro_pregunta, String Pregunta, String Respuesta) {
        this.nro_pregunta = nro_pregunta;
        this.Pregunta = Pregunta;
    }

    public int getNro_pregunta() {
        return nro_pregunta;
    }

    public void setNro_pregunta(int nro_pregunta) {
        this.nro_pregunta = nro_pregunta;
    }

    public String getPregunta() {
        return Pregunta;
    }

    public void setPregunta(String Pregunta) {
        this.Pregunta = Pregunta;
    }


    
    
}
