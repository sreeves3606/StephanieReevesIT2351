SELECT suppliers.CompanyName, products.ProductName, SUM(order_details.Quantity) AS 'Total Quantity/Product'
FROM suppliers
JOIN products ON suppliers.SupplierID = products.productID
JOIN order_details ON products.ProductID = order_details.ProductID
GROUP BY suppliers.CompanyName, products.ProductName 
