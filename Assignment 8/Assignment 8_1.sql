USE StefReevesnorthwind;

DROP PROCEDURE IF EXISTS freightsum;

-- Change statement delimiter from semicolon to double front slash
DELIMITER //

CREATE PROCEDURE freightsum()
BEGIN
  DECLARE freight_var   DECIMAL(9, 2);
  
  SELECT  ROUND(SUM(freight), 2) AS 'Total Freight'
  INTO freight_var
  FROM orders
  WHERE CustomerID = 'RATTC';
  
  SELECT CONCAT(freight_var, ' total freight amount') AS message;
END//

-- Change statement delimiter from semicolon to double front slash
DELIMITER ;

CALL freightsum();