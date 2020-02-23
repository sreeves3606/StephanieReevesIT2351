SELECT COUNT(orders.OrderID) AS 'Number of Orders',
ROUND(SUM(Freight), 2) AS 'Total Freight',
ROUND(AVG(Freight), 2) AS 'Average Freight Per Order'
FROM orders
