CREATE DATABASE SAMPLE2
use [sample2]
GO

-- Create the tblproductsales table
CREATE TABLE tblproductsales (
    SalesAgent VARCHAR(50),
    SalesCountry VARCHAR(50),
    SalesAmount INT
);

-- Insert data into tblproductsales
INSERT INTO tblproductsales (SalesAgent, SalesCountry, SalesAmount) VALUES
('Tom',   'UK',    200),
('John',  'US',    180),
('John',  'UK',    260),
('David', 'India', 450),
('Tom',   'India', 350),
('David', 'US',    200),
('Tom',   'US',    130),
('John',  'India', 540),
('John',  'UK',    120),
('David', 'UK',    220),
('John',  'UK',    420),
('David', 'US',    320),
('Tom',   'US',    340),
('Tom',   'UK',    660),
('John',  'India', 430),
('David', 'India', 230),
('David', 'India', 280),
('Tom',   'UK',    480),
('John',  'UK',    360),
('David', 'UK',    140);

select * from tblproductsales

-- Query 1: Group by SalesCountry and SalesAgent
SELECT SalesCountry, SalesAgent, SUM(SalesAmount) AS Total
FROM tblProductSales
GROUP BY SalesCountry, SalesAgent
ORDER BY SalesCountry, SalesAgent;

-- Query 2: Pivot table showing each agent’s sales across countries
SELECT SalesAgent, [India], [US], [UK]
FROM tblProductSales
PIVOT (
    SUM(SalesAmount)
    FOR SalesCountry IN ([India], [US], [UK])
) AS PivotTable;


-- Create the updated tblProductSales table with an Id column
CREATE TABLE tblProductSale (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    SalesAgent VARCHAR(50),
    SalesCountry VARCHAR(50),
    SalesAmount INT
);

-- Insert data into tblProductSales (Id will be auto-generated)
INSERT INTO tblProductSale (SalesAgent, SalesCountry, SalesAmount) VALUES
('Tom',   'UK',    200),
('John',  'US',    180),
('John',  'UK',    260),
('David', 'India', 450),
('Tom',   'India', 350),
('David', 'US',    200),
('Tom',   'US',    130),
('John',  'India', 540),
('John',  'UK',    120),
('David', 'UK',    220),
('John',  'UK',    420),
('David', 'US',    320),
('Tom',   'US',    340),
('Tom',   'UK',    660),
('John',  'India', 430),
('David', 'India', 230),
('David', 'India', 280),
('Tom',   'UK',    480),
('John',  'UK',    360),
('David', 'UK',    140);

select * from tblProductSale

SELECT SalesAgent, [India], [US], [UK]
FROM tblProductSale
PIVOT (
    SUM(SalesAmount)
    FOR SalesCountry IN ([India], [US], [UK])
) AS PivotTable;


SELECT SalesAgent, [India], [US], [UK]
FROM
( select salesagent,salescountry,salesamount
from tblProductSale
) as sourcetable
PIVOT (
    SUM(SalesAmount)
    FOR SalesCountry IN ([India], [US], [UK])
) AS PivotTable;


CREATE PROCEDURE spSellProduct
    @ProductId INT,
    @QuantityToSell INT
AS
BEGIN
    -- Check the available stock
    DECLARE @StockAvailable INT
    SELECT @StockAvailable = QtyAvailable
    FROM tblProduct
    WHERE ProductId = @ProductId

    -- If stock is insufficient, raise an error
    IF (@StockAvailable < @QuantityToSell)
    BEGIN
        RAISERROR('Not enough stock available', 16, 1)
    END
    ELSE
    BEGIN
        BEGIN TRAN
            -- Update the available quantity
            UPDATE tblProduct
            SET QtyAvailable = QtyAvailable - @QuantityToSell
            WHERE ProductId = @ProductId

            -- Get the max ProductSalesId
            DECLARE @MaxProductSalesId INT
            SELECT @MaxProductSalesId = ISNULL(MAX(ProductSalesId), 0)
            FROM tblProductSales

            -- Insert a new sale record
            INSERT INTO tblProductSales (ProductSalesId, ProductId, QuantitySold)
            VALUES (@MaxProductSalesId + 1, @ProductId, @QuantityToSell)

        COMMIT TRAN
    END
END

CREATE TABLE tblProduct (
    ProductId INT PRIMARY KEY,
    Name VARCHAR(50),
    UnitPrice DECIMAL(10, 2),
    QtyAvailable INT
);

INSERT INTO tblProduct (ProductId, Name, UnitPrice, QtyAvailable)
VALUES 
    (1, 'Laptops', 2340, 100),
    (2, 'Desktops', 3467, 20);

-- View original data
SELECT * FROM tblProduct;

-- Start transaction
BEGIN TRANSACTION;

    -- Attempt to update stock quantity
    UPDATE tblProduct 
    SET QtyAvailable = 50 
    WHERE ProductId = 1;

-- Rollback to undo changes
ROLLBACK TRANSACTION;

-- View data again to confirm rollback
SELECT * FROM tblProduct;

CREATE TABLE tblProducts (
    Id INT IDENTITY PRIMARY KEY,
    Name NVARCHAR(50),
    Description NVARCHAR(250)
);

CREATE TABLE tblProductSal (
    Id INT IDENTITY PRIMARY KEY,
    ProductId INT FOREIGN KEY REFERENCES tblProducts(Id),
    UnitPrice INT,
    QuantitySold INT
);

INSERT INTO tblProducts (Name, Description)
VALUES 
    ('TV', '52 inch black color LCD TV'),
    ('Laptop', 'Very thin black color acer laptop'),
    ('Desktop', 'HP high performance desktop');

INSERT INTO tblProductSal (ProductId, UnitPrice, QuantitySold)
VALUES 
    (3, 450, 5),
    (2, 250, 7),
    (3, 450, 4),
    (3, 450, 9);

select * from tblProducts
select * from tblProductSal

SELECT Id, Name, [Description]
FROM tblProducts
WHERE Id NOT IN (
    SELECT DISTINCT ProductId 
    FROM tblProductSal
);

SELECT tblProducts.Id, Name, [Description]
FROM tblProducts
LEFT JOIN tblProductSal
    ON tblProducts.Id = tblProductSal.ProductId
WHERE tblProductSal.ProductId IS NULL;


