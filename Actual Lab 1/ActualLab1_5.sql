SELECT suppliers.CompanyName AS 'Supplier Name', categories.CategoryName AS 'Category Name', 
ROUND(products.QuantityPerUnit * products.UnitPrice) AS 'Product Price', products.UnitsInStock AS 
'Units in Stock', products.UnitsOnOrder AS 'Units on Order', products.ReorderLevel AS 'Reorder Level',
products.Discontinued 
FROM products
JOIN categories ON products.CategoryID = categories.CategoryID
JOIN suppliers ON suppliers.SupplierID = products.SupplierID
WHERE UnitsInStock < 10
ORDER BY products.UnitPrice;