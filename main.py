from crud import  insertar_clientes, consultar_clientes, actualizar_clientes,eliminar_clientes
# Insertar un cliente
insertar_clientes(7, "Jhonny", "Cliente VIP", "Tv 74a #87-64", "3112110011", "jhonny@example.com")

# Consultar
consultar_clientes()

# Actualizar
actualizar_clientes(7, "nuevo_correo@example.com")


# Eliminar
eliminar_clientes(7)
