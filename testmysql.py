import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="pos"
)

mycursor = mydb.cursor()

mycursor.execute("SELECT * FROM Productos")

myresult = mycursor.fetchall()

for x in myresult:
  print(x)