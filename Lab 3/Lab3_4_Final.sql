CREATE OR REPLACE VIEW EmployeeReview
AS
SELECT employees.LastName, employees.FirstName, customers.CompanyName,
products.ProductName, orders.OrderDate, order_details.Quantity
FROM employees
JOIN customers ON employees.EmployeeID = customers.CustomerID
JOIN orders ON customers.CustomerID = orders.OrderID
JOIN order_details ON orders.OrderID = order_details.OrderID
JOIN products ON order_details.ProductID = products.ProductID;