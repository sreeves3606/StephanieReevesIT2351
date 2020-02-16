SELECT orders.OrderID, customers.CustomerID, customers.CompanyName AS 'Company Name', customers.Country, employees.EmployeeID, CONCAT(TitleOfCourtesy, '  ', FirstName, '  ', LastName) 
AS 'Employee Name'
FROM employees
JOIN orders ON employees.EmployeeID = orders.EmployeeID
JOIN customers ON customers.CustomerID = orders.CustomerID
WHERE customers.Country = 'Germany'
ORDER BY LastName;