/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author jeale
 */
public class Administrador {
    int IdAd;
    String NombreAd;
    String TelefonoAd;
    String CorreoAd;
    String ContraseñaAd;

    public Administrador() {
    }

    public Administrador(int IdAd, String NombreAd, String TelefonoAd, String CorreoAd, String ContraseñaAd) {
        this.IdAd = IdAd;
        this.NombreAd = NombreAd;
        this.TelefonoAd = TelefonoAd;
        this.CorreoAd = CorreoAd;
        this.ContraseñaAd = ContraseñaAd;
    }

    public int getIdAd() {
        return IdAd;
    }

    public void setIdAd(int idAd) {
        this.IdAd = idAd;
    }

    public String getNombreAd() {
        return NombreAd;
    }

    public void setNombreAd(String NombreAd) {
        this.NombreAd = NombreAd;
    }

    public String getTelefonoAd() {
        return TelefonoAd;
    }

    public void setTelefonoAd(String TelefonoAd) {
        this.TelefonoAd = TelefonoAd;
    }

    public String getCorreoAd() {
        return CorreoAd;
    }

    public void setCorreoAd(String CorreoAd) {
        this.CorreoAd = CorreoAd;
    }

    public String getContraseñaAd() {
        return ContraseñaAd;
    }

    public void setContraseñaAd(String ContraseñaAd) {
        this.ContraseñaAd = ContraseñaAd;
    }
    
    
    
}
