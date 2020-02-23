SELECT categories.CategoryName, COUNT(products.ProductID) AS 'Product Count', 
ROUND(MAX(products.UnitPrice), 2) AS 'Max. Price'
FROM products
JOIN categories ON products.CategoryID = categories.CategoryID
GROUP BY categories.CategoryName 
ORDER BY COUNT(products.ProductID)DESC




