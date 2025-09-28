from conexion import conectar

conexion = conectar()
if conexion:
    cursor = conexion.cursor()
    cursor.execute("SELECT DATABASE();")
    resultado = cursor.fetchone()
    print("Base de datos actual:", resultado)
    conexion.close()