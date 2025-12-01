package Servlet.modelo;

public class Cliente {
    private int codigo;              // Codigo
    private String nombre;           // Nombres
    private String tipoCliente;      // Tipo_de_cliente
    private String direccion;        // Domicilio
    private String telefono;         // Telefono
    private String correo;           // Correo_Electronico
    private String password;

public String getPassword() { return password; }
public void setPassword(String password) { this.password = password; }

    // Getters y Setters
    public int getCodigo() { return codigo; }
    public void setCodigo(int codigo) { this.codigo = codigo; }

    public String getNombre() { return nombre; }
    public void setNombre(String nombre) { this.nombre = nombre; }

    public String getTipoCliente() { return tipoCliente; }
    public void setTipoCliente(String tipoCliente) { this.tipoCliente = tipoCliente; }

    public String getDireccion() { return direccion; }
    public void setDireccion(String direccion) { this.direccion = direccion; }

    public String getTelefono() { return telefono; }
    public void setTelefono(String telefono) { this.telefono = telefono; }

    public String getCorreo() { return correo; }
    public void setCorreo(String correo) { this.correo = correo; }
}
