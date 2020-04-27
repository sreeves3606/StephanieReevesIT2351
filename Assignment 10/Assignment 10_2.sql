DROP EVENT IF EXISTS orders_backup;

DELIMITER //
CREATE EVENT orders_backup
ON SCHEDULE EVERY 1 MONTH
STARTS '2020-04-30'
DO BEGIN
	DELETE FROM Orders WHERE action_date < NOW() - INTERVAL 1 MONTH;
END//

DELIMITER ;