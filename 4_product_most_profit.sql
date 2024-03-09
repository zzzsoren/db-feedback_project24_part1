-- This works
SELECT productid, SUM(TotalSaleValue - TotalReturnValue -TotalCostValue) AS profit
	FROM (SELECT sale_of_product.productID, SUM((sale_of_product.quantity-product_return.quantity)*(sale_of_product.value-product_supply.value)) AS revenue
			FROM product_return 
		    LEFT OUTER JOIN sale_of_product ON product_return.saleid = sale_of_product.saleid 
			LEFT OUTER JOIN product_supply ON sale_of_product.productid = product_supply.productid
			GROUP BY sale_of_product.productID)
GROUP BY productid;

-- Total sale value of each sold product type
SELECT sale_of_product.productID, SUM((sale_of_product.quantity)*(sale_of_product.value-product_supply.value)) AS salesvalue
FROM sale_of_product 
LEFT OUTER JOIN product_supply ON sale_of_product.productid = product_supply.productid

-- Total returned value of products
LEFT OUTER JOIN (SELECT DISTINCT sale_of_product.productID, product_return.quantity*sale_of_product.value as returnvalue
FROM product_return
LEFT OUTER JOIN sale_of_product ON sale_of_product.productid = product_return.productid) return_value
GROUP BY sale_of_product.productID;

SELECT * FROM sale_of_product
SELECT * FROM product_supply
SELECT * FROM product_return

