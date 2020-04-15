USE StefReevesnorthwind;

DROP PROCEDURE IF EXISTS customerFreightByID;

-- Change statement delimiter from semicolon to double front slash
DELIMITER //

CREATE PROCEDURE customerFreightByID()
BEGIN
  DECLARE customerFreightByID_var   DECIMAL(9, 2);
  
  SELECT  ROUND(SUM(freight), 2) AS 'Total Freight'
  INTO customerFreightByID_var
  FROM orders
  WHERE CustomerID = 'LAMAI';
  
  SELECT CONCAT(customerFreightByID_var, ' Total Freight Amount') AS Message;
END//

-- Change statement delimiter from semicolon to double front slash
DELIMITER ;

CALL customerFreightByID();