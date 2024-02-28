CREATE TABLE PRODUCT(
	PoductID INT PRIMARY KEY,
	CategoryID INT,
	Poductname VARCHAR(20),
	Description VARCHAR(20)

);
SELECT * FROM PRODUCT;



CREATE TABLE PRODUCT_CATEGORY(
	CategoryID INT PRIMARY KEY,
	Name VARCHAR(20),
	description VARCHAR(20)
	);



CREATE TABLE Supplier(
	SupplierVAT int,
	suppliername VARCHAR(20),
	Address VArchar(20),
	phone INT,
	Email Varchar(30)
	
);

	
)

CREATE TABLE Supply(
	invoiceID INT
	SupplierVAT INT,
	date Varchar(20)
	);

CREATE TABLE product_supply(
	invoiceID Int,
	ProductID INT,
	Quantity INT,
	value double);

CREATE TABLE Sale(
	SaleID INT,
	date varchar(20);

CREATE TABLE sale_of_product(
	SaleID INT,
	ProductID INT,
	Quantity INT,
	value INT);

CREATE TABLE Product_return(
	SaleID INT,
	ProductID INT
	date VARCHAR(20),
	Quantity INT);

CREATE TABLE Stock(
	ProductID INT,
	Quantity INT);



	


	
	
	
	



DROP TABLE product;