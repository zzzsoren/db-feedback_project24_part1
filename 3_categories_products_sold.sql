SELECT categoryid, sum(quantity) 
FROM sale_of_product NATURAL JOIN product
GROUP BY categoryid;