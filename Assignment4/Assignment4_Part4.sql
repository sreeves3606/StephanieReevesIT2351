SELECT products.ProductName AS 'Product', ROUND(products.UnitPrice, 2) AS 'List Price'
FROM products 
WHERE products.UnitPrice >
 (SELECT AVG(products.UnitPrice)
  FROM products)
ORDER BY products.UnitPrice DESC