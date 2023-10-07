
-- SQL ASSIGNMENT 1 
--Basics Questions:-

-- 1.Create Brands database
CREATE DATABASE Brands;
-- Create Products database
CREATE DATABASE Products;

--2) Create two tables in SQL Server  name  as ITEMS_Table in Brands database and PRODUCT_Table in Products database.

-- Switch to Brands database
USE BRANDS;
-- Create ITEMS_Table
CREATE TABLE ITEMS_Table(
    Iteam_ID INT PRIMARY KEY,
	iteam_description VARCHAR(100),
	vendor_nos INT,
	vendor_name VARCHAR(100),
	bottle_size INT,
	bottle_price DECIMAL(10,2)
);
-- Switch to Products database
USE PRODUCTS;
-- Create PRODUCT_Table
CREATE TABLE PRODUCT_Table(
    Product_ID INT PRIMARY KEY,
	Country VARCHAR(100),
	Product VARCHAR(100),
	Units_Sold DECIMAL(10,1),
	Manufacturing_Price DECIMAL(10,2),
	Sale_Price DECIMAL(10,2),
	Gross_Sales DECIMAL(12,2),
	Sales DECIMAL(12,2),
	COGS DECIMAL(12,2),
	Profit DECIMAL(12,2),
	Date DATE,
	Month_Number INT,
	Month_Name VARCHAR(20),
	Year INT
);
--3)  After Creating both the tables Add records in that tables (records are available above)

-- Switch to Brands database
USE Brands;
-- Insert records into Brands_Table
INSERT INTO ITEMS_Table(Iteam_ID,iteam_description,vendor_nos,vendor_name,bottle_size,bottle_price)
VALUES
    (1,'Travis Hasse Apple Pie',305,'Mhw Ltd',750,977),
	(2,'D''aristi Xtabentun', 391, 'Anchor Distilling (preiss Imports)', 750, 14.12),
	(3,'Hiram Walker Peach Brandy', 370, 'Pernod Ricard Usa/austin Nichols', 1000, 6.50),
	(4,'Oak Cross Whisky', 305, 'Mhw Ltd', 750, 25.33),
	(5,'Uv Red(cherry) Vodka', 380, 'Phillips Beverage Company', 200, 1.97),
	(6,'Heaven Hill Old Style White Label', 259, 'Heaven Hill Distilleries Inc.', 750, 6.37), 
    (7,'Hyde Herbal Liqueur', 194, 'Fire Tail Brands Llc', 750, 5.06), 
    (8,'Dupont Calvados Fine Reserve', 403, 'Robert Kacher Selections', 750, 23.61); 
-- Switch to Products database
USE Products;
-- Insert records into PRODUCT_Table
INSERT INTO PRODUCT_Table(Product_ID,Country,Product,Units_Sold,Manufacturing_Price,Sale_Price,Gross_Sales,Sales,COGS,Profit,Date,Month_Number,Month_Name,Year)
VALUES
   (1, 'Canada', 'Carretera', 1618.5, 3.00, 20.00, 32370.00, 32370.00, 16185.00, 16185.00, '01-01-2014', 1, 'January', 2014),
(2,'Germany', 'Carretera', 1321, 3.00, 20.00, 26420.00, 26420.00, 13210.00, 13210.00, '01-01-2014', 1,'January', 2015),
(3,'France', 'Carretera', 2178, 3.00, 15.00, 32670.00, 32670.00, 21780.00, 10890.00, '01-06-2014', 6, 'June', 2016),
(4,'Germany', 'Carretera', 888, 3.00, 15.00, 13320.00, 13320.00, 8880.00, 4440.00, '01-06-2014', 6, 'June', 2017),
(5,'Mexico',' Carretera', 2470, 3.00, 15.00, 37050.00, 37050.00, 24700.00, 12350.00, '01-06-2014', 6, 'June', 2018),
(6,'Germany', 'Carretera', 1513, 3.00, 350.00, 529550.00, 529550.00, 393380.00, 136170.00, '01-12-2014', 12, 'December', 2019),
(7,'Germany', 'Montana', 921, 5.00, 15.00, 13815.00, 13815.00, 9210.00, 4605.00, '01-03-2014', 3, 'March', 2020),
(8,'Canada', 'Montana', 2518, 5.00, 12.00, 30216.00, 30216.00, 7554.00, 22662.00, '01-06-2014', 6, 'June', 2021);

-- Check records in ITEMS_Table
USE Brands; -- Make sure you are in the Brands database
SELECT * FROM ITEMS_Table;

-- Check records in PRODUCT_Table
USE Products; -- Make sure you are in the Products database
SELECT * FROM PRODUCT_Table;


-- Switch to Products database
USE Products;
--4) Delete those product having the Units Sold 1618.5 , 888 and 2470.

-- Delete records with Units Sold 1618.5, 888, and 2470
DELETE FROM PRODUCT_Table WHERE Units_Sold IN (1618.5, 888, 2470);

--lets Check once again records in PRODUCT_Table are delete or not
USE Products; -- Make sure you are in the Products database
SELECT * FROM PRODUCT_Table;


--5) DROP the table and Create it again.

--Switch to Brands database
USE Brands;
--Drop ITEMS_Table
DROP TABLE ITEMS_Table;



--CREATE ITEMS_Table again
CREATE TABLE ITEMS_Table(
    Item_ID INT PRIMARY KEY,
	item_description VARCHAR(100),
	vendor_nos INT,
	vendor_name VARCHAR(100),
	bottle_size INT,
	bottle_price DECIMAL(10,2)
);
-- Check records in ITEMS_Table
USE Brands; -- Make sure you are in the Brands database
SELECT * FROM ITEMS_Table;

-- So here we are adding record again of ITEM_Table
-- Switch to Brands database
USE Brands;
-- Insert records into Brands_Table
INSERT INTO ITEMS_Table(Item_ID,item_description,vendor_nos,vendor_name,bottle_size,bottle_price)
VALUES
    (1,'Travis Hasse Apple Pie',305,'Mhw Ltd',750,977),
	(2,'D''aristi Xtabentun', 391, 'Anchor Distilling (preiss Imports)', 750, 14.12),
	(3,'Hiram Walker Peach Brandy', 370, 'Pernod Ricard Usa/austin Nichols', 1000, 6.50),
	(4,'Oak Cross Whisky', 305, 'Mhw Ltd', 750, 25.33),
	(5,'Uv Red(cherry) Vodka', 380, 'Phillips Beverage Company', 200, 1.97),
	(6,'Heaven Hill Old Style White Label', 259, 'Heaven Hill Distilleries Inc.', 750, 6.37), 
    (7,'Hyde Herbal Liqueur', 194, 'Fire Tail Brands Llc', 750, 5.06), 
    (8,'Dupont Calvados Fine Reserve', 403, 'Robert Kacher Selections', 750, 23.61); 

update ITEMS_Table
set bottle_price = 9.77
where Item_ID = 1;

select * from ITEMS_Table
--Intermediate QuestionsBig Table :--

--The "PRODUCT_Table" is the big table, here are the queries:
--1.Find the Total Sale Price and Gross Sales:
USE Products;
SELECT SUM(Sale_Price) AS Total_Sale_Price, SUM(Gross_Sales) AS Total_Gross_Sales
FROM PRODUCT_Table;


--2.In which year we have got the highest sales:
SELECT TOP 1 Year,SUM(Sales)As Total_Sales
FROM PRODUCT_Table
GROUP BY Year
ORDER BY Total_Sales DESC;


--3.In which year we have got the Lowest sales:
SELECT TOP 1 Year,SUM(Sales)As Total_Sales
FROM PRODUCT_Table
GROUP BY Year
ORDER BY Total_Sales ASC;

--4.Which Product having the sales of $37,050.00:
SELECT*FROM PRODUCT_Table
WHERE Sales=  37050.00; 
 

--5.Which Countries lie between the profit of $4,605 and $22,662.00:
SELECT*FROM PRODUCT_Table
WHERE Profit BETWEEN 4605.00 AND 22662.00;


--6.Which Product Id having the sales of $24,700.00:
SELECT*FROM PRODUCT_Table
WHERE Sales =  24700.00; 

--Small Table :--

--The "ITEMS_Table" is the Small table , here are the queries:
USE Brands
--1.Find the item_description having the bottle size of 750:
SELECT item_description
FROM ITEMS_Table
WHERE bottle_size = 750;

--2.Find the vendor Name having the vendor_nos 305, 380, 391:
SELECT vendor_name
FROM ITEMS_Table
WHERE vendor_nos IN (305, 380, 391);

--3.What is the total Bottle_price:
SELECT SUM(bottle_price) As Total_Bottle_Price
FROM ITEMS_Table;

/*4.Make Primary Key to Item_id:
If the "Item_Id" column is not already the primary key, you can make it the primary key using the following ALTER TABLE query:*/
ALTER TABLE ITEMS_Table
ADD CONSTRAINT PK_ITEMS_Table PRIMARY KEY (Item_Id);


--5.Which item id having the bottle_price of $5.06:
SELECT Item_Id
FROM ITEMS_Table
WHERE bottle_price = 5.06;

--Advance Questions:--


--1.The "ITEMS_Table" from the "Brands" database and the "PRODUCT_Table" from the "Products" database:
-- INNER JOIN
SELECT *
FROM Brands.dbo.ITEMS_Table
INNER JOIN Products.dbo.PRODUCT_Table
ON Brands.dbo.ITEMS_Table.Item_Id = Products.dbo.PRODUCT_Table.Product_Id;

--FULL OUTER JOIN
SELECT*
FROM Brands.dbo.ITEMS_Table
FULL OUTER JOIN Products.dbo.PRODUCT_Table
ON Brands.dbo.ITEMS_Table.Item_Id = Products.dbo.PRODUCT_Table.Product_Id;

--FULL LEFT JOIN
SELECT*
FROM Brands.dbo.ITEMS_Table
LEFT JOIN Products.dbo.PRODUCT_Table
ON Brands.dbo.ITEMS_Table.Item_ID = Products.dbo.PRODUCT_Table.Product_Id

--2.Apply OUTER, RIGHT JOIN, CROSS JOIN types on both the tables:

--OUTER JOIN
SELECT*
FROM Brands.dbo.ITEMS_Table
FULL OUTER JOIN Products.dbo.PRODUCT_Table
ON Brands.dbo.ITEMS_Table.Item_ID = Products.dbo.PRODUCT_Table.Product_ID

--RIGHT JOIN
SELECT*
FROM Brands.dbo.ITEMS_Table
RIGHT JOIN Products.dbo.PRODUCT_Table
ON Brands.dbo.ITEMS_Table.Item_ID = Products.dbo.PRODUCT_Table.Product_ID

--CROSS JOIN
SELECT*
FROM Brands.dbo.ITEMS_Table
CROSS JOIN Products.dbo.PRODUCT_Table

--3.Find the item_description and Product having the gross sales of $13,320.00:
SELECT ITEMS_Table.item_description, PRODUCT_Table.Product
FROM Brands.dbo.ITEMS_Table
INNER JOIN Products.dbo.PRODUCT_Table
ON Brands.dbo.ITEMS_Table.Item_Id = Products.dbo.PRODUCT_Table.Product_Id
WHERE Products.dbo.PRODUCT_Table.Gross_Sales =  30216.00;


--4.Combine the bottle_price and profit Column and show the total value of both the columns in a new temporary column:
SELECT I.*, (I.bottle_price + P.Profit) AS Total_Value
FROM Brands.dbo.ITEMS_Table AS I
INNER JOIN Products.dbo.PRODUCT_Table AS P
ON I.Item_Id = P.Product_Id;

--5.Split the Item_description Column into Columns Item_desc1 and Item_desc2:
SELECT
    CASE
        WHEN CHARINDEX(' ', item_description) > 0 THEN SUBSTRING(item_description, 1, CHARINDEX(' ', item_description) - 1)
        ELSE item_description
    END AS Item_desc1,
    CASE
        WHEN CHARINDEX(' ', item_description) > 0 THEN SUBSTRING(item_description, CHARINDEX(' ', item_description) + 1, LEN(item_description))
        ELSE NULL
    END AS Item_desc2
FROM Brands.dbo.ITEMS_Table;
SELECT
    LEFT(item_description, CHARINDEX(' ', item_description + ' ') - 1) AS Part1,
    SUBSTRING(item_description, CHARINDEX(' ',item_description + ' ') + 1, LEN(item_description)) AS Part2
FROM ITEMS_Table;

