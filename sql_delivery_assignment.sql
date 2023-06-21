create database if not exists delivery_assignment;

use delivery_assignment;
DROP TABLES if exists delass, assigns;

create table if not exists delass
select bill_details.BILL_ID ,bill_details.total_cost as tc
,success_Payment.payment_ID as pc 
from sql_RetailStore.success_payment
Join sql_RetailStore.bill_details 
on success_payment.BILL_ID=bill_details.BILL_ID
;

create table if not exists assigns(
	admin_user_id varchar(50) not null,
	payment_ID int not null,
    agent_id varchar(50) not null,
    PRIMARY KEY(payment_ID,agent_ID),
    FOREIGN KEY (agent_id) REFERENCES sql_users.Delivery_Executive(agent_id)ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (admin_user_id) REFERENCES sql_users.admin(user_id)ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (payment_ID) REFERENCES sql_RetailStore.payment(Payment_ID)ON UPDATE CASCADE
        ON DELETE CASCADE
    
);





ALTER TABLE delass
ADD agent_id varchar(50);

UPDATE delass
JOIN assigns
ON delass.pc = assigns.payment_ID
SET delass.agent_id = assigns.agent_id;

-- Update the assignment of drivers based on the order_value
Start transaction;
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
commit;