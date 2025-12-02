package Servlet.dao;

import Servlet.modelo.Producto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductoDAO {

    // Obtener un producto por su código
    public Producto obtenerPorId(int id) {
        Producto producto = null;
        String sql = "SELECT codigo, categoria_codigo, proveedores_codigo, nombre, descripcion, stock, " +
                     "precio_de_entrada, precio_de_salida FROM productos WHERE codigo = ?";

        try (Connection conn = ConexionBD.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                producto = new Producto(
                    rs.getInt("codigo"),
                    rs.getInt("categoria_codigo"),
                    rs.getInt("proveedores_codigo"),
                    rs.getString("nombre"),
                    rs.getString("descripcion"),
                    rs.getInt("stock"),
                    rs.getDouble("precio_de_entrada"),
                    rs.getDouble("precio_de_salida")
                );
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return producto;
    }

    // Listar todos los productos
    public List<Producto> listarTodos() {
        List<Producto> lista = new ArrayList<>();
        String sql = "SELECT codigo, categoria_codigo, proveedores_codigo, nombre, descripcion, stock, " +
                     "precio_de_entrada, precio_de_salida FROM productos";

        try (Connection conn = ConexionBD.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Producto producto = new Producto(
                    rs.getInt("codigo"),
                    rs.getInt("categoria_codigo"),
                    rs.getInt("proveedores_codigo"),
                    rs.getString("nombre"),
                    rs.getString("descripcion"),
                    rs.getInt("stock"),
                    rs.getDouble("precio_de_entrada"),
                    rs.getDouble("precio_de_salida")
                );
                lista.add(producto);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }
}
