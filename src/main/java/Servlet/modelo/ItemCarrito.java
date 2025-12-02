package Servlet.modelo;

public class ItemCarrito {
    private Producto producto;
    private int cantidad;

    public ItemCarrito(Producto producto, int cantidad) {
        this.producto = producto;
        this.cantidad = cantidad > 0 ? cantidad : 1; // mínimo 1
    }

    public Producto getProducto() { return producto; }
    public int getCantidad() { return cantidad; }

    public void setCantidad(int cantidad) {
        if (cantidad > 0) {
            this.cantidad = cantidad;
        }
    }

    public void incrementarCantidad(int extra) {
        if (extra > 0) {
            this.cantidad += extra;
        }
    }

    public void disminuirCantidad(int menos) {
        if (menos > 0 && this.cantidad - menos >= 0) {
            this.cantidad -= menos;
        }
    }

    public double getSubtotal() {
        return producto.getPrecioSalida() * cantidad;
    }

    @Override
    public String toString() {
        return "ItemCarrito{" +
               "producto=" + producto.getNombre() +
               ", cantidad=" + cantidad +
               ", subtotal=" + getSubtotal() +
               '}';
    }
}
