-- Select Query based on multiple filter

select *
from sql_Inventory.Product
where Price>1000 and 
Price in( select Price from sql_Inventory.Product where Product_Name like "%fillet%");
