package Servlet.modelo;

/**
 * Clase que representa un Usuario dentro del sistema.
 * Contiene atributos básicos para registro y autenticación.
 */
public class Usuario {
    private int id;
    private String nombre;
    private String telefono;
    private String correo;
    private String password;

    // Constructor vacío
    public Usuario() {}

    // Constructor con parámetros (el que usa tu DAO)
    public Usuario(String nombre, String telefono, String correo, String password) {
        this.nombre = nombre;
        this.telefono = telefono;
        this.correo = correo;
        this.password = password;
    }

    // Getters y Setters con estándares camelCase
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getNombre() { return nombre; }
    public void setNombre(String nombre) { this.nombre = nombre; }

    public String getTelefono() { return telefono; }
    public void setTelefono(String telefono) { this.telefono = telefono; }

    public String getCorreo() { return correo; }
    public void setCorreo(String correo) { this.correo = correo; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
}
