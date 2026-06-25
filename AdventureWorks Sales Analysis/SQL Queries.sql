/*Database Exploration*/
/*What business areas exist in AdventureWorks?*/
SELECT DISTINCT TABLE_SCHEMA
FROM INFORMATION_SCHEMA.TABLES
ORDER BY TABLE_SCHEMA;

/*Which tables are available for sales analysis?*/
SELECT TABLE_SCHEMA, TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'Sales'
ORDER BY TABLE_NAME;

/*What information is stored per order?*/
SELECT TOP 10 *
FROM Sales.SalesOrderHeader;

/*How many sales orders exist?*/
SELECT 
    COUNT(*) AS TotalOrders
FROM Sales.SalesOrderHeader;

/*What is the total revenue generated?*/
SELECT 
    CAST(SUM(TotalDue) AS DECIMAL(18,2)) AS TotalRevenue
FROM Sales.SalesOrderHeader;

/*How has revenue changed over time?*/
SELECT
    YEAR(OrderDate) AS SalesYear,
    CAST(SUM(TotalDue) AS DECIMAL(18,2)) AS Revenue
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate)
ORDER BY SalesYear;

/*What was the Number of Orders by Year?*/
SELECT
    YEAR(OrderDate) AS SalesYear,
    COUNT(*) AS TotalOrders
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate)
ORDER BY SalesYear;

/*Average Order Value by Year*/
SELECT
    YEAR(OrderDate) AS SalesYear,
    AVG(TotalDue) AS AvgOrderValue
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate)
ORDER BY SalesYear;

/*What was the Revenue by Month?*/
SELECT 
    MONTH(OrderDate) AS SalesMonth,
    CAST(SUM(TotalDue) AS DECIMAL(18,2) AS REVENUE
FROM
    Sales.salesOrderHeader
GROUP BY MONTH(OrderDate)
ORDER BY SalesMonth

/*Which products generate the most revenue?*/
SELECT TOP 10
    p.Name AS ProductName,
    CAST(SUM(sod.LineTotal) AS DECIMAL(18,2)) AS Revenue
FROM Sales.SalesOrderDetail sod
JOIN Production.Product p
    ON sod.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY Revenue DESC;

