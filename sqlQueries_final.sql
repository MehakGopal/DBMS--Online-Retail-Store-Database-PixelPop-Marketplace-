-- all the queries

-- 1
-- Sort Products based on Quantity
select *
from sql_Inventory.Product
order by Quantity; 

-- 2
-- Sort products using category IDs and other filters and showing the result
select *
from sql_Inventory.Product
where Category_ID = 15
having price<5000
union 
select *
from sql_Inventory.Product
where Category_ID = 20
having quantity>5;

-- 3
-- searching product based on a certain cost filter
select *
from sql_Inventory.Product
where Price between 1000 and 2000;


-- 4
-- searching based for product on user input
SET @Product_Name = 'Kahlua';
SELECT * 
FROM sql_Inventory.Product 
WHERE Product_Name = @product_name;


-- 5
-- updating the stock based on user input
SET @Product_ID=101;
SET @Product_Quantity=23;
UPDATE sql_Inventory.Product 
SET Quantity=Quantity+@Product_Quantity 
Where Product_ID=@Product_ID;

Select * from sql_Inventory.Product;

-- 6
-- Select Query based on multiple filter
select *
from sql_Inventory.Product
where Price>1000 and Price in( select Price from sql_Inventory.Product where Product_Name like "%fillet%");

-- 7
-- Updating salary based on nooftrips>150;
Update sql_users.Delivery_Executive
Set Salary=Salary+(Salary*1.1)
where no_of_trips>150;

SELECT * 
FROM sql_users.Delivery_Executive;

-- 8
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

-- 9
-- update customer details based on user input
set @customer_name = 'Lishe Dooley';
set @customer_input = 1;
set @customer_input2 = '9810601703';
update sql_users.customer
set customer_email = case
when @customer_input = 1 then @customer_input2
else customer_email
end,
 address = case
when @customer_input = 2 then @customer_input2
else address
end,
customer_contact_number= case
when @customer_input=3 then @customer_input2
else customer_contact_number
end
where customer_name = @customer_name;

select * from sql_users.customer where customer_name = @customer_name;

-- 10
-- update delivery charge based on total cost
update sql_retailstore.bill_details
set delivery_charge = case
when total_cost<500 then 200
when total_cost between 500 and 2000 then 100
else 25
end;

select * from sql_retailstore.bill_details;

