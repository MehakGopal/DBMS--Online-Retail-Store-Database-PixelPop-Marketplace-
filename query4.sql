-- Query 4 searching based for product on user input

SET @Product_Name = 'Kahlua';
SELECT * 
FROM sql_Inventory.Product 
WHERE Product_Name = @product_name;