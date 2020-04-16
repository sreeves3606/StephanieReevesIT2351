-- Database identifying statement
USE StefReevesnorthwind;
-- Drop Statement
DROP PROCEDURE IF EXISTS customerFreightByID;
-- Change statement delimiter from semicolon to double front slash
DELIMITER //
-- Create procedure statement and name 
CREATE PROCEDURE customerFreightByID(
IN customerID_param VARCHAR(5)
)
BEGIN
  SELECT  ROUND(SUM(freight), 2) AS 'Total Freight'
  FROM orders
  WHERE customerID = customerID_param;
END//
-- Change statement delimiter from double front slash back to delimiter
DELIMITER ;

CALL customerFreightByID('LINOD');

DROP PROCEDURE IF EXISTS test;
DELIMITER //
-- Second stored procedure
CREATE PROCEDURE test()
BEGIN
CALL customerFreightByID('RATTC');
CALL customerFreightByID('QUEEN');
CALL customerFreightByID('ERNSH');
END//
DELIMITER ;
CALL test();
