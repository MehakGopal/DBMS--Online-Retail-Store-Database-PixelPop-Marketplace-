SELECT sql_Inventory.Product.Product_Name, SUM(sql_RetailStore.cart_Details.Product_quantity) AS total_quantity_sold
FROM sql_RetailStore.cart_Details
INNER JOIN sql_RetailStore.add_to_cart ON sql_RetailStore.cart_Details.Cart_ID = sql_RetailStore.add_to_cart.Cart_ID
INNER JOIN sql_RetailStore.placing_order ON sql_RetailStore.add_to_cart.Cart_ID = sql_RetailStore.placing_order.Cart_ID
INNER JOIN sql_RetailStore.bill_details ON sql_RetailStore.placing_order.BILL_ID = sql_RetailStore.bill_details.BILL_ID
INNER JOIN sql_Inventory.Product ON cart_Details.Product_ID = Product.Product_ID
GROUP BY sql_Inventory.Product.Product_Name
ORDER BY total_quantity_sold DESC
LIMIT 10;
