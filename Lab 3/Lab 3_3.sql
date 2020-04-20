-- Database identifying statement
USE StefReevesnorthwind;
-- Drop Statement
DROP FUNCTION IF EXISTS productInventoryLookUp;
-- Change statement delimiter from semicolon to double front slash
DELIMITER //
-- Create function statement and name 
CREATE FUNCTION productInventoryLookUp(ProductID_param INT)
RETURNS SMALLINT
DETERMINISTIC 
BEGIN
DECLARE pInvenLevel SMALLINT;
SELECT UnitsInStock INTO pInvenLevel
FROM products WHERE productID = ProductID_param;
RETURN pInvenLevel;
END//
-- Change statement delimiter from double front slash back to delimiter
DELIMITER ;
-- Call function statement
SELECT  productInventoryLookUp(6) AS 'Current Inventory Level';