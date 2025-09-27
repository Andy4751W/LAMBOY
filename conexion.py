import mysql.connector

def conectar():
    try:
        conexion = mysql.connector.connect(
            host="localhost",
            user="root",
            password="Fresitas.1",            database="proyecto_de_formacion"
        )
        print("Conexión exitosa")
        return conexion
    except mysql.connector.Error as error:
        print(f"Error al conectar: {error}")
        return None