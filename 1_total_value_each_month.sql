-- All sales with a month column
SELECT saleid, EXTRACT(MONTH FROM date) AS month, value
FROM sale NATURAL JOIN sale_of_product
WHERE EXTRACT(YEAR FROM date) = 2022
ORDER BY month;

-- Den totale værdi af salg grupperet i måneden
SELECT SUM(value*quantity) AS totalsalevalue, EXTRACT(MONTH FROM date) AS month
FROM sale NATURAL JOIN sale_of_product
WHERE EXTRACT(YEAR FROM date) = 2022
GROUP BY month
ORDER BY month ASC;