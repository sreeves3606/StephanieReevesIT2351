USE StefReevesnorthwind;

DROP PROCEDURE IF EXISTS customerFreightByID;

-- Change statement delimiter from semicolon to double front slash
DELIMITER //

CREATE PROCEDURE customerFreightByID(
IN customerID_param VARCHAR(5)
)
BEGIN
  SELECT  ROUND(SUM(freight), 2) AS 'Total Freight'
  FROM orders
  WHERE customerID = customerID_param;
END//
-- Change statement delimiter from semicolon to double front slash
DELIMITER ;

CALL customerFreightByID('LINOD');

DROP PROCEDURE IF EXISTS test;
DELIMITER //

CREATE PROCEDURE test()
BEGIN
CALL customerFreightByID('RATTC');
CALL customerFreightByID('QUEEN');
CALL customerFreightByID('ERNSH');
END//
DELIMITER ;
CALL test();
