# DBMS--Online-Retail-Store-Database-PixelPop-Marketplace

# PIXELPOP MARKETPLACE
# Features in our Application 
1) Registration
- To register as a customer, supplier, or delivery executive, click the "Register" button on the homepage.
- Fill in the required details and submit the form.
2) Customer Features
- Click the "Products" tab on the homepage to view the products.
- Enter the product name or category in the search bar to search for a
product.
- To filter products based on quantity or price, use the filter options provided
on the page.
- To add a product to the cart, click the "Add to Cart" button next to the
product.
- After adding the product, the customer can view the cart and place an order
after checking the bill details and successfully paying.


3)Supplier Features
- Click the "Add Product" button on the supplier dashboard to add a new product.
- Fill in the required details, such as product name, description, category, and price.
- To change the price of a product, go to the "Products" tab and click on the "Change Price" button next to the product.
- Enter the new price and submit the form.
- To update the inventory, go to the "Products" tab and click the "Update
Inventory" button next to the product.
- Enter the new stock quantity and submit the form.

4)Delivery Executive Features
- To view your data, just login, and you will be able to see data.
- Here, you can view your personal details.

5)Admin Features
- To access the admin dashboard, log in as an admin.
- Update the salaries of delivery executives.
- View the various products and categories.
- View the suppliers, customers, and delivery executives registered.
- Analyse net revenue and profit across categories and all orders according to
OLAP Queries
  
# OLAP Queries
We have implemented four OLAP queries in our retail store. We have populated our tables with some dummy data to get results for these queries.
1) Our First Olap Query is Top 10 products. We are showing this on the customer login page. On clicking, the customer can view the top 10 selling products based on previous orders and search and filter to find that product on the main page.
  2) Our second query shows the Net Revenue generated by each category. This is visible in the Admin Login in the ‘Manage Inventory -> Manage Category’ option.
 3) Our third query shows the Net Profit from each order. This is available in the admin login again under the ‘Manage Customers’ option. Here we have applied a random formula to generate some profit to show the functionality of our OLAP query.
 
 4) Our fourth OLAP query shows the Net earning of each customer based on their order. This is also in the exact location of our third query under a different button.
 
# Triggers
We have implemented three triggers in our retail store.
1) The first trigger is when a customer enters their payment details. After viewing their
order, they proceed to payment details. If the card's expiry date refers to a date in the past, the details won’t be accepted, and an Error message will be displayed. The user can then enter their card details again with the correct requirements.
  2) The second trigger is when the user tries to add a product to the cart, but the required quantity exceeds the available quantity. When this trigger gives an error, it will be displayed in the top right corner. Otherwise, it will state, ‘Successfully added.’
 
 3) Our Third trigger is based on the updation of the product quantity. It is more of a fallback feature in case our database encounters a negative value. Every time a customer places an order, the product quantity they ordered is subtracted from the inventory. To avoid getting negative values in the database, our trigger checks if the product quantity to be updated is less than equal to zero and then sets it to zero.

# Basic Queries
1) We have implemented basic searching and filtering queries everywhere. Each customer and supplier can search for products based on their names. The customer can also sort the products based on quantity, category ID, and price.
2) We have a query in the admin login that allows the salaries of the delivery executives to be updated according to the number of trips they have made.
The query: update sql_users.delivery_executive set salary=salary+1.1*salary where no_of_trips>=150;
3) The details for the customer, supplier, and delivery executive can be changed by updating the tables.
4) The supplier can change the inventory and price of the products based on the user input of the supplier.
  
# Transactions
1) Transaction 1, basically occurs when we try to insert a new product in our database. It inserts into the database, checks if the category it is inserting into is valid and if it is valid it gets inserted into the database, as well as the prod_contains table which is a table that has every combination of valid Product ID and Category ID.

2) In Transaction 2,It inserts a new record into the assigns table for each successful payment that has not yet been assigned to an agent. The admin_user_id is set to 'mehak', the payment_ID is set to the Payment_ID from the success_payment table, and the agent_id is selected randomly from the sql_users.Delivery_Executive table.It updates the no_of_trips field in the sql_users.Delivery_Executive table for each agent that has been assigned a payment in the previous step.It inserts a new record into the ordered_items table for each successful payment that has not yet been recorded in this table. The order_ID is set to the payment_ID from the success_payment table, the total_cost is set to the corresponding value from the bill_details table, and the products_ordered field is set to a comma-separated list of product IDs from the cart_Details table. It updates the Quantity field in the sql_Inventory.Product table for each product that has been ordered in a successful payment that has not yet been recorded in the ordered_items table. The quantity is decreased by the corresponding value from the cart_Details table.
 


To summarise, in our retail store, we have three main users, a Supplier, a Customer, and a Delivery Executive. We also have an admin that oversees the users and the inventory. Our retail store has limited functionality in the sense that our customers can only place one order right now.
