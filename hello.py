#Para activar el ambinte usamos: > .venv\Scripts\activate
#Para arrancar el proyecto se usa: flask --app hello run --debug

from flask import Flask, render_template, request
import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="pos"
)

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'
    #return render_template("index.html")

@app.route('/menu', methods=['POST'])
def menu():
    return render_template("menu.html")

@app.route('/clientes', methods=['GET'])
def clientes():
    mycursor = mydb.cursor()
    # Obtener datos de la base de datos
    mycursor.execute('SELECT * FROM clientes')
    rows = mycursor.fetchall()
    print(rows)
    # Cerrar la conexión
    mycursor.close()
    print("Todo bien")
    return render_template("catalogoClientes.html", rows=rows)

@app.route('/catalogoProductos', methods=['POST', 'GET'])
def catalogoProductos():
       # Conexión a la base de datos
    mycursor = mydb.cursor()
    # Obtener datos de la base de datos
    mycursor.execute('SELECT * FROM Productos')
    productos = mycursor.fetchall()
    print(productos)
    # Cerrar la conexión
    mycursor.close()
    print("Todo bien")
    return render_template("catalogoProductos.html", productos=productos)

@app.route('/usuarios', methods=['POST', 'GET'])
def usuarios():
    mycursor = mydb.cursor()
    # Obtener datos de la base de datos
    mycursor.execute('SELECT * FROM usuarios')
    rows = mycursor.fetchall()
    print(rows)
    # Cerrar la conexión
    mycursor.close()
    print("Todo bien")
    return render_template("catalogoUsuarios.html", rows=rows)

if __name__ == "__main__":
    app.run()