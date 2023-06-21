from flask import Flask, render_template, request, redirect, url_for, flash
# from flask_caching import Cache

import mysql.connector
from datetime import datetime
import random
from datetime import date, timedelta

app = Flask(__name__,template_folder='template')

# Connect to your MySQL database
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Khushii@19",
    database="sql_users"
)

mydb1 = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Khushii@19",
    database="sql_inventory"
)

mydb2 = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Khushii@19",
    database="sql_retailstore"
)




@app.route('/')
def index():
    # Display the name of the retail store and a login button
    return render_template('index2.html')

@app.route('/register',methods = ['GET','POST'])
def register():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        user_type = request.form['type']
        #depending on type, go to specific page and store to insert
        if 'next' in request.form:
            if user_type == 'customer':            
                return redirect('/customer_sign/' + username + '/' + password)
            if user_type == 'supplier':
                return redirect('/supplier_sign/' + username+'/'+password)
            if user_type == 'delivery':
                return redirect('/delivery_sign/' + username+'/'+password)            
    return render_template('register.html')


@app.route('/customer_sign/<username>/<password>',methods = ['GET','POST'])
def cust_signup(username,password):
    if request.method == 'POST':
        name = request.form['name']
        dob = request.form['dob']
        email = request.form['email']
        number = request.form['contact']
        address = request.form['address']
        pincode = int(request.form['pincode'])        
        # Validate and format date of birth (dob)
        try:
            dob = datetime.strptime(dob, '%Y-%m-%d').strftime('%Y-%m-%d')
        except ValueError:
            return "Invalid date format for Date of Birth (DOB). Please use yyyy-mm-dd format."
        
        cursor = mydb.cursor()
        query = "insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values (%s,%s,%s,%s,%s,%s,%s)"
        query2 = "insert into USER (user_id, password, type) values (%s, %s, 'Customer');"
        query3 = "insert into sql_retailstore.add_to_cart (customer_id) values (%s);"
        values1 = (f'{username}',f'{name}',dob,f'{email}',f'{number}',f'{address}',pincode)  # Use formatted dob
        values2 = (f'{username}',f'{password}')
        values3 = (f'{username}',)
        try:
            cursor.execute(query, values1)
            cursor.execute(query2,values2)
            cursor.execute(query3,values3)
            mydb.commit()
            return redirect('/login')
            # return render_template('customerSign.html',msg = "success")
        except mysql.connector.Error as e:
            return render_template('customerSign.html',msg = str(e))
    return render_template('customerSign.html')  

@app.route('/supplier_sign/<username>/<password>',methods = ['GET','POST'])
def supp_signup(username,password):
    if request.method == 'POST':
        name = request.form['name']
        type = request.form['prod_type']
        method = request.form['method']
        email = request.form['email']
        number = request.form['contact']
        address = request.form['address']
        pincode = (request.form['pincode'])        
        cursor = mydb.cursor()
        query = "insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values (%s,%s,%s,%s,%s,%s,%s,%s)"
        query2 = "insert into USER (user_id, password, type) values (%s, %s, 'Supplier');"
        values1 = (f'{username}',f'{type}',f'{name}',f'{email}',f'{number}',f'{method}',f'{address}',f'{pincode}')  # Use formatted dob
        values2 = (f'{username}',f'{password}')
        try:
            cursor.execute(query, values1)
            cursor.execute(query2,values2)
            mydb.commit()
            return redirect('/login')
            # return render_template('customerSign.html',msg = "success")
        except mysql.connector.Error as e:
            return render_template('customerSign.html',msg = str(e))
    return render_template('SupplieSign.html')


@app.route('/delivery_sign/<username>/<password>',methods = ['GET','POST'])
def del_signup(username,password):
    if request.method == 'POST':
        name = request.form['name']
        dob = request.form['dob']
        email = request.form['email']
        number = request.form['contact']
        gender = request.form['gender']      
        # Validate and format date of birth (dob)
        try:
            dob = datetime.strptime(dob, '%Y-%m-%d').strftime('%Y-%m-%d')
        except ValueError:
            return "Invalid date format for Date of Birth (DOB). Please use yyyy-mm-dd format."
        
        cursor = mydb.cursor()
        query = "insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values (%s,%s,%s,%s,%s,%s,0,10000)"
        query2 = "insert into USER (user_id, password, type) values (%s, %s, 'Delivery');"
        values1 = (f'{username}',f'{name}',dob,f'{email}',f'{gender}',f'{number}')  # Use formatted dob
        values2 = (f'{username}',f'{password}')
        try:
            cursor.execute(query, values1)
            cursor.execute(query2,values2)
            mydb.commit()
            return redirect('/login')
            # return render_template('customerSign.html',msg = "success")
        except mysql.connector.Error as e:
            return render_template('customerSign.html',msg = str(e))
    return render_template('DeliverySign.html')

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        if 'register' in request.form:
            return redirect('/register')
        # Retrieve the username, password, and type entered by the user
        username = request.form['username']
        password = request.form['password']
        user_type = request.form['type']
        # Check the user's credentials against the database
        cursor = mydb.cursor()
        if user_type == 'admin':
            query = "SELECT * FROM admin WHERE user_id = %s AND password = %s"
            values = (username, password)
            cursor.execute(query, values)
            admin = cursor.fetchone()
            # print(admin)
            if admin:
                # Admin has successfully logged in                
                return redirect('/admin')
            else:
                # Incorrect username or password
                return render_template('login.html', error='Invalid credentials')
        else:
            query = "SELECT * FROM user WHERE user_id = %s AND password = %s AND type = %s"
            values = (username, password, user_type)
            cursor.execute(query, values)
            user = cursor.fetchone()
            if user:
                # User has successfully logged in
                # Check the type of user and redirect to the appropriate page
                if user_type == 'customer':
                    return redirect('/customer/'+ username)
                elif user_type == 'supplier':
                    return redirect('/supplier/'+ username)
                elif user_type == 'delivery':
                    return redirect('/delivery/'+username)
            else:
                # Incorrect username, password, or user type
                return render_template('login - Copy.html', error='Invalid credentials')
    else:
        # Display the login form
        return render_template('login - Copy.html')


@app.route('/admin', methods=['GET', 'POST'])
def admin():
    # Display the admin page
    cursor = mydb1.cursor()    
    if request.method == 'POST':
        if 'int' in request.form:
            return redirect('/inventory')        
        if 'cust' in request.form:
            return redirect('/customer_adm')
        if 'supp' in request.form:
            return redirect('/supplier_adm')
        if 'del' in request.form:
            return redirect('/delivery_adm')
        if 'back' in request.form:
            return redirect('/login')
    return render_template('admin.html')


@app.route('/customer_adm',methods=['GET','POST'])
#customer page on the admin log in
def customer_adm():
    cursor = mydb.cursor()
    query = "select customer_id, customer_name,customer_email from customer"
    if  request.method == 'POST':
        if 'netRevenue' in request.form:
            return redirect('/netrevenue')        
        if 'profit' in request.form:
            return redirect('/profitt')        
        if 'back' in request.form:
            return redirect('/admin')
        if 'search_button' in request.form:
            search_result = request.form['search']
            query = "SELECT customer_id, customer_name,customer_email FROM customer WHERE customer_name LIKE %s"
            values = (f'%{search_result}%',)
            cursor.execute(query, values)
            final = cursor.fetchall()
            # print(final)
            return render_template('customer_admin.html', cursor=final)
        if 'clearFilters' in request.form:
            cursor.execute(query)
            return render_template('customer_admin.html', cursor=cursor)
    else:              
        cursor.execute(query)
        return render_template('customer_admin.html',cursor = cursor)
    

@app.route('/supplier_adm',methods=['GET','POST'])
#customer page on the admin log in
def supplier_adm():
    cursor = mydb.cursor()
    query = "select supplier_id, supplier_name, contact_number, Product_type from Supplier"
    if  request.method == 'POST':       
        if 'back' in request.form:
            return redirect('/admin')
        if 'search_button' in request.form:
            search_result = request.form['search']
            query = "select supplier_id, supplier_name, contact_number, Product_type from Supplier WHERE supplier_name LIKE %s"
            values = (f'%{search_result}%',)
            cursor.execute(query, values)
            final = cursor.fetchall()
            # print(final)
            return render_template('supplier_Admin.html', cursor=final)
        if 'clearFilters' in request.form:
            cursor.execute(query)
            return render_template('supplier_Admin.html', cursor=cursor)
    else:              
        cursor.execute(query)
        return render_template('supplier_Admin.html',cursor = cursor)
 
@app.route('/delivery_adm',methods=['GET','POST'])   
def delivery_adm():
    cursor = mydb.cursor()
    query = "select agent_id, agent_name,agent_contact_number, no_of_trips, Salary from Delivery_Executive"
    if  request.method == 'POST':       
        if 'back' in request.form:
            return redirect('/admin')
        if 'search_button' in request.form:
            search_result = request.form['search']
            query = "select agent_id, agent_name,agent_contact_number, no_of_trips, Salary from Delivery_Executive WHERE agent_name LIKE %s"
            values = (f'%{search_result}%',)
            cursor.execute(query, values)
            final = cursor.fetchall()
            # print(final)
            return render_template('delivery_admin.html', cursor=final)
        if 'clearFilters' in request.form:
            cursor.execute(query)
            return render_template('delivery_admin.html', cursor=cursor)
        if 'update_salaries' in request.form:
            try:
                cursor.execute("BEGIN")
                cursor.execute("""

update sql_users.delivery_executive 
set salary=salary+1.1*salary 
where no_of_trips>=150;
                """)
                cursor.execute("COMMIT")
                mydb.commit()
            except Exception as e:
                print(f"Error updating salaries: {e}")
            cursor.execute(query) # execute the initial query again to get the updated salaries
            final = cursor.fetchall()
            return render_template('delivery_admin.html', cursor=final)
    else:              
        cursor.execute(query)
        return render_template('delivery_admin.html',cursor = cursor)


@app.route('/profitt', methods=['GET', 'POST'])
#Profit earned from orders and total revenue 
def profitt():
    cursor = mydb.cursor()
    query = '''
SELECT ct.Cart_ID, 
       SUM(ct.total_cost) AS Total_Revenue, 
       SUM(ct.total_cost - bd.total_discount - (ct.total_cost * 0.2)) AS Total_Profit 
FROM sql_RetailStore.add_to_cart at 
JOIN sql_RetailStore.cart_Details ct ON at.Cart_ID = ct.Cart_ID 
JOIN sql_RetailStore.bill_details bd ON ct.Cart_ID = bd.BILL_ID
GROUP BY ct.Cart_ID;'''
    if 'goback' in request.form:
        return redirect('/customer_adm')
    cursor.execute(query)
    return render_template('profit.html',cursor=cursor)

@app.route('/netrevenue', methods=['GET', 'POST'])
#Revenue earned by each customer
def netrevenue():
    cursor = mydb2.cursor()
    query = '''SELECT add_to_cart.customer_id, SUM(bill_details.total_cost) as total_revenue
FROM sql_RetailStore.add_to_cart
INNER JOIN sql_RetailStore.cart_Details ON sql_RetailStore.add_to_cart.Cart_ID = sql_RetailStore.cart_Details.Cart_ID
INNER JOIN sql_RetailStore.bill_details ON sql_RetailStore.cart_Details.Cart_ID = sql_RetailStore.bill_details.BILL_ID
INNER JOIN sql_RetailStore.placing_order ON sql_RetailStore.bill_details.BILL_ID = sql_RetailStore.placing_order.BILL_ID AND sql_RetailStore.cart_Details.Cart_ID = sql_RetailStore.placing_order.Cart_ID
INNER JOIN sql_RetailStore.pays ON sql_RetailStore.bill_details.BILL_ID = sql_RetailStore.pays.BILL_ID
INNER JOIN sql_RetailStore.success_payment ON sql_RetailStore.pays.Payment_ID = sql_RetailStore.success_payment.Payment_ID AND sql_RetailStore.bill_details.BILL_ID = sql_RetailStore.success_payment.BILL_ID
GROUP BY add_to_cart.customer_id;'''
    if 'goback' in request.form:
        return redirect('/customer_adm')
    cursor.execute(query)
    return render_template('netrevenue.html',cursor=cursor)


@app.route('/inventory', methods=['GET', 'POST'])
#inventory on admin page category and back only works
def inventory():
    if request.method == 'POST':
        if 'category' in request.form:
            return redirect('/category')
        if 'back' in request.form:
            return redirect('/admin')
        if 'products' in request.form:
            return redirect('/product_adm')
    else:
        return render_template('inventory.html')

@app.route('/product_adm',methods = ['GET','POST'])
def product():
    cursor = mydb1.cursor()
    query = "SELECT Product_id,Category_ID, Product_Name, Product_Description, Price,Quantity FROM product"
    if request.method == 'POST':
        if 'filter' in request.form:
            category_id = request.form['product']
            # price = request.form['price']
            query = "SELECT Product_id,Category_ID, Product_Name, Product_Description, Price,Quantity FROM product where Product_ID = %s"
            values = (category_id,)
            cursor.execute(query,values)
            return render_template('products2.html', cursor=cursor)
        if 'search_button' in request.form:
            search_result = request.form['search']
            query = "SELECT Product_id,Category_ID, Product_Name, Product_Description, Price,Quantity FROM product WHERE Product_Name LIKE %s"
            values = (f'%{search_result}%',)
            cursor.execute(query, values)
            final = cursor.fetchall()
            # print(final)
            return render_template('products2.html', cursor=final)
        if 'clearFilters' in request.form:
            cursor.execute(query)
            return render_template('products2.html', cursor=cursor)
        if 'back' in request.form:
            return redirect('/inventory')
    else:
        cursor.execute(query)
        return render_template('products2.html', cursor=cursor)
    
@app.route('/category',methods=['GET','POST'])
#category manage in inventory
def category():
    cursor = mydb1.cursor()
    query = "select * from Category"
    if request.method == 'POST':
        if 'go_back' in request.form:
            return redirect('/inventory')
        if 'earning' in request.form:
            return redirect('/earning')
    else:        
        cursor.execute(query)
        return render_template('category_admin.html',cursor = cursor)
    
@app.route('/earning', methods =['GET','POST'])
#earnings fromc ategory
def earning():
    cursor = mydb1.cursor()
    query = '''SELECT sql_Inventory.Category.Category_Name, SUM(sql_RetailStore.bill_details.total_cost) AS total_revenue
FROM sql_RetailStore.placing_order
INNER JOIN sql_RetailStore.bill_details ON sql_RetailStore.placing_order.BILL_ID = sql_RetailStore.bill_details.BILL_ID
INNER JOIN sql_RetailStore.pays ON sql_RetailStore.bill_details.BILL_ID = sql_RetailStore.pays.BILL_ID
INNER JOIN sql_RetailStore.success_payment ON sql_RetailStore.pays.Payment_ID = sql_RetailStore.success_payment.Payment_ID
INNER JOIN sql_RetailStore.add_to_cart ON sql_RetailStore.placing_order.Cart_ID = sql_RetailStore.add_to_cart.Cart_ID
INNER JOIN sql_RetailStore.cart_Details ON sql_RetailStore.add_to_cart.Cart_ID = sql_RetailStore.cart_Details.Cart_ID
INNER JOIN sql_Inventory.Product ON sql_RetailStore.cart_Details.Product_ID = sql_Inventory.Product.Product_ID
INNER JOIN sql_Inventory.Category ON sql_Inventory.Product.Category_ID = sql_Inventory.Category.Category_ID
GROUP BY sql_Inventory.Category.Category_Name;'''
    if request.method == 'POST':
        if 'goback' in request.form:
            return redirect('/category')
    else:
        cursor.execute(query)
        return render_template('earnings.html',cursor=cursor)

@app.route('/customer/<username>',methods = ['GET','POST'])
def customer(username):
    # Display the customer page
    cursor = mydb1.cursor()
    query = "SELECT Product_id,Category_ID, Product_Name, Product_Description, Price,Quantity FROM product where Quantity>0"
    if request.method == 'POST':
        if 'filter' in request.form:
            category_id = request.form['category']
            price = request.form['price']
            query = "SELECT Product_id,Category_ID, Product_Name, Product_Description, Price,Quantity FROM product where Category_ID = %s and Price>%s and Quantity>0 "
            values = (category_id,price)
            cursor.execute(query,values)
            final = cursor.fetchall()
            return render_template('products.html', cursor=final)
        if 'search_button' in request.form:
            search_result = request.form['search']
            query = "SELECT Product_id,Category_ID, Product_Name, Product_Description, Price,Quantity FROM product WHERE Product_Name LIKE %s and Quantity>0"
            values = (f'%{search_result}%',)
            cursor.execute(query, values)
            final = cursor.fetchall()
            # print(final)
            return render_template('products.html', cursor=final)
        if 'clearFilters' in request.form:
            cursor.execute(query)
            return render_template('products.html', cursor=cursor)
        if 'sort' in request.form:
            query = "select Product_id,Category_ID, Product_Name, Product_Description, Price,Quantity from sql_Inventory.Product  where Quantity>0 order by Quantity"
            cursor.execute(query)
            final = cursor.fetchall()
            return render_template('products.html',cursor = final,msg = "sorted??") 
        if 'top10' in request.form:
            return redirect('/top10/'+username)
        if 'logout' in request.form:
            return redirect('/login')
        if 'viewCart' in request.form:
            return redirect('/cart/'+ username)
        if 'update' in request.form:
            update = request.form['updateCustomer']
            return redirect('/update_customer/'+username+'/'+update)
        if 'addToCart' in request.form:
            productId = int(request.form.get('addToCart'))
            quantity = int(request.form['quantity_' + str(productId)])
            cursor1 = mydb1.cursor()
            q = "Select Price from Product where Product_ID = %s"
            v = (productId,)
            cursor1.execute(q,v)
            result = cursor1.fetchall()
            price1 = int(result[0][0])
            price1 = price1*quantity
            cursor2 = mydb2.cursor()
            query1 = "INSERT INTO cart_details (Product_ID, Product_quantity, total_cost, Cart_ID) VALUES (%s, %s, %s, (SELECT cart_id FROM add_to_cart where customer_id=%s))"
            values = (productId,quantity,price1,f'{username}')
            try:
                cursor2.execute(query1,values)
                mydb2.commit()
                cursor.execute(query)
                final = cursor.fetchall()
                return render_template('products.html',cursor = final,msg = "Successfully Added")
            except  mysql.connector.Error as e:
                cursor.execute(query)
                final = cursor.fetchall()
                return render_template('products.html',cursor = final,msg = str(e))
    else:
        cursor.execute(query)
        final = cursor.fetchall()
        return render_template('products.html', cursor=final,msg = "nahi hua")

@app.route('/update_customer/<username>/<method>', methods=['GET', 'POST'])
def update(username, method):
    cursor = mydb.cursor()
    if request.method == 'POST':
        if 'back' in request.form:
            return redirect('/customer/' + username)
        if method == 'changeAddress':
            new = request.form['new']
            query = "UPDATE customer SET address=%s WHERE customer_id = %s"
            values = (new, username)
            cursor.execute(query, values)
        elif method == 'changeName':
            new = request.form['new']
            query = "UPDATE customer SET customer_name=%s WHERE customer_id = %s"
            values = (new, username)
            cursor.execute(query, values)
        elif method == 'changeEmail':
            new = request.form['new']
            query = "UPDATE customer SET customer_email=%s WHERE customer_id=%s"
            values = (new, username)
            cursor.execute(query, values)
        elif method == 'changePincode':
            new = int(request.form['new'])
            query = "UPDATE customer SET pincode=%s WHERE customer_id=%s"
            values = (new, username)
            cursor.execute(query, values)
        elif method == 'changeContactNumber':
            new = request.form['new']
            query = "UPDATE customer SET customer_contact_number=%s WHERE customer_id=%s"
            values = (new, username)
            cursor.execute(query, values)

        mydb.commit()  # Commit changes to the database

    return render_template('update.html')


    
@app.route('/cart/<username>',methods=['GET','POST'])
def cart(username):
    cursor = mydb2.cursor()
    query = "select Product_ID,Product_quantity,total_cost from cart_details where Cart_ID = (SELECT cart_id FROM sql_retailstore.add_to_cart where customer_id= %s);"
    values = (f'{username}',)
    if request.method == 'POST':
        if 'back' in request.form:
            return redirect('/customer/'+username)
        if 'bill' in request.form:
            return redirect('/bill/' + username)
    else:
        cursor.execute(query,values)
        result = cursor.fetchall()
        return render_template('cart.html',cursor = result,msg = username)
    
@app.route('/bill/<username>',methods=['GET','POST'])
def bill(username):
    if request.method == 'POST':
        # if 'back' in request.form:
        #     return redirect('/cart/'+username)
        if 'proceed' in request.form:
            return redirect('/payment/'+username)
    else:
        cursor = mydb2.cursor()
        query = "SELECT cart_id FROM sql_retailstore.add_to_cart where customer_id= %s"
        value = (f'{username}',)
        cursor.execute(query,value)
        result = cursor.fetchall()
        result = int(result[0][0])#cart_id
        #generate random date post today
        start_date = date.today()
        end_date = start_date + timedelta(days=3)
        delta = end_date - start_date
        random_delta = random.randint(0, delta.days)
        random_date = start_date + timedelta(days=random_delta)
        random_date = random_date.strftime('%Y-%m-%d')#final random date to insert
        #generate random discount and delivery charge
        discount = random.randint(100,500)
        delivery = random.randint(25,100)
        #generate total cost post discount
        query1 =  "SELECT SUM(total_cost) FROM cart_Details WHERE Cart_ID = %s"    
        value = (result,)
        cursor.execute(query1, value)
        total_cost_result = cursor.fetchone()
        total_cost = int(total_cost_result[0]) + delivery - discount
        
        #inserting query
        query2 ='''INSERT INTO bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) 
VALUES (%s, %s, %s, %s, %s)
ON DUPLICATE KEY UPDATE 
total_discount = VALUES(total_discount), 
delivery_date = VALUES(delivery_date), 
delivery_charge = VALUES(delivery_charge), 
total_cost = VALUES(total_cost);'''
        update_values = (result,discount,random_date,delivery,total_cost)
        cursor.execute(query2, update_values)
        mydb2.commit()
        query3 = "select BILL_ID,total_discount,delivery_charge,total_cost,delivery_date from bill_details where BILL_ID = %s"
        v = (result,)
        cursor.execute(query3,v)
        final = cursor.fetchall()    
        return render_template('bill_details.html',cursor =final,msg = username)

    



@app.route('/payment/<username>',methods=['GET','POST'])
def payment(username):
    cursor = mydb2.cursor()
    query = "SELECT cart_id FROM sql_retailstore.add_to_cart where customer_id= %s"
    value = (f'{username}',)
    cursor.execute(query,value)
    result = cursor.fetchall()
    paymentid = int(result[0][0])#cart_id
    if request.method == 'POST':
        # if 'back' in request.form:
        #     return redirect('/cart/'+username)
        if 'submit' in request.form:   
            name = request.form['card_name']
            card_no = request.form['card_number']
            cvv = request.form['cvv']
            ed = request.form['expiry_date']    
            query = "INSERT INTO payment (payment_id,card_name, card_number, cvv, expiry_date) VALUES (%s,%s, %s, %s, %s)"
            values = (paymentid,name,card_no,cvv,ed) 
            query2 = "insert into success_payment(Payment_ID,BILL_ID) values (%s,%s);"
            values2 = (paymentid,paymentid)            
            try:
                cursor.execute(query, values)
                cursor.execute(query2,values2)
                mydb2.commit()
                return render_template('payment.html',msg = "Entered succesfully")
            except mysql.connector.Error as e:
                return render_template('payment.html',msg = str(e))
        if 'details' in request.form:
            cursor.execute("START TRANSACTION;")
            q1 = """INSERT INTO assigns (admin_user_id, payment_ID, agent_id)
            SELECT 'mehak', sp.Payment_ID, (SELECT sql_users.Delivery_Executive.agent_id FROM sql_users.Delivery_Executive ORDER BY RAND() LIMIT 1)
            FROM success_payment sp
            LEFT JOIN assigns a ON sp.Payment_ID = a.payment_ID
            WHERE a.payment_ID IS NULL;"""
            cursor.execute(q1)
            cursor.nextset()
            q2 = """UPDATE sql_users.Delivery_Executive de
            JOIN assigns a ON de.agent_id = a.agent_id
            SET de.no_of_trips = de.no_of_trips + 1;"""
            cursor.execute(q2)
            cursor.nextset()
            q3 = """INSERT INTO ordered_items (order_ID,total_cost, products_ordered)
            SELECT sp.payment_ID,bd.total_cost, GROUP_CONCAT(cd.Product_ID)
            FROM bill_details bd
            JOIN cart_Details cd ON bd.BILL_ID = cd.Cart_ID
            JOIN success_payment sp ON cd.Cart_ID = sp.payment_ID
            LEFT JOIN ordered_items oi ON sp.payment_ID = oi.order_ID
            WHERE oi.order_ID IS NULL
            GROUP BY bd.BILL_ID;"""
            cursor.execute(q3)
            cursor.nextset()
            q4 = """UPDATE sql_Inventory.Product p
            JOIN cart_Details cd ON p.Product_ID = cd.Product_ID
            JOIN success_payment sp ON cd.Cart_ID = sp.payment_ID
            LEFT JOIN ordered_items oi ON sp.payment_ID = oi.order_ID
            SET p.Quantity = p.Quantity - cd.Product_quantity
            WHERE oi.order_ID IS NULL;"""
            cursor.execute(q4)
            cursor.nextset()
            cursor.execute("COMMIT;")
            mydb2.commit()
           

            return redirect('/order/'+username)
    else:
        return render_template('payment.html')
            
@app.route('/order/<username>', methods = ['GET','POST'])
def order(username):
    if request.method=="POST":
        if 'back' in request.form:
            return redirect('/login')
    else:
        cursor = mydb2.cursor()
        query = "SELECT cart_id FROM sql_retailstore.add_to_cart where customer_id= %s"
        value = (f'{username}',)
        cursor.execute(query,value)
        result = cursor.fetchall()
        paymentid = int(result[0][0])#cart_id
        q6 = '''select products_ordered,total_cost from ordered_items where order_ID=%s'''
        cursor.execute(q6, (paymentid,))
        final = cursor.fetchall()
        q1 = '''SELECT a.agent_id
                FROM assigns a
                WHERE a.payment_ID = %s;'''
        v1 = (f'{username}',)
        cursor.execute(q1, (paymentid,))
        c = cursor.fetchone()
        return render_template('order.html',msg = username,cursor=final,msg2 =c[0] )


@app.route('/supplier/<username>', methods=['GET', 'POST'])
def supplier(username):
    # Display the customer page
    cursor = mydb1.cursor()
    query = "SELECT Product_id, Category_ID, Product_Name, Product_Description, Price FROM product"
    if request.method == 'POST':
        if 'filter' in request.form:
            category_id = request.form['category']
            price = request.form['price']
            query = "SELECT Product_id, Category_ID, Product_Name, Product_Description, Price FROM product WHERE Category_ID = %s AND Price > %s"
            values = (category_id, price)
            cursor.execute(query, values)
            final = cursor.fetchall()
            return render_template('products1.html', cursor=final)
        if 'search_button' in request.form:
            search_result = request.form['search']
            query = "SELECT Product_id, Category_ID, Product_Name, Product_Description, Price FROM product WHERE Product_Name LIKE %s"
            values = (f'%{search_result}%',)
            cursor.execute(query, values)
            final = cursor.fetchall()
            return render_template('products1.html', cursor=final)
        if 'clearFilters' in request.form:
            cursor.execute(query)
            final = cursor.fetchall()
            return render_template('products1.html', cursor=final)
        if 'logout' in request.form:
            return redirect('/login')
        if 'add' in request.form:
            p_id = request.form.get('add')
            quantity = int(request.form['quantity_' + str(p_id)])
            quantityy = "select quantity from sql_inventory.product where Product_id = %s;"
            v = (p_id,)
            cursor.execute(quantityy,v)
            result = cursor.fetchone()
            result = int(result[0])
            query1 = "UPDATE sql_inventory.product SET quantity = %s WHERE Product_id = %s;"
            values = (int(quantity+result), p_id)
            try:
                cursor.execute(query1, values)
                mydb1.commit()
                cursor.execute(query)
                final = cursor.fetchall()
                return render_template('products1.html', cursor=final)
            except mysql.connector.Error as e:
                cursor.execute(query)
                final = cursor.fetchall()
                return render_template('products1.html', cursor=final,error = str(e))  
        if 'change_price' in request.form:
            productId = request.form.get('change_price')
            price = int(request.form['price_'+str(productId)])
            query1 = "UPDATE sql_inventory.product SET Price = %s WHERE Product_id = %s;"
            values = (price,productId)
            cursor.execute(query1,values)
            mydb1.commit()
            cursor.execute(query)
            final = cursor.fetchall()
            return render_template('products1.html', cursor=final)
            # values = (new
        if 'add_prod' in request.form:
            return redirect('/addproduct/'+username)
        if 'update' in request.form:
            update = request.form['updateSupplier']
            return redirect('/update_supplier/'+username+'/'+update)  
        
    else:
        cursor.execute(query)
        final = cursor.fetchall()
        return render_template('products1.html', cursor=final)
    

@app.route('/update_supplier/<username>/<method>', methods=['GET', 'POST'])
def update_supp(username, method):
    cursor = mydb.cursor()
    if request.method == 'POST':
        if 'back' in request.form:
            return redirect('/supplier/' + username)
        if method == 'changeAddress':
            new = request.form['new']
            query = "UPDATE supplier SET address=%s WHERE supplier_id = %s"
            values = (new, username)
            cursor.execute(query, values)
        elif method == 'changeName':
            new = request.form['new']
            query = "UPDATE supplier SET supplier_name=%s WHERE supplier_id = %s"
            values = (new, username)
            cursor.execute(query, values)
        elif method == 'changeEmail':
            new = request.form['new']
            query = "UPDATE supplier SET email_id=%s WHERE supplier_id=%s"
            values = (new, username)
            cursor.execute(query, values)
        elif method == 'changePincode':
            new = int(request.form['new'])
            query = "UPDATE supplier SET pincode=%s WHERE supplier_id=%s"
            values = (new, username)
            cursor.execute(query, values)
        elif method == 'changeContactNumber':
            new = request.form['new']
            query = "UPDATE supplier SET contact_number=%s WHERE supplier_id=%s"
            values = (new, username)
            cursor.execute(query, values)

        mydb.commit()  # Commit changes to the database

    return render_template('update.html')

@app.route('/addproduct/<username>', methods=['GET', 'POST'])
def addproduct(username):    
        cursor = mydb1.cursor()
        query = "SELECT Category_ID, Category_Name, Category_Product_Description FROM Category"
        cursor.execute(query)
        categories = cursor.fetchall()

        # Insert data into product table
        if request.method == 'POST':
            if 'goback' in request.form:
                return redirect('/supplier/'+username)
            if 'submit' in request.form:
                P_name = request.form['name']
                P_description = request.form['description']
                P_price = int(request.form['price'])
                P_quantity = int(request.form['quantity'])
                category_id = int(request.form['category_id'])

                try:
                    cursor.execute("START TRANSACTION")

                    insert_product_query = """
                        INSERT INTO sql_Inventory.Product (Category_ID, Product_Name, Product_Description, Price, Quantity)
                        SELECT %s, %s, %s, %s, %s
                        FROM (SELECT 1) AS dummy
                        WHERE EXISTS (SELECT 1 FROM sql_Inventory.Category WHERE Category_ID = %s)
                    """
                    insert_product_values = (category_id, P_name, P_description, P_price, P_quantity, category_id)
                    cursor.execute(insert_product_query, insert_product_values)

                    cursor.execute("SET @last_product_id = LAST_INSERT_ID()")

                    insert_prod_contains_query = "INSERT INTO prod_contains (Category_ID, Product_ID) VALUES (%s, @last_product_id)"
                    insert_prod_contains_values = (category_id,)
                    cursor.execute(insert_prod_contains_query, insert_prod_contains_values)

                    cursor.execute("COMMIT")
                    mydb1.commit()
                    return render_template('add-product.html', categories=categories, msg="Entered successfully")
                except mysql.connector.Error as e:
                    return render_template('add-product.html', categories=categories, msg=str(e))
            
        return render_template('add-product.html', categories=categories)

@app.route('/delivery/<username>',methods = ['GET','POST'])
def delivery(username):
    cursor = mydb.cursor()
    query = "select agent_name,Salary,no_of_trips from delivery_executive where agent_id=%s"
    values = (f'{username}',)
    cursor.execute(query,values)
    data = cursor.fetchall()
    if request.method=='POST':
        if 'update' in request.form:
            update = request.form['updateExecutive']
            return redirect('/update_delivery/'+username+'/'+update) 
        if 'logout' in request.form:
            return redirect('/login')
        # return render_template('delivery.html',data=data)
    return render_template('delivery.html',data=data)
    
@app.route('/update_delivery/<username>/<method>', methods=['GET', 'POST'])
def update_del(username, method):
    cursor = mydb.cursor()
    if request.method == 'POST':
        if 'back' in request.form:
            return redirect('/delivery/' + username)
        elif method == 'changeName':
            new = request.form['new']
            query = "UPDATE Delivery_Executive SET agent_name=%s WHERE agent_id = %s"
            values = (new, username)
            cursor.execute(query, values)
        elif method == 'changeEmail':
            new = request.form['new']
            query = "UPDATE Delivery_Executive SET agent_email=%s WHERE agent_id=%s"
            values = (new, username)
            cursor.execute(query, values)
        elif method == 'changeContactNumber':
            new = request.form['new']
            query = "UPDATE Delivery_Executive SET agent_contact_number=%s WHERE agent_id=%s"
            values = (new, username)
            cursor.execute(query, values)

        mydb.commit()  # Commit changes to the database

    return render_template('update.html')


@app.route('/top10/<username>',methods=['GET','POST'])
def top10(username):
    if request.method == 'POST':
        return redirect('/customer/'+username)
    else:
        cursor = mydb1.cursor()
        query = '''SELECT sql_Inventory.Product.Product_Name, SUM(sql_RetailStore.cart_Details.Product_quantity) AS total_quantity_sold
FROM sql_RetailStore.cart_Details
INNER JOIN sql_RetailStore.add_to_cart ON sql_RetailStore.cart_Details.Cart_ID = sql_RetailStore.add_to_cart.Cart_ID
INNER JOIN sql_RetailStore.placing_order ON sql_RetailStore.add_to_cart.Cart_ID = sql_RetailStore.placing_order.Cart_ID
INNER JOIN sql_RetailStore.bill_details ON sql_RetailStore.placing_order.BILL_ID = sql_RetailStore.bill_details.BILL_ID
INNER JOIN sql_Inventory.Product ON cart_Details.Product_ID = Product.Product_ID
GROUP BY sql_Inventory.Product.Product_Name
ORDER BY total_quantity_sold DESC
LIMIT 10;'''
        cursor.execute(query)
        return render_template('top10.html',cursor=cursor)

if __name__ == '__main__':
    app.run(debug=True)

