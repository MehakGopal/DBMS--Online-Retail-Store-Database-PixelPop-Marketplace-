-- Query 3 searching product based on a certain cost filter
 
select *
from sql_Inventory.Product
where Price 
between 1000 and 2000
