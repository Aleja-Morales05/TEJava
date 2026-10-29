package Modelo;

public class Enlaces {
    int id;
    String titulo;
    String tipo;
    String link;
    String uso;
    
    public Enlaces() {
    }
    
    public Enlaces(int id, String titulo, String tipo, String link,String uso){
        this.id = id;
        this.titulo = titulo;
        this.tipo = tipo;
        this.link = link;
        this.uso = uso;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getUso() {
        return uso;
    }

    public void setUso(String uso) {
        this.uso = uso;
    }
}
