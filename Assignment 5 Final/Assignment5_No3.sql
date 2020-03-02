SELECT CompanyName AS 'Company Name',
	ContactTitle AS 'Contact Title',
	(CONCAT(LEFT(ContactTitle, 1), LOCATE(' ', RIGHT(ContactTitle, -1)))) AS 'Abbreviated Title',
    SUBSTR(suppliers.phone, 2, 3) AS 'Area', suppliers.country AS 'Country' 
FROM suppliers
ORDER BY CompanyName;