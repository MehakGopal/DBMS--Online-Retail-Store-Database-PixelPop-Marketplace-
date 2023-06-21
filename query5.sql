-- updating the stock based on user input

SET @Product_ID=101;
SET @Product_Quantity=23;
UPDATE sql_Inventory.Product 
SET Quantity=Quantity+@Product_Quantity 
Where Product_ID=@Product_ID;

Select * from sql_Inventory.Product