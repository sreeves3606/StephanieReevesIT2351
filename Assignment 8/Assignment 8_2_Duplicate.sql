USE StefReevesnorthwind;

DROP PROCEDURE IF EXISTS insertProducts;

DELIMITER //

CREATE PROCEDURE insertProducts()
BEGIN
	DECLARE sql_error TINYINT DEFAULT FALSE;
    BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
		SET sql_error = TRUE;

    INSERT INTO products(ProductName) VALUES ('Boston Crab Meat');
    
    SELECT 'Success - 1 row was inserted.' AS message;
    END;
    
    IF sql_error = TRUE THEN
		SELECT 'Failure - Requested row was not inserted - SQL exception.' AS message;
	END IF;
END//

DELIMITER ;

Call insertProducts();