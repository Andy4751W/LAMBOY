package com.sena.app;

public class Cliente {
    private int codigo;
    private String nombre;
    private String tipoDeCliente;
    private String domicilio;
    private String telefono;
    private String correoElectronico;

    public Cliente() {}

    public Cliente(String nombre, String tipoDeCliente, String domicilio, String telefono, String correoElectronico) {
        this.nombre = nombre;
        this.tipoDeCliente = tipoDeCliente;
        this.domicilio = domicilio;
        this.telefono = telefono;
        this.correoElectronico = correoElectronico;
    }

    // Getters y setters
    public int getCodigo() { return codigo; }
    public void setCodigo(int codigo) { this.codigo = codigo; }

    public String getNombre() { return nombre; }
    public void setNombre(String nombre) { this.nombre = nombre; }

    public String getTipoDeCliente() { return tipoDeCliente; }
    public void setTipoDeCliente(String tipoDeCliente) { this.tipoDeCliente = tipoDeCliente; }

    public String getDomicilio() { return domicilio; }
    public void setDomicilio(String domicilio) { this.domicilio = domicilio; }

    public String getTelefono() { return telefono; }
    public void setTelefono(String telefono) { this.telefono = telefono; }

    public String getCorreoElectronico() { return correoElectronico; }
    public void setCorreoElectronico(String correoElectronico) { this.correoElectronico = correoElectronico; }
}
