SELECT ProductName, order_details.UnitPrice, Quantity
FROM order_details
JOIN products ON order_details.ProductID = products.ProductID
WHERE order_details.UnitPrice > 20
ORDER BY ProductName;


