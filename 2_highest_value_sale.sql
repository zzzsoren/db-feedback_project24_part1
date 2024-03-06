SELECT saleid, value*quantity
FROM sale_of_product 
WHERE value*quantity = (SELECT MAX(value*quantity) from sale_of_product);