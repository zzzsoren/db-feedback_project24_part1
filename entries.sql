-- INSERT INTO PRODUCT_RETURN (SaleID, ProductID, Date, Quantity) VALUES
-- Indsæt først kategorier
INSERT INTO PRODUCT_CATEGORY (CategoryID, Name, Description) VALUES
(1, 'Phones', 'phones anď phone accesories'),
(2, 'Laptops', 'laptops to take work with you on the go'),
(3, 'Tablets', 'who uses this shet. artists?'),
(5, 'Audio', 'audio equipment'),
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
(7, 7, 'Nintendo Switch', 'portable gaming console'),
(25, 7, 'Nintendo Controller', 'controller for nintendo'),
(26, 7, 'ASUS mouse', 'wireless gaming mouse'),
(8, 8, 'Netgear Nighthawk', 'wi-fi 6 router');

-- Indsæt først levenrandør
INSERT INTO SUPPLIER (SupplierVAT, SupplierName, Address, Phone, Email) VALUES
(21, 'Samsung Electronics', 'Samsung Town', '11111111', 'contact@samsung.com'),
(22, 'ASUS Global', 'ASUS Blvd', '22222222', 'support@asus.com'),
(23, 'Apple Inc.', 'Apple Park Way, Cupertino', '33333333', 'help@apple.com'),
(25, 'Sony Corporation', 'Sony City', '55555555', 'info@sony.com'),
(27, 'Nintendo Co., Ltd.', 'Nintendo HQ', '77777777', 'support@nintendo.com'),
(28, 'Netgear, Inc.', 'Netgear Way', '88888888', 'help@netgear.com'),
(30, 'Lenovo Inc', 'Lenovo Way', '11112222', 'message@lenovo.com'),
(31, 'Bose Inc', 'Bose Boulevard', '11113333', 'help@bose.com');

-- Derefter leveranser
INSERT INTO SUPPLY (InvoiceID, SupplierVAT, Date) VALUES
-- Telefoner leveret
(11, 21, '2022-01-01'),
(12, 23, '2022-01-01'),
(13, 23, '2022-01-01'),
(14, 23, '2022-01-01'),
(15, 21, '2022-01-01'),
(16, 21, '2022-01-01'),
-- Laptops leveret
(17, 22, '2022-01-01'),
(18, 23, '2022-01-01'),
(19, 30, '2022-01-01'),
(20, 30, '2022-01-01'),
(21, 21, '2022-01-01'),
--  Tablets leveret
(22, 23, '2022-01-01'),
(23, 23, '2022-01-01'),
(24, 21, '2022-01-01'),
(25, 30, '2022-01-01'),
-- Lyd udstyr leveret
(26, 25, '2022-01-01'),
(27, 25, '2022-01-01'),
(28, 31, '2022-01-01'),
-- Gaming udstyr leveret
(29, 27, '2022-01-01'),
(30, 27, '2022-01-01'),
(31, 22, '2022-01-01'),
(32, 28, '2022-01-01');

-- lager leveranser
-- Indsæt efter product og supply.
INSERT INTO PRODUCT_SUPPLY (InvoiceID, ProductID, Quantity, Value) VALUES
-- Telefoner 25 styk af 700,-
(11, 1, 25, 700),
(12, 11, 25, 700),
(13, 12, 25, 700),
(14, 13, 25, 700),
(15, 14, 25, 700),
(16, 15, 25, 700),
-- Laptops 10 styk af 1700,-
(17, 2, 10, 1700),
(18, 16, 10, 1700),
(19, 17, 10, 1700),
(20, 18, 10, 1700),
(21, 19, 10, 1700),
-- Tablets 5 styk af 600,-
(22, 3, 5, 600),
(23, 20, 5, 600),
(24, 21, 5, 600),
(25, 22, 5, 600),
-- Lyd 5 styk af 300,-
(26, 5, 15, 300),
(27, 23, 15, 300),
(28, 24, 15, 300),
-- Gaming 12 styk
(29, 7, 12, 500),
(30, 25, 12, 250),
(31, 26, 12, 200),
-- Netværk 30 styk af 15,-
(32, 8, 30, 150);

-- februar 2023.
INSERT INTO SALE (SaleID, Date) VALUES
-- Telefoner solgt i første halvår
(50, '2022-01-03'),
(51, '2022-03-03'),
(52, '2022-04-03'),
(53, '2022-05-03'),
(54, '2022-06-03'),
(55, '2022-07-03'),

-- Laptops solgt i først 3 kvartaler
(57, '2022-01-25'),
(58, '2022-02-25'),
(59, '2022-03-25'),
(60, '2022-04-25'),
(61, '2022-05-25'),
(62, '2022-06-25'),
(63, '2022-07-25'),
(64, '2022-08-25'),
(65, '2022-09-25'),

-- Tablets solgt i sidste halvår
(66, '2022-07-25'),
(67, '2022-08-25'),
(68, '2022-09-25'),
(69, '2022-10-25'),
(70, '2022-11-25'),
(71, '2022-12-25');

INSERT INTO SALE_OF_PRODUCT (SaleID, ProductID, Quantity, Value) VALUES
-- Telefoner solgt
(50, 1, 5, 1000),
(51, 11, 3, 2000),
(52, 14, 8, 1200),
(53, 1, 3, 1000),
(54, 13, 2, 800),
(55, 12, 1, 2500),
-- Laptops solgt
(57, 2, 5, 2700),
(58, 16, 2, 3000),
(59, 17, 8, 3500),
(60, 17, 1, 3500),
(61, 19, 3, 2400),
(62, 16, 1, 3000),
(63, 2, 2, 2700),
(64, 17, 2, 3500),
(65, 19, 3, 2400),
-- Tablets solgt
(66, 3, 2, 1500),
(67, 20, 6, 1100),
(68, 21, 3, 1200),
(69, 3, 3, 1500),
(70, 20, 1, 1100),
(71, 21, 2, 1200);

INSERT INTO PRODUCT_RETURN (SaleID, ProductID, Date, Quantity) VALUES
-- Returner telefoner
(50, 1, '2022-02-03', 3),
(52, 14, '2022-05-03', 8),
(55, 12, '2022-08-03', 1),
-- Returner laptops
(57, 2, '2022-02-25', 4),
(61, 17, '2022-06-25', 3),

-- Returner tablets
(67, 20, '2022-09-25', 4);