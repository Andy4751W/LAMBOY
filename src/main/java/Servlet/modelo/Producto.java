package Servlet.modelo;

public class Producto {
    private int codigo;
    private int categoriaCodigo;
    private int proveedorCodigo;
    private String nombre;
    private String descripcion;
    private int stock;
    private double precioEntrada;
    private double precioSalida;

    // Constructor vacío (útil para frameworks y DAOs)
    public Producto() {}

    // Constructor completo
    public Producto(int codigo, int categoriaCodigo, int proveedorCodigo,
                    String nombre, String descripcion, int stock,
                    double precioEntrada, double precioSalida) {
        this.codigo = codigo;
        this.categoriaCodigo = categoriaCodigo;
        this.proveedorCodigo = proveedorCodigo;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.stock = stock;
        this.precioEntrada = precioEntrada;
        this.precioSalida = precioSalida;
    }

    // Getters y Setters
    public int getCodigo() { return codigo; }
    public void setCodigo(int codigo) { this.codigo = codigo; }

    public int getCategoriaCodigo() { return categoriaCodigo; }
    public void setCategoriaCodigo(int categoriaCodigo) { this.categoriaCodigo = categoriaCodigo; }

    public int getProveedorCodigo() { return proveedorCodigo; }
    public void setProveedorCodigo(int proveedorCodigo) { this.proveedorCodigo = proveedorCodigo; }

    public String getNombre() { return nombre; }
    public void setNombre(String nombre) { this.nombre = nombre; }

    public String getDescripcion() { return descripcion; }
    public void setDescripcion(String descripcion) { this.descripcion = descripcion; }

    public int getStock() { return stock; }
    public void setStock(int stock) { this.stock = stock; }

    public double getPrecioEntrada() { return precioEntrada; }
    public void setPrecioEntrada(double precioEntrada) { this.precioEntrada = precioEntrada; }

    public double getPrecioSalida() { return precioSalida; }
    public void setPrecioSalida(double precioSalida) { this.precioSalida = precioSalida; }

    @Override
    public String toString() {
        return "Producto{" +
               "codigo=" + codigo +
               ", categoriaCodigo=" + categoriaCodigo +
               ", proveedorCodigo=" + proveedorCodigo +
               ", nombre='" + nombre + '\'' +
               ", descripcion='" + descripcion + '\'' +
               ", stock=" + stock +
               ", precioEntrada=" + precioEntrada +
               ", precioSalida=" + precioSalida +
               '}';
    }
}
