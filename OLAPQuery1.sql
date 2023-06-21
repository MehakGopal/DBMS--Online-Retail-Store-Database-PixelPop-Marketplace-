SELECT sql_Inventory.Category.Category_Name, SUM(sql_RetailStore.bill_details.total_cost) AS total_revenue
FROM sql_RetailStore.placing_order
INNER JOIN sql_RetailStore.bill_details ON sql_RetailStore.placing_order.BILL_ID = sql_RetailStore.bill_details.BILL_ID
INNER JOIN sql_RetailStore.pays ON sql_RetailStore.bill_details.BILL_ID = sql_RetailStore.pays.BILL_ID
INNER JOIN sql_RetailStore.success_payment ON sql_RetailStore.pays.Payment_ID = sql_RetailStore.success_payment.Payment_ID
INNER JOIN sql_RetailStore.add_to_cart ON sql_RetailStore.placing_order.Cart_ID = sql_RetailStore.add_to_cart.Cart_ID
INNER JOIN sql_RetailStore.cart_Details ON sql_RetailStore.add_to_cart.Cart_ID = sql_RetailStore.cart_Details.Cart_ID
INNER JOIN sql_Inventory.Product ON sql_RetailStore.cart_Details.Product_ID = sql_Inventory.Product.Product_ID
INNER JOIN sql_Inventory.Category ON sql_Inventory.Product.Category_ID = sql_Inventory.Category.Category_ID
GROUP BY sql_Inventory.Category.Category_Name;
