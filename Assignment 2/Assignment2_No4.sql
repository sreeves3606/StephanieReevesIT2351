SELECT suppliers.CompanyName, products.ProductName, 
DATE_FORMAT(orders.ShippedDate, '%m/%d/%Y') AS 'ShipDate', order_details.Quantity 
FROM orders
JOIN order_details ON orders.OrderID = order_details.OrderID
JOIN products ON order_details.ProductID = products.ProductID
JOIN suppliers ON products.SupplierID = suppliers.SupplierID
ORDER BY suppliers.CompanyName AND products.ProductName;
                  

 