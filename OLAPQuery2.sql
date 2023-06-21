-- total revenue earned from orders placed by each customer.

SELECT add_to_cart.customer_id, SUM(bill_details.total_cost) as total_revenue
FROM sql_RetailStore.add_to_cart
INNER JOIN sql_RetailStore.cart_Details ON sql_RetailStore.add_to_cart.Cart_ID = sql_RetailStore.cart_Details.Cart_ID
INNER JOIN sql_RetailStore.bill_details ON sql_RetailStore.cart_Details.Cart_ID = sql_RetailStore.bill_details.BILL_ID
INNER JOIN sql_RetailStore.placing_order ON sql_RetailStore.bill_details.BILL_ID = sql_RetailStore.placing_order.BILL_ID AND sql_RetailStore.cart_Details.Cart_ID = sql_RetailStore.placing_order.Cart_ID
INNER JOIN sql_RetailStore.pays ON sql_RetailStore.bill_details.BILL_ID = sql_RetailStore.pays.BILL_ID
INNER JOIN sql_RetailStore.success_payment ON sql_RetailStore.pays.Payment_ID = sql_RetailStore.success_payment.Payment_ID AND sql_RetailStore.bill_details.BILL_ID = sql_RetailStore.success_payment.BILL_ID
GROUP BY add_to_cart.customer_id;
