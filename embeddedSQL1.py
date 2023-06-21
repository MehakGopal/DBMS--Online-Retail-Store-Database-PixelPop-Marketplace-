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
where Category_ID = 15
having price>5000
union 
select *
from sql_Inventory.Product
where Category_ID = 20
having quantity>5;''')



# Fetch the results
results0 = cursor0.fetchall()

#
for row in results0:
    print(row)
cursor0.close()
cnx0.close()
