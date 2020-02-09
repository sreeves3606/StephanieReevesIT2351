UPDATE products
SET UnitPrice = UnitPrice * .05
WHERE UnitsInStock < 50;