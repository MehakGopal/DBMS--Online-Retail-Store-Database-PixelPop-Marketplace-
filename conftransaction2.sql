start transaction;
INSERT INTO sql_Inventory.Product (Product_ID, Category_ID, Product_Name, Product_Description, Price, Quantity)
SELECT 451, 17, "asasas", "new_product_description", 10000, 5
FROM (SELECT 1) AS dummy
WHERE EXISTS (SELECT 1 FROM sql_Inventory.Category WHERE Category_ID = 17);

SELECT
    CASE
        WHEN ROW_COUNT() > 0 THEN 'Product inserted'
        ELSE 'Product not inserted: category does not exist'
    END AS message;
