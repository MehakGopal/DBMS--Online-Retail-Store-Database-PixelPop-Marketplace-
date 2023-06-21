import mysql.connector

# Create a connection object
cnx0 = mysql.connector.connect(
    host="localhost",
    user="root",
    password="milo",
    database="sql_Inventory"
)

cnx1 = mysql.connector.connect(
    host="localhost",
    user="root",
    password="milo",
    database="sql_users"
)
cnx2 = mysql.connector.connect(
    host="localhost",
    user="root",
    password="milo",
    database="sql_RetailStore"
)

cnx3 = mysql.connector.connect(
    host="localhost",
    user="root",
    password="milo",
    database="delivery_assignment"
)
# Create a cursor object
cursor0 = cnx0.cursor()
cursor1 = cnx1.cursor()
cursor2 = cnx2.cursor()
cursor3 = cnx3.cursor()

# Execute a SQL query
cursor0.execute('''select *
from sql_Inventory.Product
where Price>1000 and 
Price in( select Price from sql_Inventory.Product where Product_Name like "%fillet%");''')



# Fetch the results
results0 = cursor0.fetchall()


#
for row in results0:
    print(row)

cursor0.close()

cnx0.close()

