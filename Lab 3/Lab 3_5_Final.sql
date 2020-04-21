SELECT IF(GROUPING(employeeName) = 1, 'Employee Totals', employeeName) AS EmployeeName, 
IF(GROUPING(companyName) = 1, 'Company Subtotal', companyName) AS CompanyName, 
SUM(quantity) AS 'Quantity Totals'  
FROM EmployeeReview
GROUP BY employeeName, companyName WITH ROLLUP ORDER BY employeeName, companyName;

