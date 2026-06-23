## Total Revenue
SELECT SUM(TotalDue) AS TotalRevenue
FROM Sales.SalesOrderHeader;

-- Revenue by Year
SELECT
    YEAR(OrderDate) AS SalesYear,
    SUM(TotalDue) AS Revenue
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate)
ORDER BY SalesYear;

-- Top 10 Products by Revenue
SELECT TOP 10
    p.Name,
    SUM(sod.LineTotal) AS Revenue
FROM Sales.SalesOrderDetail sod
JOIN Production.Product p
    ON sod.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY Revenue DESC;
