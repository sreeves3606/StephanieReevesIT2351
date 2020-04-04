USE StefReevesnorthwind;

DROP PROCEDURE IF EXISTS insertProducts;

DELIMITER //

CREATE PROCEDURE insertProducts()
BEGIN
	DECLARE duplicate_ProductID INT DEFAULT FALSE;
    
	DECLARE CONTINUE HANDLER FOR 1062
		SET duplicate_ProductID = TRUE;

    INSERT INTO products(ProductID) VALUES (1);
    
    IF duplicate_ProductID = TRUE THEN
		SELECT 'Requested row was not inserted - duplicate key found.' AS message;
	ELSE
		SELECT 'Success - 1 row was inserted.' AS message;
	END IF;
END//

DELIMITER ;

Call insertProducts();
    


