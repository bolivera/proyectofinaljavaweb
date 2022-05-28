package Beans;


public class MProductos {

    private int id;
    private String titulo,
            descripcion,
            tallas,
            imagenes,
            categoria;
    private double precio;
    public MProductos(
            int id,
            String titulo,
            String categoria,
            double precio,
            String descripcion,
            String tallas,
            String imagenes
    ) {
        this.id = id;
        this.titulo = titulo;
        this.categoria = categoria;
        this.precio = precio;
        this.descripcion = descripcion;
        this.tallas = tallas;
        this.imagenes = imagenes;
    }

    public int getID() {
        return id;
    }

    public void setID(int value) {
        this.id = value;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String value) {
        this.titulo = value;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getTallas() {
        return tallas;
    }

    public void setTallas(String tallas) {
        this.tallas = tallas;
    }

    public String getImagenes() {
        return imagenes;
    }

    public void setImagenes(String imagenes) {
        this.imagenes = imagenes;
    }
    
    
    
    

}
