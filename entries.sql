-- Indsæt først kategorier
INSERT INTO PRODUCT_CATEGORY (CategoryID, Name, Description) VALUES
(1, 'Smartphones', 'Handheld mobile devices'),
(2, 'Laptops', 'Portable computers'),
(3, 'Tablets', 'Touchscreen mobile devices'),
(4, 'Wearables', 'Wearable technology'),
(5, 'Audio', 'Audio equipment'),
(6, 'Cameras', 'Digital cameras and photography accessories'),
(7, 'Gaming', 'Gaming consoles, video games, gaming accessories, and VR equipment'),
(8, 'Networking', 'Networking devices'),
(9, 'Accessories', 'Electronic accessories including cables, chargers, cases, and power banks'),
(10, 'Home Appliances', 'Home appliances for kitchen, cleaning, and home comfort');

-- Derefter produkter
INSERT INTO PRODUCT (ProductID, CategoryID, Productname, Description) VALUES
(1, 1, 'Samsung Galaxy S23', '8/256GB (black)'),
(11, 1, 'Iphone 13', '128GB Midnight')
(2, 2, 'ASUS ROG Strix G16', 'I914900HX, RTX 4080, 32 GB DDR5 RAM'),
(3, 3, 'iPad Pro 12.9', 'Liquid Retina XDR-skærm, M2-chip octa-core'),
(4, 4, 'Garmin Fenix 7X', 'Titanium Solar smartwatch'),
(5, 5, 'Sony WH-1000XM4', 'NC headphones'),
(6, 6, 'Canon EOS', '8K video recording'),
(7, 7, 'Nintendo Switch', 'Portable gaming console'),
(8, 8, 'Netgear Nighthawk', 'Wi-Fi 6 router'),
(9, 9, 'Anker PowerCore', 'Powerbank with 10000mAh capacity'),
(10, 10, 'Dyson V11', 'Cordfree vacuum cleaner');

-- Indsæt først levenrandør
INSERT INTO SUPPLIER (SupplierVAT, SupplierName, Address, Phone, Email) VALUES
(200001, 'Samsung Electronics', 'Samsung Town', '11111111', 'contact@samsung.com'),
(200002, 'ASUS Global', 'ASUS Blvd', '22222222', 'support@asus.com'),
(200003, 'Apple Inc.', 'Apple Park Way, Cupertino', '33333333', 'help@apple.com'),
(200004, 'Garmin Ltd.', 'Garmin HQ', '44444444', 'service@garmin.com'),
(200005, 'Sony Corporation', 'Sony City', '55555555', 'info@sony.com'),
(200006, 'Canon Inc.', 'Canon Towers', '66666666', 'contact@canon.com'),
(200007, 'Nintendo Co., Ltd.', 'Nintendo HQ', '77777777', 'support@nintendo.com'),
(200008, 'Netgear, Inc.', 'Netgear Way', '88888888', 'help@netgear.com'),
(200009, 'Anker Innovations', 'Anker St, Shenzhen', '99999999', 'support@anker.com'),
(200010, 'Dyson Ltd.', 'Dyson Campus', '00000000', 'contact@dyson.com');

-- Derefter leveranser
-- De første 10 dage af 2023.
INSERT INTO SUPPLY (InvoiceID, SupplierVAT, Date) VALUES
(1001, 200001, '2023-01-01'),
(1002, 200002, '2023-01-02'),
(1003, 200003, '2023-01-03'),
(1004, 200004, '2023-01-04'),
(1005, 200005, '2023-01-05'),
(1006, 200006, '2023-01-06'),
(1007, 200007, '2023-01-07'),
(1008, 200008, '2023-01-08'),
(1009, 200009, '2023-01-09'),
(1010, 200010, '2023-01-10');

-- Antager at kvantiteten og værdien varierer baseret på produkttypen.
-- Indsæt efter product og supply.
INSERT INTO PRODUCT_SUPPLY (InvoiceID, ProductID, Quantity, Value) VALUES
(1001, 1, 100, 50000),
(1002, 2, 50, 80000),
(1003, 3, 75, 40000),
(1004, 4, 80, 24000),
(1005, 5, 120, 30000),
(1006, 6, 60, 60000),
(1007, 7, 200, 50000),
(1008, 8, 90, 20000),
(1009, 9, 150, 15000),
(1010, 10, 70, 35000);


-- Antager at salgsdatoerne er spredt ud over februar 2023.
INSERT INTO SALE (SaleID, Date) VALUES
(2001, '2023-02-01'),
(2002, '2023-02-03'),
(2003, '2023-02-05'),
(2004, '2023-02-07'),
(2005, '2023-02-09'),
(2006, '2023-02-11'),
(2007, '2023-02-13'),
(2008, '2023-02-15'),
(2009, '2023-02-17'),
(2010, '2023-02-19');

-- Antager at hver salg omfatter varierende kvantiteter og værdier.
-- 
INSERT INTO SALE_OF_PRODUCT (SaleID, ProductID, Quantity, Value) VALUES
(2001, 1, 2, 2000),
(2002, 2, 1, 2000),
(2003, 3, 3, 3000),
(2004, 4, 2, 1000),
(2005, 5, 4, 1200),
(2006, 6, 1, 10000),
(2007, 7, 2, 5000),
(2008, 8, 1, 1000),
(2009, 9, 3, 450),
(2010, 10, 1, 3500);

-- Antager at nogle produkter returneres efter køb.
INSERT INTO PRODUCT_RETURN (SaleID, ProductID, Date, Quantity) VALUES
(2001, 1, '2023-02-02', 1),
(2003, 3, '2023-02-06', 1),
(2005, 5, '2023-02-10', 2),
(2007, 7, '2023-02-14', 1),
(2009, 9, '2023-02-18', 2);

-- Initial lagerbeholdning baseret på indkøb minus salg og returneringer.
INSERT INTO STOCK (ProductID, Quantity) VALUES
(1, 49),
(2, 29),
(3, 37),
(4, 58),
(5, 67),
(6, 24),
(7, 44),
(8, 33),
(9, 76),
(10, 19);
