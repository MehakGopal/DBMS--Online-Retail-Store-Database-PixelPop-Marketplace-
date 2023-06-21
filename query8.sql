-- Update the assignment of drivers based on the order_value

UPDATE delivery_assignment.assigns AS a
JOIN (
  SELECT payment_ID, delivery_assignment.assigns.agent_id
  FROM delivery_assignment.assigns
  WHERE delivery_assignment.assigns.agent_id IN (
    SELECT sql_users.Delivery_Executive.agent_id 
    FROM sql_users.Delivery_Executive 
    WHERE no_of_trips > 75
  )
) AS b ON a.payment_ID = b.payment_ID
SET a.agent_id = (
  SELECT delass.agent_id
  FROM delass 
  WHERE tc > 7500 
  ORDER BY RAND() 
  LIMIT 1
);
