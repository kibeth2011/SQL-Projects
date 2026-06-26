/*/*Database Exploration*/*/
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

/*/*Sales Performance Analysis*/*/
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

/*/*Product Analysis*/*/
/*Which products generate the most revenue?*/
SELECT TOP 10
    p.Name AS ProductName,
    CAST(SUM(sod.LineTotal) AS DECIMAL(18,2)) AS Revenue
FROM Sales.SalesOrderDetail sod
JOIN Production.Product p
    ON sod.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY Revenue DESC;

/*Which products sell the highest number of units?*/
SELECT TOP 10
    p.Name AS ProductName,
    SUM(sod.OrderQty) AS QuantitySold
FROM Sales.SalesOrderDetail sod
JOIN Production.Product p
    ON sod.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY QuantitySold DESC;

/*Which product categories contribute the most revenue?*/
SELECT
    pc.Name AS ProductCategory,
    CAST(SUM(sod.LineTotal) AS DECIMAL(18,2)) AS Revenue
FROM Sales.SalesOrderDetail sod
JOIN Production.Product p
    ON sod.ProductID = p.ProductID
JOIN Production.ProductSubcategory ps
    ON p.ProductSubcategoryID = ps.ProductSubcategoryID
JOIN Production.ProductCategory pc
    ON ps.ProductCategoryID = pc.ProductCategoryID
GROUP BY pc.Name
ORDER BY Revenue DESC;

/*What is the average revenue generated per product?*/
SELECT
    CAST(AVG(ProductRevenue) AS DECIMAL(18,2)) AS AvgRevenuePerProduct
FROM
(
    SELECT
        ProductID,
        SUM(LineTotal) AS ProductRevenue
    FROM Sales.SalesOrderDetail
    GROUP BY ProductID
) AS ProductSales;

/*Which products generate the least revenue?*/
SELECT TOP 10
    p.Name AS ProductName,
    CAST(SUM(sod.LineTotal) AS DECIMAL(18,2)) AS Revenue
FROM Sales.SalesOrderDetail sod
JOIN Production.Product p
    ON sod.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY Revenue ASC;

/*/*Customer Analysis*/*/
/*Which customers generate the most revenue?*/
SELECT TOP 10
    soh.CustomerID,
    CAST(SUM(soh.TotalDue) AS DECIMAL(18,2)) AS Revenue
FROM Sales.SalesOrderHeader soh
GROUP BY soh.CustomerID
ORDER BY Revenue DESC;

/*Which customers place the most orders?*/
SELECT TOP 10
    CustomerID,
    COUNT(*) AS TotalOrders
FROM Sales.SalesOrderHeader
GROUP BY CustomerID
ORDER BY TotalOrders DESC;

/*How much does the average customer spend?*/
SELECT
    CAST(AVG(CustomerRevenue) AS DECIMAL(18,2)) AS AvgCustomerSpending
FROM
(
    SELECT
        CustomerID,
        SUM(TotalDue) AS CustomerRevenue
    FROM Sales.SalesOrderHeader
    GROUP BY CustomerID
) AS CustomerSales;

/*Which customers spend the most per order?*/
SELECT TOP 10
    CustomerID,
    CAST(AVG(TotalDue) AS DECIMAL(18,2)) AS AvgOrderValue
FROM Sales.SalesOrderHeader
GROUP BY CustomerID
ORDER BY AvgOrderValue DESC;

/*How many unique customers made purchases?*/
SELECT
    COUNT(DISTINCT CustomerID) AS TotalCustomers
FROM Sales.SalesOrderHeader;

/*/*Territory Analysis*/*/
/*Which sales territories generate the most revenue?*/
SELECT
    st.Name AS Territory,
    CAST(SUM(soh.TotalDue) AS DECIMAL(18,2)) AS Revenue
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesTerritory st
    ON soh.TerritoryID = st.TerritoryID
GROUP BY st.Name
ORDER BY Revenue DESC;

/*Which territories generate the highest number of orders?*/
SELECT
    st.Name AS Territory,
    COUNT(*) AS TotalOrders
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesTerritory st
    ON soh.TerritoryID = st.TerritoryID
GROUP BY st.Name
ORDER BY TotalOrders DESC;

/*Which territory have the highest average order value?*/
SELECT
    st.Name AS Territory,
    CAST(AVG(soh.TotalDue) AS DECIMAL(18,2)) AS AvgOrderValue
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesTerritory st
    ON soh.TerritoryID = st.TerritoryID
GROUP BY st.Name
ORDER BY AvgOrderValue DESC;

/*What percentage of total revenue comes from each territory?*/
SELECT
    st.Name AS Territory,
    CAST(SUM(soh.TotalDue) AS DECIMAL(18,2)) AS Revenue,
    CAST(
        100.0 * SUM(soh.TotalDue) /
        SUM(SUM(soh.TotalDue)) OVER ()
        AS DECIMAL(5,2)
    ) AS RevenuePercentage
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesTerritory st
    ON soh.TerritoryID = st.TerritoryID
GROUP BY st.Name
ORDER BY Revenue DESC;
