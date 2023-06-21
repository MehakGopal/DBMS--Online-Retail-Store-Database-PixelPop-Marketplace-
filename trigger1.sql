DELIMITER $$
CREATE TRIGGER trigger_name
BEFORE INSERT ON sql_RetailStore.payment
FOR EACH ROW
BEGIN
    IF NEW.expiry_date < CURDATE() THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Card is expired";
    END IF;
END $$
DELIMITER ;