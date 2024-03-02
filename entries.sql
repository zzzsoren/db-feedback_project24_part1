INSERT INTO PRODUCT_CATEGORY (CategoryID, Name, Description) VALUES
(1, 'Smartphones', 'Handheld mobile devices'),
(2, 'Laptops', 'Portable computers'),
(3, 'Tablets', 'Touchscreen mobile devices larger than smartphones'),
(4, 'Wearables', 'Wearable technology like smartwatches'),
(5, 'Audio', 'Audio equipment including headphones and speakers'),
(6, 'Cameras', 'Digital cameras and photography accessories'),
(7, 'Gaming', 'Gaming consoles and accessories'),
(8, 'Networking', 'Networking devices like routers and modems'),
(9, 'Accessories', 'Electronic accessories like cables and chargers'),
(10, 'Home Appliances', 'Small electronic home appliances');


INSERT INTO PRODUCT (ProductID, CategoryID, Productname, Description) VALUES
(1, 1, 'Phone A', 'Latest model of Phone A'),
(2, 2, 'Laptop B', 'Gaming Laptop B with high performance'),
(3, 3, 'Tablet C', 'Tablet C for all your multimedia needs'),
(4, 4, 'Smartwatch D', 'Smartwatch D with fitness tracking'),
(5, 5, 'Headphones E', 'Noise cancelling headphones E'),
(6, 6, 'Camera F', 'Digital Camera F with 4K support'),
(7, 7, 'Console G', 'Gaming Console G for the ultimate gaming experience'),
(8, 8, 'Router H', 'High-speed Router H for your home network'),
(9, 9, 'Charger I', 'Fast charging adapter I'),
(10, 10, 'Microwave J', 'Compact Microwave J for quick meals');

INSERT INTO SUPPLIER (SupplierVAT, SupplierName, Address, Phone, Email) VALUES
(123456780, 'ElectroMax', 'Tech Valley 1', '1234567890', 'info@electromax.com'),
(234567890, 'TechSupplies', 'Innovation Road 2', '2345678901', 'support@techsupplies.com'),
(345678901, 'GadgetWorld', 'Gadget St. 3', '3456789012', 'contact@gadgetworld.com'),
(456789012, 'SmartTech', 'Smart Ave 4', '4567890123', 'sales@smarttech.com'),
(567890123, 'PlayGround', 'Gaming Ln 5', '5678901234', 'help@playground.com'),
(678901234, 'ConnectPlus', 'Network Rd 6', '6789012345', 'service@connectplus.com'),
(789012345, 'AudioHub', 'Sound Cir 7', '7890123456', 'inquiry@audiohub.com'),
(890123456, 'WatchOut', 'Time Sq 8', '8901234567', 'assist@watchout.com'),
(901234567, 'LightSpeed', 'Fast Lane 9', '9012345678', 'hello@lightspeed.com'),
(012345678, 'HomeTech', 'Domestic Dr 10', '0123456789', 'home@hometech.com');

-- Antager at datoen afspejler leverancer over de første 10 dage af 2023.
INSERT INTO SUPPLY (InvoiceID, SupplierVAT, Date) VALUES
(1, 123456780, '2023-01-01'),
(2, 234567890, '2023-01-02'),
(3, 345678901, '2023-01-03'),
(4, 456789012, '2023-01-04'),
(5, 567890123, '2023-01-05'),
(6, 678901234, '2023-01-06'),
(7, 789012345, '2023-01-07'),
(8, 890123456, '2023-01-08'),
(9, 901234567, '2023-01-09'),
(10, 012345678, '2023-01-10');

-- Antager at kvantiteten og værdien varierer baseret på produkttypen.
INSERT INTO PRODUCT_SUPPLY (InvoiceID, ProductID, Quantity, Value) VALUES
(1, 1, 50, 50000),
(2, 2, 30, 60000),
(3, 3, 40, 20000),
(4, 4, 60, 24000),
(5, 5, 70, 21000),
(6, 6, 25, 25000),
(7, 7, 45, 45000),
(8, 8, 35, 14000),
(9, 9, 80, 8000),
(10, 10, 20, 10000);

-- Antager at salgsdatoerne er spredt ud over februar 2023.
INSERT INTO SALE (SaleID, Date) VALUES
(1, '2023-02-01'),
(2, '2023-02-03'),
(3, '2023-02-05'),
(4, '2023-02-07'),
(5, '2023-02-09'),
(6, '2023-02-11'),
(7, '2023-02-13'),
(8, '2023-02-15'),
(9, '2023-02-17'),
(10, '2023-02-19');

-- Antager at hver salg omfatter varierende kvantiteter og værdier.
INSERT INTO SALE_OF_PRODUCT (SaleID, ProductID, Quantity, Value) VALUES
(1, 1, 1, 1000),
(2, 2, 1, 2000),
(3, 3, 2, 1000),
(4, 4, 2, 1200),
(5, 5, 3, 700),
(6, 6, 1, 2500),
(7, 7, 1, 4500),
(8, 8, 2, 700),
(9, 9, 4, 200),
(10, 10, 1, 500);


-- Antager at nogle produkter returneres efter køb.
INSERT INTO PRODUCT_RETURN (SaleID, ProductID, Date, Quantity) VALUES
(1, 1, '2023-02-02', 1),
(3, 3, '2023-02-06', 1),
(5, 5, '2023-02-10', 2),
(7, 7, '2023-02-14', 1),
(9, 9, '2023-02-18', 1);

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
