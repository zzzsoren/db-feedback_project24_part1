-- INSERT INTO PRODUCT_RETURN (SaleID, ProductID, Date, Quantity) VALUES
-- Indsæt først kategorier
INSERT INTO PRODUCT_CATEGORY (CategoryID, Name, Description) VALUES
(1, 'Phones', 'phones anď phone accesories'),
(2, 'Laptops', 'laptops to take work with you on the go'),
(3, 'Tablets', 'who uses this shet. artists?'),
(5, 'Audio and Picture', 'sound equipment, and picture equipment'),
(6, 'Photo', 'cameras and photo accessories'),
(7, 'Gaming', 'consoles, games, and VR'),
(8, 'Networking', 'notworking devices');

-- Derefter produkter
INSERT INTO PRODUCT (ProductID, CategoryID, Productname, Description) VALUES
(1, 1, 'Samsung Galaxy S23', '256gb)'),
(11, 1, 'Apple iPhone 13', '128gb'),
(12, 1, 'Apple iPhone 15', '256gb'),
(13, 1, 'Apple iPhone 15 Pro', '256gb'),
(14, 1, 'Samsung Galaxy S24 Ultra', '512gb'),
(15, 1, 'Samsung Galaxy A54', '128gb'),
(2, 2, 'ASUS ROG Strix G16', 'rtx4080'),
(16, 2, 'Apple MacBook Pro', 'M3 Pro'),
(17, 2, 'Lenovo Legion Pro 7', 'rtx4090'),
(18, 2, 'Lenovo Ideapad 5', 'rtx4070'),
(19, 2, 'Apple MacBook Air', 'M2'),
(3, 3, 'iPad Pro', 'liquid retina xdr'),
(20, 3, 'iPad Air', 'liquid retine xdr'),
(21, 3, 'Samsung Galaxy S9', '128gb'),
(22, 3, 'Lenovo P12', '128gb'),
(5, 5, 'Sony WH-1000XM4', 'on-ear nc headphones'),
(23 , 5, 'Sony WF-1000XM5', 'in-ear nc headphones'),
(24, 5, 'Bose Noice Canceling 700', 'on-ear nc headphones'),
(6, 6, 'Canon EOS', '8k recording'),
(7, 7, 'Nintendo Switch', 'portable gaming console'),
(25, 7, 'Xbox Elite Series 2', 'xbox controller'),
(26, 7, 'Razer Cobra Pro', 'wireless gaming mouse'),
(8, 8, 'Netgear Nighthawk', 'wi-fi 6 router');

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
(200009, 'Anker Innovations', 'Anker St', '99999999', 'support@anker.com'),
(200010, 'Dyson Ltd.', 'Dyson Campus', '00000000', 'contact@dyson.com'),
(200011, 'Lenovo Inc', 'Lenovo Way', '11112222', 'message@lenovo.com'),
(200012, 'Bose Inc', 'Bose Boulevard', '11113333', 'help@bose.com');

-- Derefter leveranser
INSERT INTO SUPPLY (InvoiceID, SupplierVAT, Date) VALUES
(1001, 200001, '2022-01-01'),
(1002, 200002, '2022-01-02'),
(1003, 200003, '2022-01-03'),
(1004, 200004, '2022-01-04'),
(1005, 200005, '2022-01-05'),
(1006, 200006, '2022-01-06'),
(1007, 200007, '2022-01-07'),
(1008, 200008, '2022-01-08'),
(1009, 200009, '2022-01-09'),
(1010, 200010, '2022-01-10'),
(1011, 200001, '2022-03-01'),
(1012, 200003, '2022-04-01'),
(1013, 200005, '2022-05-01'),
(1014, 200007, '2022-06-01'),
(1015, 200009, '2022-07-01'),
(1016, 200011, '2022-08-01'),
(1017, 200002, '2022-09-01'),
(1018, 200004, '2022-10-01'),
(1019, 200006, '2022-11-01'),
(1020, 200008, '2022-12-01');

-- lager leveranser
-- Indsæt efter product og supply.
INSERT INTO PRODUCT_SUPPLY (InvoiceID, ProductID, Quantity, Value) VALUES
(1001, 1, 100, 50000),
(1002, 2, 50, 80000),
(1003, 3, 75, 40000),
(1005, 5, 120, 30000),
(1006, 6, 60, 60000),
(1007, 7, 200, 50000),
(1008, 8, 90, 20000),
(1011, 1, 100, 700),
(1012, 11, 50, 800),
(1013, 5, 75, 350),
(1014, 7, 100, 300),
(1015, 23, 50, 200),
(1016, 16, 40, 1200),
(1017, 2, 60, 1500),
(1019, 6, 80, 1000),
(1020, 8, 90, 500);

-- februar 2023.
INSERT INTO SALE (SaleID, Date) VALUES
(3001, '2022-02-14'),
(3002, '2022-03-17'),
(3003, '2022-04-30'),
(3004, '2022-05-29'),
(3005, '2022-06-18'),
(3006, '2022-07-22'),
(3007, '2022-08-15'),
(3008, '2022-09-05'),
(3009, '2022-10-31'),
(3010, '2022-11-25'),
(3011, '2022-12-20');

INSERT INTO SALE_OF_PRODUCT (SaleID, ProductID, Quantity, Value) VALUES
(3001, 1, 20, 14000),
(3002, 2, 15, 22500),
(3003, 5, 25, 8750),
(3004, 7, 30, 9000),
(3005, 23, 20, 4000),
(3006, 16, 10, 12000),
(3007, 14, 8, 9600),
(3008, 11, 15, 12000),
(3010, 6, 25, 25000),
(3011, 8, 35, 17500);