USE CarVerse;

DELIMITER $$

-- Reduce stock after every sale

CREATE TRIGGER UpdateStock
AFTER INSERT ON Sale
FOR EACH ROW
BEGIN

UPDATE Stock
SET quantity = quantity - 1
WHERE stock_id = NEW.stock_id;

END $$

DELIMITER ;
