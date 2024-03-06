SELECT productid, MAX(TotalSaleValue - TotalReturnValue -TotalCostValue) AS profit
	FROM (SELECT sale_of_product.productID, SUM(sale_of_product.quantity*sale_of_product.value) AS TotalSaleValue, 
			SUM(product_supply.value*product_return.quantity) AS TotalReturnValue, 
			SUM(product_supply.value*(sale_of_product.quantity-product_return.quantity)) AS TotalCostValue
			FROM product_return LEFT OUTER JOIN sale_of_product ON product_return.saleid = sale_of_product.saleid 
			LEFT OUTER JOIN product_supply ON sale_of_product.productid = product_supply.productid
			GROUP BY sale_of_product.productID)
GROUP BY productid;