START TRANSACTION;

SET @available_qty = (SELECT Quantity FROM sql_Inventory.Product WHERE Product_ID = '100');


INSERT INTO sql_RetailStore.add_to_cart (Product_ID)
SELECT '100' FROM DUAL WHERE @available_qty >= 5;

UPDATE sql_Inventory.Product 
SET Quantity = Quantity - 5 WHERE Product_ID = '100' AND @available_qty >= 5;


SELECT IF(@available_qty >= 5,
          'Added to cart',
          CONCAT('Sorry, we only have ', @available_qty, ' units available')) AS message;

COMMIT;