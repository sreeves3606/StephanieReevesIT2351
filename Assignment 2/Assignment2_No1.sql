SELECT CompanyName, DATE_FORMAT (ShippedDate, '%m /%d /%y ') AS 'ShipDate', Freight 
FROM orders
JOIN customers ON orders.CustomerID = customers.CustomerID
ORDER BY CompanyName ASC;
