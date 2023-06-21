-- total revenue and profit generated from each order

SELECT ct.Cart_ID , 
       SUM(ct.total_cost) AS Total_Revenue, 
       SUM(ct.total_cost - bd.total_discount - (ct.total_cost * 0.2)) AS Total_Profit 
FROM sql_RetailStore.add_to_cart at 
JOIN sql_RetailStore.cart_Details ct ON at.Cart_ID = ct.Cart_ID 
JOIN sql_RetailStore.bill_details bd ON ct.Cart_ID = bd.BILL_ID
GROUP BY ct.Cart_ID;


