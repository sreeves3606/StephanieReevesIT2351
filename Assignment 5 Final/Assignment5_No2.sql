SELECT CAST(OrderDate AS DATETIME) AS 'Full Date Time',
    CAST(OrderDate AS CHAR(7)) AS 'Year Month'
FROM orders