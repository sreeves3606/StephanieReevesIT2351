SELECT LastName, FirstName, TitleOfCourtesy, CONCAT(TitleOfCourtesy, '  ', FirstName, '  ', LastName) 
AS 'Employee Name', DATE_FORMAT(HireDate, '%m-%d-%y') AS 'Hired', DATEDIFF(HireDate, BirthDate) AS 'Years Employed'
FROM employees
ORDER BY LastName;