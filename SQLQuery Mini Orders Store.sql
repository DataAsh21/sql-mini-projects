--SQL ASSIGNMENT 2 Order_Stores_Data 
--Q1) Create   Database Name as Order_Stores_Data 

CREATE DATABASE Order_Stores_Data;
/*Q2) Create two Table names as Orders_Table and Stores_Table
 Create Orders_Table
 Switch to Order_Stores_Data database*/
USE Order_Stores_Data;

-- Create Orders_Table
CREATE TABLE Orders_Table (
    Order_Id INT PRIMARY KEY,
    OrderDate DATE,
    Region VARCHAR(100),
    Rep VARCHAR(100),
    Order_Item VARCHAR(100),
    Units INT,
    Unit_Cost DECIMAL(10, 2),
    Total_Price DECIMAL(10, 2)
);

-- Create Stores_Table
CREATE TABLE Stores_Table (
    Store_Id INT PRIMARY KEY,
    StoreType VARCHAR(100),
    Assortment INT,
    CompetitionDistance INT,
    Month INT,
    Year INT,
    PromoInterval VARCHAR(100)
);
-- Switch to Order_Stores_Data database
USE Order_Stores_Data;
--Q3) Insert All records present here in the Orders_table and Stores_Table.
-- Insert records into Orders_Table
INSERT INTO Orders_Table (Order_Id, OrderDate, Region, Rep, Order_Item, Units, Unit_Cost, Total_Price)
VALUES
    (1,'1-6-21', 'East', 'Aruna', 'Pencil', 95, 1.99, 189.05),
     (2,'1-23-21', 'Central', 'Kivell', 'Eraser', 50, 19.99, 999.50),
     (3,'2-9-21', 'Central', 'Ganesh', NULL, 36, 4.99, 179.64),
     (4,'2-26-21', 'Central', 'Payal', NULL, 27, 19.99, 539.73),
     (5,'3-15-21', 'West', 'Sorvino', NULL, 56,  2.99, 167.44),
     (6,'4-1-21', 'East', 'Hitesh', 'Pencil', 60, 4.99, 299.40),
     (7,'4-18-21', 'Central', 'Akshita', NULL, 75, 1.99, 149.25),
     (8,'5-5-21', 'Central','Ruchika', 'Books',	90,	 4.99, 	 449.10),
     (9,'5-22-21', 'West', 'Surbhi', NULL, 32, 1.99, 63.68),
     (10,'6-8-21', 'East', 'Jones',	'Suitcase',	60,	 8.99, 539.40);
-- Insert into Stores_Table
-- (Assuming we have the missing "PromoInterval" values in a reference sheet)
INSERT INTO Order_Stores_Data.dbo.Stores_Table (Store_Id, StoreType,Assortment, CompetitionDistance , Month, Year, PromoInterval)
VALUES
    -- Add the records from the Stores_Table here
    (1, 'c', 10, 1270, 9, 2008, 'Jan'),
    (2, 'a', 50, 570, 11, 2007, 'Feb'),
    (3, 'a', 46, 14130,	12,	2006,'Mar'),
	(4,	'c', 32, 620, 9, 2009, NULL),	
    (5,	'a', 11, 29910,	4, 2015, 'May'),
    (6,	'a', 47, 310, 12, 2013,	'June'),
    (7,	'a', 47, 24000,	4, 2013, NULL),	
    (8,	'a', 43, 7520, 10, 2014, 'Aug'),
    (9,	'a', 26, 2030, 8, 2000, NULL),	
    (10, 'a', 39, 3160,	9, 2009, 'Oct');


  SELECT*FROM Stores_Table;
  SELECT*FROM Orders_Table;
--Q3) Make Order_Id  Column as Primary Key.

-- Add Primary Key constraint to Orders_Table
ALTER TABLE Order_Stores_Data.dbo.Orders_Table
ADD CONSTRAINT PK_Orders_Table PRIMARY KEY (Order_Id);
--Q4) Add one Column Name  as Store_Names and insert the records given above in Stores table.
-- Add "Store_Names" column to Stores_Table
ALTER TABLE Order_Stores_Data.dbo.Stores_Table
ADD Store_Names VARCHAR(100);

-- Insert records into the "Store_Names" column
-- (Assuming you have the "Store_Names" values in a reference sheet)
USE Order_Stores_Data;
UPDATE Order_Stores_Data.dbo.Stores_Table
SET Store_Names = ('CAR', 'Bikes', 'Hardware', 'Electrics', 'Fibers', 'Elastics', 'Books', 'Shoes', 'Clothes', 'Scraps')
WHERE Store_Id = (1,2,3,4,5,6,7,8,9,10);

--2ND METHOD

UPDATE Order_Stores_Data.dbo.Stores_Table
SET Store_Names = 'Car'
WHERE Store_Id = 1;

UPDATE Order_Stores_Data.dbo.Stores_Table
SET Store_Names = 'Bikes'
WHERE Store_Id = 2;

USE Order_Stores_Data;
UPDATE Order_Stores_Data.dbo.Stores_Table
SET Store_Names = 'Hardware'
WHERE Store_Id = 3;

UPDATE Order_Stores_Data.dbo.Stores_Table
SET Store_Names = 'Electrics'
WHERE Store_Id = 4;

USE Order_Stores_Data;
UPDATE Order_Stores_Data.dbo.Stores_Table
SET Store_Names = 'Fibers'
WHERE Store_Id = 5;

UPDATE Order_Stores_Data.dbo.Stores_Table
SET Store_Names = 'Elastics'
WHERE Store_Id = 6;

USE Order_Stores_Data;
UPDATE Order_Stores_Data.dbo.Stores_Table
SET Store_Names = 'Books'
WHERE Store_Id = 7;

UPDATE Order_Stores_Data.dbo.Stores_Table
SET Store_Names = 'Shoes'
WHERE Store_Id = 8;

UPDATE Order_Stores_Data.dbo.Stores_Table
SET Store_Names = 'Clothes'
WHERE Store_Id = 9;

UPDATE Order_Stores_Data.dbo.Stores_Table
SET Store_Names = 'Scraps'
WHERE Store_Id = 10;




SELECT*FROM Stores_Table
SELECT*FROM Orders_Table
--Q5) Make Stored_Id as a Foreign Key with reference too Orders_Table 
ALTER TABLE [dbo].[Stores_Table]
ADD FOREIGN KEY (Store_Id) REFERENCES Orders_Table (Order_Id);

--Q6) Update the missing  records in the Order_item Column in Order_table missing records are given in this sheet

--You can use the following UPDATE statements to update the "Orders_Table" accordingly:

-- Update Order_Item for Order_Id = 3
UPDATE Order_Stores_Data.dbo.Orders_Table
SET Order_Item = 'Compass'
WHERE Order_Id = 3;

-- Update Order_Item for Order_Id = 4
UPDATE Order_Stores_Data.dbo.Orders_Table
SET Order_Item = 'Torch'
WHERE Order_Id = 4;

-- Update Order_Item for Order_Id = 4
UPDATE Order_Stores_Data.dbo.Orders_Table
SET Order_Item = 'Phone'
WHERE Order_Id = 5;

-- Update Order_Item for Order_Id = 7
UPDATE Order_Stores_Data.dbo.Orders_Table
SET Order_Item = 'Laptop'
WHERE Order_Id = 7;

-- Update Order_Item for Order_Id = 9
UPDATE Order_Stores_Data.dbo.Orders_Table
SET Order_Item = 'Box'
WHERE Order_Id = 9;

SELECT*FROM Orders_Table
SELECT*FROM Stores_Table
--Q7) Update the missing records in the PromoInterval Column in Stores Table.
-- here i am assuming some values randomly
-- Update PromoInterval for Store_Id = 4
UPDATE Order_Stores_Data.dbo.Stores_Table
SET PromoInterval = 'Feb'
WHERE Store_Id = 4;

-- Update PromoInterval for Store_Id = 7
UPDATE Order_Stores_Data.dbo.Stores_Table
SET PromoInterval = 'Mar'
WHERE Store_Id = 7;

-- Update PromoInterval for Store_Id = 9
UPDATE Order_Stores_Data.dbo.Stores_Table
SET PromoInterval = 'Jan'
WHERE Store_Id = 9;

SELECT*FROM Stores_Table

--Q8) Rename the column name  of Assortment to Store_Nos in Stores_Table.
use [Order_Stores_Data]
EXEC sp_rename 'Stores_Table.Assortment', 'Store_Nos';
SELECT*FROM Stores_Table
--Q9) Rename the column name  of Order_Item to Item_name  and Rep Column as Customers_name in Orders_Table.
EXEC sp_rename 'Orders_Table.Order_Item', 'Item_name';
EXEC sp_rename 'Orders_Table.Rep', 'Customers_name';
SELECT*FROM Orders_Table

--Q10) Sort the Unit Cost of Orders_table in Descding order and Total column in Ascending order.
SELECT Unit_Cost, Total_Price AS TOTAL_COLUMN
FROM Orders_Table
ORDER BY Unit_Cost DESC, TOTAL_COLUMN ASC;

--OR
SELECT *
FROM Orders_table
ORDER BY [Unit_Cost] DESC, Total_Price ASC;

--Q11) Convert Customers_name to Cus_Name  and find how many  Cus_Name in each region.
EXEC sp_rename 'Orders_Table.Customers_name', 'Cus_Name'

SELECT Region, COUNT(Cus_Name) As Customer_count
FROM Orders_Table
GROUP BY Region;

--Q12) Find the sum of Total_Price Column and Unit Cost  in Orders_Table 

SELECT SUM(Total_Price + Unit_Cost) AS TOTAL
FROM Orders_Table;

--Q13) Show me OrderDate  , Unit Cost  , StoreType and Year in One table and names that table as Order_Stores_Table.
SELECT ot.OrderDate, ot.[Unit_Cost], st.StoreType, YEAR(ot.OrderDate) AS OrderYear
INTO Order_Stores_Table
FROM dbo.Orders_Table AS ot
JOIN dbo.Stores_Table AS st ON ot.Order_Id = st.Store_Id;


SELECT*FROM Order_Stores_Table
--Q14)  Give me Order_Item  and Region whose Order_Id is 4 , 5, 6 ,9
SELECT Item_name,Region
FROM Orders_Table
WHERE Order_Id IN (4,5,6,9);


--Q15) Show me year  whose ComptetitionDistance is 29910  , 310 , 3160
SELECT Year
FROM Stores_Table
WHERE CompetitionDistance IN (29910, 310, 3160);

--Q16)  Give me that Item_name whose  Total_Price is greater than 200 and less than 400
SELECT Item_name
FROM Orders_Table
WHERE Total_Price >200 AND Total_Price <400;

--Q17) Rename the CompetitionDistance as CD and find the total CD in Stores_Table.
EXEC sp_rename 'Stores_Table.CompetitionDistance', 'CD'
SELECT*FROM Stores_Table
SELECT SUM(CD) AS TotalCD
FROM Stores_Table;


--Q18) What is the Total Count of Stores_Type and CD columns
SELECT COUNT(StoreType) AS STORES_COUNT, COUNT(CD) AS CD_COUNT
FROM Stores_Table;

--Q19) Apply the Cross Join in  Orders_Table and Stores_Table.
SELECT*
FROM Orders_Table
CROSS JOIN Stores_Table;

--Q20) DROP both the databases
DROP DATABASE Order_Stores_Data;




