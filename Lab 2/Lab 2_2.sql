SELECT orders.OrderID AS 'Order Date', DATE_FORMAT(orders.OrderDate, '%m/%d/%y') AS 'Order Date', orders.Freight AS 'Freight'
FROM orders
WHERE CustomerID IN
	(SELECT CustomerID
		FROM customers
        WHERE Country = 'Germany' OR Country = 'Mexico' OR Country = 'Spain')
ORDER BY orders.Freight DESC