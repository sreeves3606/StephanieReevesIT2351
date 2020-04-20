USE StefReevesnorthwind;

DROP PROCEDURE IF EXISTS lowProductStock;
DELIMITER //

CREATE PROCEDURE lowProductStock()
BEGIN
	DECLARE count_var INT;
    SELECT COUNT(*)
    INTO count_var
    FROM products
    WHERE UnitsInStock < 30;
    
    SELECT CONCAT(count_var, ' products have an inventory level below 30.') AS Message;
END//

DELIMITER ;

CALL lowProductStock();
    