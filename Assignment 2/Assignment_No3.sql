SELECT products.ProductName, categories.CategoryName, suppliers.CompanyName
FROM products
JOIN categories ON products.CategoryID = categories.CategoryID
JOIN suppliers ON suppliers.SupplierID = products.SupplierID
ORDER BY categories.CategoryName AND products.ProductName;
