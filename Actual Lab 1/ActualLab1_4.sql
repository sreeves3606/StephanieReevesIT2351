SELECT suppliers.SupplierID AS 'Supplier ID', suppliers.CompanyName AS 'Supplier', suppliers.Country, products.ProductID AS 'Product ID', products.ProductName AS 'Product Name', 
ROUND(products.QuantityPerUnit * products.UnitPrice) AS 'Total Cost', categories.CategoryName AS 'Category Name'
FROM products
JOIN categories ON products.CategoryID = categories.CategoryID
JOIN suppliers ON suppliers.SupplierID = products.SupplierID
ORDER BY categories.CategoryName AND products.ProductName;