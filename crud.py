from conexion import conectar

def insertar_clientes(codigo, nombres, Tipo_de_cliente, domicilio, telefono, correo_electronico):
    conexion = conectar()
    cursor = conexion.cursor()
    sql = "INSERT INTO clientes (codigo, nombres, Tipo_de_cliente, domicilio, telefono, correo_electronico) VALUES (%s, %s, %s, %s, %s, %s)"
    cursor.execute(sql, (codigo, nombres, Tipo_de_cliente, domicilio, telefono, correo_electronico))
    conexion.commit()
    conexion.close()

def consultar_clientes():
    conexion = conectar()
    cursor = conexion.cursor()
    cursor.execute("SELECT * FROM clientes")
    resultados = cursor.fetchall()
    for fila in resultados:
        print(fila)
    conexion.close()

def actualizar_clientes(codigo, nuevo_correo_electronico):
    conexion = conectar()
    cursor = conexion.cursor()
    sql = "UPDATE clientes SET correo_electronico = %s WHERE codigo = %s"
    cursor.execute(sql, (nuevo_correo_electronico, codigo))
    conexion.commit()
    conexion.close()

def eliminar_clientes(codigo):
    conexion = conectar()
    cursor = conexion.cursor()
    sql = "DELETE FROM clientes WHERE codigo = %s"
    cursor.execute(sql, (codigo,))
    conexion.commit()
    conexion.close()