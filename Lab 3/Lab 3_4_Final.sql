USE StefReevesnorthwind;
CREATE OR REPLACE VIEW EmployeeReview
AS
SELECT CONCAT(e.LastName, ', ',e.FirstName) AS 'EmployeeName', c.CompanyName,
p.ProductName, DATE_FORMAT(o.OrderDate, '%m/%d/%y') AS 'OrderDate', od.Quantity
FROM employees e
JOIN orders o ON e.employeeID = o.EmployeeID
JOIN customers c ON o.customerID = c.CustomerID
JOIN order_details od ON od.OrderID = o.OrderID
JOIN products p ON p.ProductID = od.ProductID;

