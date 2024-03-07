SELECT categoryid, sum(quantity) AS NumberOfSoldItems
FROM sale_of_product NATURAL JOIN product
GROUP BY categoryid;