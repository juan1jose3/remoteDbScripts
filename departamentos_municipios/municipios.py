import mysql.connector

config = {
    "user":"root",
    "password":"root",
    "host":"127.0.0.1",
    "port":"5050",
    "database":"departamentos",
    'raise_on_warnings': True,
    "use_unicode": True
}

conn = mysql.connector.connect(**config)

cursor = conn.cursor(dictionary=True)



query = "SELECT nombre_departamento,COUNT(*) as total FROM municipios GROUP BY nombre_departamento"

cursor.execute(query)

departamentos = cursor.fetchall()

for departamento in departamentos:
    print(f"{departamento["nombre_departamento"]} {departamento["total"]}")

conn.close()
