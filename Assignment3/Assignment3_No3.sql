CREATE TABLE customers_copy AS
SELECT * 
FROM customers
WHERE country = 'France';