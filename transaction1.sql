START TRANSACTION;
INSERT INTO assigns (admin_user_id, payment_ID, agent_id)
SELECT 'mehak', sp.Payment_ID, (SELECT sql_users.Delivery_Executive.agent_id FROM 
sql_users.Delivery_Executive ORDER BY RAND() LIMIT 1)
FROM success_payment sp
LEFT JOIN assigns a ON sp.Payment_ID = a.payment_ID
WHERE a.payment_ID IS NULL;

UPDATE sql_users.Delivery_Executive de
JOIN assigns a ON de.agent_id = a.agent_id
SET de.no_of_trips = de.no_of_trips + 1;
INSERT INTO ordered_items (order_ID,total_cost, products_ordered)
SELECT sp.payment_ID,bd.total_cost, GROUP_CONCAT(cd.Product_ID)
FROM bill_details bd
JOIN cart_Details cd ON bd.BILL_ID = cd.Cart_ID
JOIN success_payment sp ON cd.Cart_ID = sp.payment_ID
LEFT JOIN ordered_items oi ON sp.payment_ID = oi.order_ID
WHERE oi.order_ID IS NULL
GROUP BY bd.BILL_ID;
UPDATE sql_Inventory.Product p
JOIN cart_Details cd ON p.Product_ID = cd.Product_ID
JOIN success_payment sp ON cd.Cart_ID = sp.payment_ID
LEFT JOIN ordered_items oi ON sp.payment_ID = oi.order_ID
SET p.Quantity = p.Quantity - cd.Product_quantity
WHERE oi.order_ID IS NULL;
COMMIT;