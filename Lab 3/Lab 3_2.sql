USE StefReevesnorthwind;

DROP PROCEDURE IF EXISTS checkProductStock;
DELIMITER //

CREATE PROCEDURE checkProductStock(
IN UnitsInStock_param SMALLINT
)
BEGIN
    DECLARE count_var INT;
    
    SELECT COUNT(*)
    INTO count_var
    FROM products
    WHERE UnitsInStock < UnitsInStock_param;
    
    SELECT CONCAT(count_var, ' products have an inventory level below ' ,  UnitsInStock_param) AS Message;
END//

DELIMITER ;

CALL checkProductStock(45);