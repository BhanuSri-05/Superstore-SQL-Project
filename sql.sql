CREATE DATABASE superstore_db;

USE superstore_db;

SELECT DATABASE();

SHOW TABLES;

SELECT * FROM superstore;

SELECT * FROM superstore
LIMIT 10;

SELECT `Customer Name`, Sales
FROM superstore;

SELECT *
FROM superstore
WHERE Category='Furniture';

SELECT *
FROM superstore
WHERE State='California';

SELECT *
FROM superstore
WHERE Sales>1000;

SELECT *
FROM superstore
WHERE Profit<0;

SELECT *
FROM superstore
ORDER BY Sales DESC;

SELECT *
FROM superstore
ORDER BY Profit;

SELECT COUNT(*) AS TotalOrders
FROM superstore;

SELECT SUM(Sales) AS TotalSales
FROM superstore;

SELECT AVG(Sales) AS AverageSales
FROM superstore;

SELECT MAX(Profit) AS MaximumProfit
FROM superstore;

SELECT MIN(Profit) AS MinimumProfit
FROM superstore;

SELECT Category,
SUM(Sales) AS TotalSales
FROM superstore
GROUP BY Category;

SELECT Region,
AVG(Profit) AS AverageProfit
FROM superstore
GROUP BY Region;

SELECT State,
COUNT(*) AS TotalOrders
FROM superstore
GROUP BY State
ORDER BY TotalOrders DESC;

SELECT Segment,
SUM(Sales) AS TotalSales
FROM superstore
GROUP BY Segment;

SELECT `Sub-Category`,
SUM(Profit) AS TotalProfit
FROM superstore
GROUP BY `Sub-Category`
ORDER BY TotalProfit DESC;

SELECT `Product Name`,
SUM(Sales) AS TotalSales
FROM superstore
GROUP BY `Product Name`
ORDER BY TotalSales DESC
LIMIT 10;

SELECT `Customer Name`,
SUM(Sales) AS TotalSales
FROM superstore
GROUP BY `Customer Name`
ORDER BY TotalSales DESC
LIMIT 10;

SELECT State,
SUM(Profit) AS TotalProfit
FROM superstore
GROUP BY State
ORDER BY TotalProfit DESC;

SELECT Category,
SUM(Sales) AS TotalSales
FROM superstore
GROUP BY Category
HAVING SUM(Sales)>500000;

SELECT State,
COUNT(*) AS TotalOrders
FROM superstore
GROUP BY State
HAVING COUNT(*)>100;