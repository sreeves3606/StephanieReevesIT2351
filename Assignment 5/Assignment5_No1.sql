SELECT FORMAT(Freight, 1) AS 'Freight Format',
    CONVERT(Freight, SIGNED) AS 'Freight Convert',
    CAST(Freight AS SIGNED) AS 'Freight Cast'
FROM orders
