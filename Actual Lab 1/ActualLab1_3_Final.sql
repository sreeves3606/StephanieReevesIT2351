SELECT suppliers.CompanyName AS 'Customer', products.ProductName AS 'Product', Round (order_details.UnitPrice * (1 + Discount) * Quantity) AS 'Total Price'
FROM orders
JOIN order_details ON orders.OrderID = order_details.OrderID
JOIN products ON order_details.ProductID = products.ProductID
JOIN suppliers ON products.SupplierID = suppliers.SupplierID
ORDER BY suppliers.CompanyName AND products.ProductName;