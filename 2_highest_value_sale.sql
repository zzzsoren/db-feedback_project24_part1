-- SELECT saleid, value*quantity
-- FROM sale_of_product 
-- WHERE value*quantity = (SELECT MAX(value*quantity) from sale_of_product);

-- Finder det salg med laveste beløb
(SELECT saleid, SUM(value*quantity) AS salevalue
FROM sale_of_product
GROUP BY saleid
ORDER BY salevalue ASC
LIMIT 1)
UNION
-- Finder det salg med højeste beløb
(SELECT saleid, SUM(value*quantity) AS salevalue
FROM sale_of_product
GROUP BY saleid
ORDER BY salevalue DESC
LIMIT 1)