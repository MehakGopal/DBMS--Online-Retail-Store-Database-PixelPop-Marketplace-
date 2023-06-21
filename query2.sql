-- Query 2 Sort products based on category

select *
from sql_Inventory.Product
where Category_ID = 15
having price<5000
union 
select *
from sql_Inventory.Product
where Category_ID = 20
having quantity>5;
