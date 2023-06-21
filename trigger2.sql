DELIMITER $$
CREATE TRIGGER trigger_name
BEFORE UPDATE ON sql_inventory.Product
FOR EACH ROW
BEGIN
    IF NEW.Quantity < 0 THEN
        SET NEW.Quantity = OLD.Quantity;
    ELSEIF NEW.Quantity >= 0 THEN
        SET NEW.Quantity = OLD.Quantity + NEW.Quantity;
    END IF;
END $$
DELIMITER ;
