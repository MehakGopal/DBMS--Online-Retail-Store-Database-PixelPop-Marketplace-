start transaction;
UPDATE sql_inventory.product p
SET p.Price = 4000
WHERE p.product_id = '100'
and exists(SELECT 1 FROM(SELECT 1 FROM sql_inventory.product where Product_ID=89) as sub);

commit;