# AdventureWorks Sales Analysis Using SQL

## Project Overview
This project analyzes sales data from the AdventureWorks database using Microsoft SQL Server. The objective was to explore business performance, identify sales trends, evaluate product performance, understand customer behavior, and assess territory performance. Through SQL queries and data visualization, the analysis provides insights that can support strategic business decisions and improve overall sales performance.

### Dataset
- <a href="https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks2022.bak">AdventureWorks2022</a>

## Tools Used
- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- Excel (Data Visualization)

## Skills Demonstrated
- Database Exploration
- Data Aggregation
- JOIN Operations
- GROUP BY and ORDER BY
- Aggregate Functions (SUM, COUNT, AVG)
- Business Performance Analysis
- Product Analysis
- Customer Analysis
- Territory Analysis
- Data Visualization

# Database Exploration
## Business Question
What business areas, tables, and sales data are available for analysis?

## Insight
The AdventureWorks database contains multiple business areas including Sales, Production, Person, Purchasing, and Human Resources. The Sales schema provided the primary tables required for this project, including customer, SalesOrderHeader, SalesOrderDetail, SalesPerson, SalesTerritory, and product sales information. A total of 31,465 sales orders were identified for analysis, generating approximately $123.22 million in revenue.

# Sales Performance Analysis
## Business Question
How has revenue changed over time?

## Result
Yearly Trend Chart
![Reload Image](https://github.com/kibeth2011/SQL-Projects/blob/main/AdventureWorks%20Sales%20Analysis/Screenshots/Revenue%20Trend%20by%20Year-Line%20chart.png)

Monthly Trend Chart
![Reload Image](https://github.com/kibeth2011/SQL-Projects/blob/main/AdventureWorks%20Sales%20Analysis/Screenshots/Revenue%20Trend%20by%20Month-Line%20chart.png)

## Insight
Revenue increased significantly between 2011 and 2013, growing from $14.16 million to $48.97 million. Revenue then declined to $22.42 million in 2014, indicating a change in purchasing patterns or market conditions.

Monthly revenue trends revealed fluctuations throughout the analysis period, suggesting seasonal demand patterns and changing customer purchasing behavior.

## Business Question
Was revenue growth driven by more orders?

## Result
![Reload Image](https://github.com/kibeth2011/SQL-Projects/blob/main/AdventureWorks%20Sales%20Analysis/Screenshots/Number%20of%20Orders%20by%20Year-Bar%20chart.png)

## Insight
Order volume increased steadily between 2011 and 2013, reaching a peak of 14,182 orders. However, order volume declined in 2014 to 11,761 orders, suggesting a slowdown in transaction growth after a period of strong expansion.

## Business Question
Are customers spending more per order over time?

## Result
![Reload Image](https://github.com/kibeth2011/SQL-Projects/blob/main/AdventureWorks%20Sales%20Analysis/Screenshots/Average%20Order%20Value%20by%20Year-Bar%20Graph.png)

## Insight
Average order value peaked at $9,623.42 in 2012 before declining to $1,906.26 in 2014. Although order volume increased, customers were placing smaller orders on average.

# Product Analysis
## Business Question
Which product generated the most revenue?

## Result
![Reload Image](https://github.com/kibeth2011/SQL-Projects/blob/main/AdventureWorks%20Sales%20Analysis/Screenshots/Top%2010%20Products%20by%20Revenue.png)

## Insight
The highest-performing product was Mountain-200 Black 38. It generated approximately $4.4 million in revenue, demonstrating the importance of maintaining strong inventory, marketing, and sales strategies.

## Business Question
Which product sold the highest number of units?

## Result
![Reload Image](https://github.com/kibeth2011/SQL-Projects/blob/main/AdventureWorks%20Sales%20Analysis/Screenshots/Top%2010%20Products%20by%20Quantity%20Sold.png)

## Insight
AWC Logo Cap achieved strong sales volumes of 8311, indicating consistent customer demand and broad market appeal.

## Business Question
Which product categories contribute the most revenue?

## Result
![Reload Image](https://github.com/kibeth2011/SQL-Projects/blob/main/AdventureWorks%20Sales%20Analysis/Screenshots/Product%20Category%20Revenue%20chart.png)

## Insight
Bikes category contributed to the most revenue of approximately $94.7 million, highlighting the category that drive overall business performance and profitability.

## Business Question
Which product generate the least revenue?

## Result
LL Road Seat/Saddle with $162.72

## Insight
The LL Road Seat/Saddle generated only $162.72 in revenue, making it the lowest-performing product identified in the analysis. This product may require review regarding pricing, promotion, or inventory allocation.

## Business Question
What is the average revenue generated per product?

## Insight
The average revenue generated per product was approximately $412,956.32, indicating substantial variation between top-performing and low-performing products.

# Customer Analysis
## Business Question
Which customer generated the most revenue?

## Result
![Reload Image](https://github.com/kibeth2011/SQL-Projects/blob/main/AdventureWorks%20Sales%20Analysis/Screenshots/Top%2010%20Customers%20by%20Revenue.png)

## Insight
CustomerID 29818 generated the highest revenue, demonstrating the importance of identifying and retaining high-value customers.

## Business Question
Which customer place the most orders?

## Result
![Reload Image](https://github.com/kibeth2011/SQL-Projects/blob/main/AdventureWorks%20Sales%20Analysis/Screenshots/Top%2010%20Customers%20by%20Number%20of%20Orders.png)

## Insight
CustomerID 11091 placed the highest number of orders, indicating strong engagement and purchasing frequency.

## Business Question
How much does the average customer spend?

## Insight
The average customer spending was approximately $6,444.73, providing a useful benchmark for evaluating customer value and segmentation strategies.

## Business Question
Which customer spends the most per order?

## Result
![Reload Image](https://github.com/kibeth2011/SQL-Projects/blob/main/AdventureWorks%20Sales%20Analysis/Screenshots/Top%2010%20Customers%20by%20Highest%20Average%20Order%20Value.png)

## Insight
CustomerID 29641 recorded the highest average order value, representing a premium customer segment with high transaction values.

## Business Question
How many unique customers made purchases?

## Insight
The business served 19,119 unique customers, demonstrating a broad customer base across multiple markets.

# Territory Analysis
## Business Question
Which sales territories generate the most revenue?

## Result
![Reload Image](https://github.com/kibeth2011/SQL-Projects/blob/main/AdventureWorks%20Sales%20Analysis/Screenshots/Revenue%20by%20Territory%20chart.png)

## Insight
Australia Territory generated the most revenue of over $25 million, suggesting key geographic market for continued growth.

## Business Question
Which territory generate the highest number of orders?

# Result
![Reload Image](https://github.com/kibeth2011/SQL-Projects/blob/main/AdventureWorks%20Sales%20Analysis/Screenshots/Number%20of%20Orders%20by%20Territory.png)

## Insight
Australia generated the highest number with almost 7,000 orders, suggesting key geographic market for continued growth.

## Business Question
Which territory has the highest average order value?

## Result
![Reload Image](https://github.com/kibeth2011/SQL-Projects/blob/main/AdventureWorks%20Sales%20Analysis/Screenshots/Average%20Order%20Value%20by%20Territory.PNG)

## Insight
The Central territory recorded the highest average order value, indicating stronger purchasing power.

# Key Findings
1. AdventureWorks generated approximately $123.22 million in total revenue.
2. Revenue increased substantially between 2011 and 2013, reaching a peak of $48.97 million in 2013.
3. The business processed 31,465 sales orders during the analysis period.
4. Order volume and revenue both peaked in 2013 before declining in 2014, while average order value continued to decrease after 2012.
5. The company served 19,119 unique customers with average customer spending of $6,444.73.
6. Average revenue per product was approximately $412,956.32.
7. CustomerID 29818 generated the highest revenue, while customerID 11091 placed the highest number of orders.
8. The Central territory recorded the highest average order value.
9. The LL Road Seat/Saddle was the lowest-performing product, generating only $162.72 in revenue.

# Recommendations
1. Investigate the factors behind the decline in revenue, order volume, and average order value in 2014 to determine whether changes in customer demand, product mix, pricing, or market conditions contributed to the slowdown.
2. Focus marketing efforts on high-performing products and product categories.
3. Develop retention strategies for high-value customers.
4. Analyze the success factors behind top-performing territories and apply them to lower-performing regions.
5. Review low-performing products to determine whether pricing, promotion, or inventory adjustments are necessary.
6. Monitor monthly sales trends to identify seasonal opportunities and improve forecasting accuracy.

# Author

Kibet Hillary

BSc Applied Statistics, with IT (Second Class Honours, Upper Division)

Aspiring Data Analyst/Scientist

Email: kibeth2011@gmail.com

- <a href="https://github.com/kibeth2011">GitHub</a>

- <a href="https://www.linkedin.com/in/kibet-hillary-4654507b/">LinkedIn</a>





