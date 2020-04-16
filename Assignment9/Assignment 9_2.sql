-- Database identifying statement
USE StefReevesnorthwind;
-- Drop Statement
DROP FUNCTION IF EXISTS productNameLookUp;
-- Change statement delimiter from semicolon to double front slash
DELIMITER //
-- Create function statement and name 
CREATE FUNCTION productNameLookUp(ProductID_param INT)
RETURNS VARCHAR(40)
DETERMINISTIC 
BEGIN
DECLARE pName VARCHAR(40);
SELECT productName INTO pName 
FROM products WHERE productID = ProductID_param;
RETURN pName;
END//
-- Change statement delimiter from double front slash back to delimiter
DELIMITER ;
-- Call function statement
SELECT  productNameLookUp(6);