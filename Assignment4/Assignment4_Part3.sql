SELECT IF(GROUPING(categories.CategoryName), 'Grand Total', categories.CategoryName) AS 'Category', 
IF(GROUPING(products.ProductName), 'Total Product', products.ProductName) AS 'Product', 
SUM(order_details.Quantity) AS 'Total Quantity'
FROM products
JOIN categories ON products.CategoryID = categories.CategoryID
JOIN order_details ON categories.CategoryID = order_details.ProductID
GROUP BY categories.CategoryName, products.ProductName WITH ROLLUP


