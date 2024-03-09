-- Finder den category der sælger færrest vare.
(SELECT categoryid, sum(quantity) AS numberofsolditems
FROM sale_of_product NATURAL JOIN product
GROUP BY categoryid
ORDER BY numberofsolditems ASC
LIMIT 1)
UNION
-- Finder den category der sælger flest vare.
(SELECT categoryid, sum(quantity) AS numberofsolditems
FROM sale_of_product NATURAL JOIN product
GROUP BY categoryid
ORDER BY numberofsolditems DESC
LIMIT 1)