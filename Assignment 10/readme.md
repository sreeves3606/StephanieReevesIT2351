#**IT 2351**#
**Stephanie Reeves**

Assignment 10

Rationale for Order_Backup Event

I wanted to create backup event for the orders table, as it is a common database practice. It set it up to run on the 30th of every month and for the previous month's back-up to be deleted. The code is as follows:

DROP EVENT IF EXISTS orders_backup;

DELIMITER //
CREATE EVENT orders_backup
ON SCHEDULE EVERY 1 MONTH
STARTS '2020-04-30'
DO BEGIN
	DELETE FROM Orders WHERE action_date < NOW() - INTERVAL 1 MONTH;
END//

DELIMITER ;

I coded the event.
