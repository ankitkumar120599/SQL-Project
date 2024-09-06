create database Customers_Orders_Products ;
use Customers_Orders_Products 
CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  Name VARCHAR(50),
  Email VARCHAR(100)
);

INSERT INTO Customers (CustomerID, Name, Email)
VALUES
  (1, 'John Doe', 'johndoe@example.com'),
  (2, 'Jane Smith', 'janesmith@example.com'),
  (3, 'Robert Johnson', 'robertjohnson@example.com'),
  (4, 'Emily Brown', 'emilybrown@example.com'),
  (5, 'Michael Davis', 'michaeldavis@example.com'),
  (6, 'Sarah Wilson', 'sarahwilson@example.com'),
  (7, 'David Thompson', 'davidthompson@example.com'),
  (8, 'Jessica Lee', 'jessicalee@example.com'),
  (9, 'William Turner', 'williamturner@example.com'),
  (10, 'Olivia Martinez', 'oliviamartinez@example.com'),
  (11, 'Alex Brown', 'alexbrown@example.com'),
  (12, 'Sophie Turner', 'sophieturner@example.com'),
  (13, 'Charlie Miller', 'charliemiller@example.com'),
  (14, 'Ava Wilson', 'avawilson@example.com'),
  (15, 'Daniel Harris', 'danielharris@example.com'),
  (16, 'Emma Davis', 'emmadavis@example.com'),
  (17, 'James White', 'jameswhite@example.com'),
  (18, 'Lily Martin', 'lilymartin@example.com'),
  (19, 'Benjamin Johnson', 'benjaminjohnson@example.com'),
  (20, 'Zoe Anderson', 'zoeanderson@example.com'),
  (21, 'Jackson Moore', 'jacksonmoore@example.com'),
  (22, 'Victoria Lewis', 'victorialewis@example.com'),
  (23, 'Ethan Garcia', 'ethangarcia@example.com'),
  (24, 'Grace Taylor', 'gracetaylor@example.com'),
  (25, 'Christopher Hall', 'christopherhall@example.com');

  drop table Orders
  select * from orders
CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  productID int,
  ProductName VARCHAR(50),
  OrderDate DATE,
  Quantity INT
);

INSERT INTO Orders (OrderID, CustomerID, productID, ProductName, OrderDate, Quantity)
VALUES
  (1, 1, 1, 'Product A', '2023-07-01', 5),
  (2, 2, 2, 'Product B', '2023-07-02', 3),
  (3, 3, 3, 'Product C', '2023-07-03', 2),
  (4, 4, 4, 'Product A', '2023-07-04', 1),
  (5, 5, 5, 'Product B', '2023-07-05', 4),
  (6, 6, 6, 'Product C', '2023-07-06', 2),
  (7, 7, 7, 'Product A', '2023-07-07', 3),
  (8, 8, 8, 'Product B', '2023-07-08', 2),
  (9, 9, 9, 'Product C', '2023-07-09', 5),
  (10, 10, 10, 'Product A', '2023-07-10', 1),
  (11, 11, 11, 'Product D', '2023-07-11', 2),
  (12, 12, 12, 'Product E', '2023-07-12', 3),
  (13, 13, 13, 'Product F', '2023-07-13', 4),
  (14, 14, 14, 'Product G', '2023-07-14', 1),
  (15, 15, 15, 'Product H', '2023-07-15', 5),
  (16, 16, 16, 'Product I', '2023-07-16', 2),
  (17, 17, 17, 'Product J', '2023-07-17', 3),
  (18, 18, 18, 'Product A', '2023-07-18', 4),
  (19, 19, 19, 'Product B', '2023-07-19', 2),
  (20, 20, 20, 'Product C', '2023-07-20', 1),
  (21, 21, 21, 'Product D', '2023-07-21', 3),
  (22, 22, 22, 'Product E', '2023-07-22', 5),
  (23, 23, 23, 'Product F', '2023-07-23', 2),
  (24, 24, 24, 'Product G', '2023-07-24', 1),
  (25, 25, 25, 'Product H', '2023-07-25', 4);



CREATE TABLE Products (
  ProductID INT PRIMARY KEY,
  ProductName VARCHAR(50),
  Price DECIMAL(10, 2)
);

INSERT INTO Products (ProductID, ProductName, Price)
VALUES
  (1, 'Product A', 10.99),
  (2, 'Product B', 8.99),
  (3, 'Product C', 5.99),
  (4, 'Product D', 12.99),
  (5, 'Product E', 7.99),
  (6, 'Product F', 6.99),
  (7, 'Product G', 9.99),
  (8, 'Product H', 11.99),
  (9, 'Product I', 14.99),
  (10, 'Product J', 4.99),
  (11, 'Product K', 15.99),
  (12, 'Product L', 9.99),
  (13, 'Product M', 6.49),
  (14, 'Product N', 11.49),
  (15, 'Product O', 8.99),
  (16, 'Product P', 7.49),
  (17, 'Product Q', 10.99),
  (18, 'Product R', 13.99),
  (19, 'Product S', 16.49),
  (20, 'Product T', 5.49),
  (21, 'Product U', 14.99),
  (22, 'Product V', 8.49),
  (23, 'Product W', 9.99),
  (24, 'Product X', 12.49),
  (25, 'Product Y', 4.99);

   --(Task 1)
---  1.	Write a query to retrieve all records from the Customers table..


  select * from Customers
  select *from Orders
  select * from Products
   
  ---2.	Write a query to retrieve the names and email addresses of customers whose names start with 'J'.

   select Name,Email from Customers where Name like 'j%';

 --  3.	Write a query to retrieve the order details (OrderID, ProductName, Quantity) for all orders..
   select orderID,productname,quantity from Orders

--    SELECT 
--     o.OrderID, 
--     p.ProductName, 
--     o.Quantity
-- FROM 
--     Orders o
-- JOIN 
--     Products p ON o.ProductID = p.ProductID;

   --4.	Write a query to calculate the total quantity of products ordered.
  SELECT SUM(quantity) AS total_quantity_ordered
FROM orders;

--5.	Write a query to retrieve the names of customers who have placed an order.
SELECT DISTINCT c.Name
FROM customers c
JOIN orders o ON c.customerid = o.customerid;

--6.	Write a query to retrieve the products with a price greater than $10.00.
select * from Products where price > $10.00  
--  here we can retrieve only ProductID, ProductName,Price insted of all data


--7.	Write a query to retrieve the customer name and order date for all orders placed on or after '2023-07-05'.
SELECT c.Name, o.orderdate
FROM customers c
JOIN orders o ON c.customerid = o.customerid
WHERE o.orderdate >= '2023-07-05';

--8.	Write a query to calculate the average price of all products.
SELECT AVG(price) as Average_price
FROM products;

--9.	Write a query to retrieve the customer names along with the total quantity of products they have ordered.
SELECT c.Name, SUM(o.quantity) AS total_quantity_ordered
FROM customers c
JOIN orders o ON c.customerid = o.customerid
GROUP BY c.Name;

-- SELECT 
--     c.Name AS CustomerName, 
--     o.OrderDate
-- FROM 
--     Orders o
-- JOIN 
--     Customers c ON o.CustomerID = c.CustomerID
-- WHERE 
--     o.OrderDate >= '2023-07-05';

--10.	Write a query to retrieve the products that have not been ordered.
SELECT p.productname
FROM products p
LEFT JOIN orders o ON p.ProductName = o.ProductName
WHERE o.ProductName IS NULL;

-- SELECT 
--     p.ProductID, 
--     p.ProductName
-- FROM 
--     Products p
-- LEFT JOIN 
--     Orders o ON p.ProductID = o.ProductID
-- WHERE 
--     o.ProductID IS NULL;

---Task 2

--1.	Write a query to retrieve the top 5 customers who have placed the highest total quantity of orders.
SELECT c.name, SUM(o.quantity) AS total_quantity_ordered
FROM customers c
JOIN orders o ON c.customerid = o.customerid
GROUP BY c.name
ORDER BY total_quantity_ordered DESC 
LIMIT 5;


--2.	Write a query to calculate the average price of products for each product category.
SELECT productName, AVG(price) AS average_price
FROM products
GROUP BY productname;

--3.	Write a query to retrieve the customers who have not placed any orders.
SELECT c.name
FROM customers c
LEFT JOIN orders o ON c.CustomerID = o.customerid
WHERE o.customerid IS NULL;

select * from Customers


--4.	Write a query to retrieve the order details (OrderID, ProductName, Quantity) for orders placed by customers whose names start with 'M'.
SELECT o.orderid, p.productname, o.quantity
FROM customers c
JOIN orders o ON c.customerid = o.customerid
JOIN products p ON o.ProductName = p.ProductName
WHERE c.name LIKE 'M%';

-- SELECT 
--     o.OrderID, 
--     p.ProductName, 
--     o.Quantity
-- FROM 
--     Orders o
-- JOIN 
--     Customers c ON o.CustomerID = c.CustomerID
-- JOIN 
--     Products p ON o.ProductID = p.ProductID
-- WHERE 
--     c.Name LIKE 'M%';

--5.	Write a query to calculate the total revenue generated from all orders.
SELECT 
    SUM(o.quantity * p.price) AS total_revenue
FROM 
    orders o
JOIN 
    products p ON o.ProductName = p.ProductName;

--6.	Write a query to retrieve the customer names along with the total revenue generated from their orders.

SELECT 
    c.name, 
    SUM(o.quantity * p.price) AS total_revenue
FROM 
    customers c
JOIN 
    orders o ON c.customerid = o.customerid
JOIN 
    products p ON o.ProductName = p.ProductName
GROUP BY 
    c.name
ORDER BY 
    total_revenue DESC;

--7.	Write a query to retrieve the customers who have placed at least one order for each product category.
SELECT 
    c.customerid,
    c.name
FROM 
    customers c
JOIN 
    orders o ON c.customerid = o.customerid
JOIN 
    products p ON o.ProductName = p.ProductName
GROUP BY 
    c.customerid, c.name
HAVING 
    COUNT(DISTINCT p.productid) = (SELECT COUNT(*) FROM products);


select COUNT (c.Name),c.CustomerID
from Customers c
join
Orders o on c .CustomerID = o .CustomerID
join
Products p on o.productID = p.ProductID
group by c.CustomerID,c.Name
having count(p.ProductID) = (select COUNT (*) from Products);

-- WITH CategoryCount AS (
--     SELECT DISTINCT 
--         p.Category
--     FROM 
--         Products p
-- ),
-- CustomerCategoryOrders AS (
--     SELECT 
--         o.CustomerID,
--         p.Category
--     FROM 
--         Orders o
--     JOIN 
--         Products p ON o.ProductID = p.ProductID
--     GROUP BY 
--         o.CustomerID, p.Category
-- ),
-- CustomerCategoryTotals AS (
--     SELECT 
--         c.CustomerID,
--         COUNT(DISTINCT cco.Category) AS CategoriesOrdered
--     FROM 
--         Customers c
--     JOIN 
--         CustomerCategoryOrders cco ON c.CustomerID = cco.CustomerID
--     GROUP BY 
--         c.CustomerID
-- ),
-- TotalCategories AS (
--     SELECT 
--         COUNT(DISTINCT Category) AS TotalCategories
--     FROM 
--         CategoryCount
-- )
-- SELECT 
--     c.CustomerID, 
--     c.Name
-- FROM 
--     Customers c
-- JOIN 
--     CustomerCategoryTotals cct ON c.CustomerID = cct.CustomerID
-- JOIN 
--     TotalCategories tc ON cct.CategoriesOrdered = tc.TotalCategories
-- ORDER BY 
--     c.CustomerID;


--8.	Write a query to retrieve the customers who have placed orders on consecutive days.
SELECT DISTINCT 
    c.customerid,
    c.name
FROM 
    customers c
JOIN 
    orders o1 ON c.customerid = o1.customerid
JOIN 
    orders o2 ON c.customerid = o2.customerid 
    AND o1.orderid <> o2.orderid 
    AND o1.orderdate = o2.orderdate  ;


	select *from Orders

--     WITH OrderedOrders AS (
--     SELECT 
--         o.CustomerID, 
--         o.OrderDate,
--         LAG(o.OrderDate) OVER (PARTITION BY o.CustomerID ORDER BY o.OrderDate) AS PrevOrderDate
--     FROM 
--         Orders o
-- ),
-- ConsecutiveOrders AS (
--     SELECT 
--         CustomerID,
--         OrderDate,
--         PrevOrderDate,
--         CASE
--             WHEN DATEDIFF(day, PrevOrderDate, OrderDate) = 1 THEN 1
--             ELSE 0
--         END AS IsConsecutive
--     FROM 
--         OrderedOrders
-- )
-- SELECT DISTINCT 
--     c.CustomerID, 
--     c.Name
-- FROM 
--     Customers c
-- JOIN 
--     ConsecutiveOrders co ON c.CustomerID = co.CustomerID
-- WHERE 
--     co.IsConsecutive = 1
-- ORDER BY 
--     c.CustomerID;

--9.	Write a query to retrieve the top 3 products with the highest average quantity ordered.

SELECT 
    ProductName,
    AVG(quantity) AS average_quantity
FROM 
    orders
GROUP BY 
    ProductName
ORDER BY 
    average_quantity DESC
    LIMIT 3;


--10.	Write a query to calculate the percentage of orders that have a quantity greater than the average quantity.
WITH avg_quantity AS (
    SELECT AVG(quantity) AS average_quantity
    FROM orders
)
SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM orders)) AS percentage_above_average
FROM 
    orders
WHERE 
    quantity > (SELECT average_quantity FROM avg_quantity);


select * from Orders

-- WITH AverageQuantity AS (
--     SELECT 
--         AVG(Quantity) AS AvgQuantity
--     FROM 
--         Orders
-- ),
-- OrdersAboveAverage AS (
--     SELECT 
--         COUNT(*) AS CountAboveAverage
--     FROM 
--         Orders o
--     JOIN 
--         AverageQuantity aq ON o.Quantity > aq.AvgQuantity
-- ),
-- TotalOrders AS (
--     SELECT 
--         COUNT(*) AS TotalCount
--     FROM 
--         Orders
-- )
-- SELECT 
--     (oa.CountAboveAverage * 100.0 / to.TotalCount) AS PercentageAboveAverage
-- FROM 
--     OrdersAboveAverage oa
-- JOIN 
--     TotalOrders to ON 1 = 1;

---Task 3

--1.	Write a query to retrieve the customers who have placed orders for all products.
SELECT c.customerid, c.name
FROM customers c
JOIN orders o ON c.customerid = o.customerid
GROUP BY c.customerid, c.name
HAVING COUNT(DISTINCT o.ProductName) = (SELECT COUNT(DISTINCT p.productid) FROM products p);

-- WITH TotalProducts AS (
--     SELECT 
--         COUNT(DISTINCT ProductID) AS TotalProductCount
--     FROM 
--         Products
-- ),
-- CustomerProductCount AS (
--     SELECT 
--         o.CustomerID,
--         COUNT(DISTINCT o.ProductID) AS OrderedProductCount
--     FROM 
--         Orders o
--     GROUP BY 
--         o.CustomerID
-- ),
-- CustomerAllProducts AS (
--     SELECT 
--         c.CustomerID,
--         c.Name
--     FROM 
--         Customers c
--     JOIN 
--         CustomerProductCount cpc ON c.CustomerID = cpc.CustomerID
--     JOIN 
--         TotalProducts tp ON cpc.OrderedProductCount = tp.TotalProductCount
-- )
-- SELECT 
--     CustomerID, 
--     Name
-- FROM 
--     CustomerAllProducts
-- ORDER BY 
--     CustomerID;

--2.	Write a query to retrieve the products that have been ordered by all customers.
SELECT 
    ProductName
FROM 
    orders
GROUP BY 
    ProductName
HAVING 
    COUNT(DISTINCT customerid) = (SELECT COUNT(DISTINCT customerid) FROM orders);

-- WITH TotalCustomers AS (
--     SELECT 
--         COUNT(DISTINCT CustomerID) AS CustomerCount
--     FROM 
--         Customers
-- ),
-- ProductCustomerCount AS (
--     SELECT 
--         o.ProductID,
--         COUNT(DISTINCT o.CustomerID) AS OrderedByCustomerCount
--     FROM 
--         Orders o
--     GROUP BY 
--         o.ProductID
-- ),
-- ProductsOrderedByAllCustomers AS (
--     SELECT 
--         p.ProductID,
--         p.ProductName
--     FROM 
--         Products p
--     JOIN 
--         ProductCustomerCount pcc ON p.ProductID = pcc.ProductID
--     JOIN 
--         TotalCustomers tc ON pcc.OrderedByCustomerCount = tc.CustomerCount
-- )
-- SELECT 
--     ProductID,
--     ProductName
-- FROM 
--     ProductsOrderedByAllCustomers
-- ORDER BY 
--     ProductID;

--3.	Write a query to calculate the total revenue generated from orders placed in each month.
SELECT 
    DATE_FORMAT(orderdate, '%Y-%m') AS order_month,
    SUM(revenue) AS total_revenue
FROM 
    orders
GROUP BY 
    DATE_FORMAT(orderdate, '%Y-%m')
ORDER BY 
    OrderDate;

SELECT 
    (o.orderdate, '%Y-%m') AS order_month,
    SUM(o.quantity * p.price) AS total_revenue
FROM orders o
JOIN Products p ON o.productid = p.productid
GROUP BY OrderDate
ORDER BY order_month;




--4.	Write a query to retrieve the products that have been ordered by more than 50% of the customers.
WITH TotalCustomers AS (
    SELECT COUNT(*) AS TotalCount
    FROM Customers
),
ProductOrders AS (
    SELECT ProductID, COUNT(DISTINCT CustomerID) AS CustomerOrderCount
    FROM Orders
    GROUP BY ProductID
)
SELECT p.ProductID, p.ProductName, p.Price
FROM Products p
JOIN ProductOrders po ON p.ProductID = po.ProductID
JOIN TotalCustomers tc ON po.CustomerOrderCount > (tc.TotalCount / 2);

--5.	Write a query to retrieve the top 5 customers who have spent the highest amount of money on orders.
SELECT c.CustomerID, c.Name, c.Email, SUM(o.Quantity * p.Price) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY c.CustomerID, c.Name, c.Email
ORDER BY TotalSpent DESC
LIMIT 5;
--6.	Write a query to calculate the running total of order quantities for each customer.
SELECT 
    CustomerID, 
    OrderID, 
    OrderDate, 
    Quantity,
    SUM(Quantity) OVER (
        PARTITION BY CustomerID 
        ORDER BY OrderDate, OrderID
    ) AS RunningTotalQuantity
FROM Orders
ORDER BY CustomerID, OrderDate, OrderID;
--7.	Write a query to retrieve the top 3 most recent orders for each customer.
WITH RankedOrders AS (
    SELECT 
        OrderID, 
        CustomerID, 
        ProductID,
        ProductName,
        OrderDate, 
        Quantity,
        ROW_NUMBER() OVER (
            PARTITION BY CustomerID 
            ORDER BY OrderDate DESC, OrderID DESC
        ) AS OrderRank
    FROM Orders
)
SELECT 
    OrderID, 
    CustomerID, 
    ProductID,
    ProductName,
    OrderDate, 
    Quantity
FROM RankedOrders
WHERE OrderRank <= 3
ORDER BY CustomerID, OrderRank;
--8.	Write a query to calculate the total revenue generated by each customer in the last 30 days.
SELECT 
    c.CustomerID, 
    c.Name, 
    SUM(o.Quantity * p.Price) AS TotalRevenue
FROM 
    Customers c
JOIN 
    Orders o ON c.CustomerID = o.CustomerID
JOIN 
    Products p ON o.ProductID = p.ProductID
WHERE 
    o.OrderDate >= DATEADD(DAY, -30, GETDATE())  -- Adjust based on SQL dialect, e.g., use CURDATE() or CURRENT_DATE for MySQL
GROUP BY 
    c.CustomerID, c.Name
ORDER BY 
    TotalRevenue DESC;
--9.	Write a query to retrieve the customers who have placed orders for at least two different product categories.
SELECT 
    c.CustomerID, 
    c.Name, 
    COUNT(DISTINCT p.CategoryID) AS DifferentCategoriesOrdered
FROM 
    Customers c
JOIN 
    Orders o ON c.CustomerID = o.CustomerID
JOIN 
    Products p ON o.ProductID = p.ProductID
GROUP BY 
    c.CustomerID, c.Name
HAVING 
    COUNT(DISTINCT p.CategoryID) >= 2
ORDER BY 
    DifferentCategoriesOrdered DESC;
--10.	Write a query to calculate the average revenue per order for each customer.
SELECT 
    c.CustomerID, 
    c.Name, 
    SUM(o.Quantity * p.Price) / COUNT(o.OrderID) AS AvgRevenuePerOrder
FROM 
    Customers c
JOIN 
    Orders o ON c.CustomerID = o.CustomerID
JOIN 
    Products p ON o.ProductID = p.ProductID
GROUP BY 
    c.CustomerID, c.Name
ORDER BY 
    AvgRevenuePerOrder DESC;
--11.	Write a query to retrieve the customers who have placed orders for every month of a specific year.
WITH MonthlyOrders AS (
    SELECT 
        CustomerID,
        EXTRACT(YEAR FROM OrderDate) AS OrderYear,
        EXTRACT(MONTH FROM OrderDate) AS OrderMonth
    FROM 
        Orders
    WHERE 
        EXTRACT(YEAR FROM OrderDate) = 2024  -- Replace with the specific year
    GROUP BY 
        CustomerID, EXTRACT(YEAR FROM OrderDate), EXTRACT(MONTH FROM OrderDate)
),
Months AS (
    SELECT DISTINCT 
        EXTRACT(MONTH FROM OrderDate) AS Month
    FROM 
        Orders
    WHERE 
        EXTRACT(YEAR FROM OrderDate) = 2024  -- Replace with the specific year
),
CustomerMonths AS (
    SELECT 
        mo.CustomerID,
        COUNT(DISTINCT mo.OrderMonth) AS NumMonths
    FROM 
        MonthlyOrders mo
    JOIN 
        Months m ON mo.OrderMonth = m.Month
    GROUP BY 
        mo.CustomerID
)
SELECT 
    c.CustomerID,
    c.Name
FROM 
    Customers c
JOIN 
    CustomerMonths cm ON c.CustomerID = cm.CustomerID
WHERE 
    cm.NumMonths = (SELECT COUNT(*) FROM Months)
ORDER BY 
    c.CustomerID;

--12.	Write a query to retrieve the customers who have placed orders for a specific product in consecutive months.
WITH OrderMonths AS (
    SELECT 
        CustomerID,
        ProductID,
        EXTRACT(YEAR FROM OrderDate) AS OrderYear,
        EXTRACT(MONTH FROM OrderDate) AS OrderMonth
    FROM 
        Orders
    WHERE 
        ProductID = 1  -- Replace with the specific ProductID
    GROUP BY 
        CustomerID, ProductID, EXTRACT(YEAR FROM OrderDate), EXTRACT(MONTH FROM OrderDate)
),
ConsecutiveMonths AS (
    SELECT
        CustomerID,
        ProductID,
        OrderYear,
        OrderMonth,
        LAG(OrderMonth) OVER (PARTITION BY CustomerID, ProductID, OrderYear ORDER BY OrderMonth) AS PrevMonth,
        LAG(OrderYear) OVER (PARTITION BY CustomerID, ProductID, OrderYear ORDER BY OrderMonth) AS PrevYear
    FROM
        OrderMonths
),
ConsecutiveOrders AS (
    SELECT
        CustomerID,
        ProductID,
        OrderYear,
        OrderMonth,
        CASE
            WHEN (OrderYear = PrevYear AND OrderMonth = PrevMonth + 1) OR (OrderYear = PrevYear + 1 AND PrevMonth = 12 AND OrderMonth = 1)
            THEN 1
            ELSE 0
        END AS IsConsecutive
    FROM
        ConsecutiveMonths
),
CustomerConsecutives AS (
    SELECT
        CustomerID,
        ProductID,
        COUNT(*) AS ConsecutiveCount
    FROM
        ConsecutiveOrders
    WHERE
        IsConsecutive = 1
    GROUP BY
        CustomerID, ProductID
)
SELECT DISTINCT
    c.CustomerID,
    c.Name
FROM
    Customers c
JOIN
    CustomerConsecutives cc ON c.CustomerID = cc.CustomerID
ORDER BY
    c.CustomerID;
--13.	Write a query to retrieve the products that have been ordered by a specific customer at least twice.
SELECT 
    p.ProductID, 
    p.ProductName,
    COUNT(o.OrderID) AS OrderCount
FROM 
    Orders o
JOIN 
    Products p ON o.ProductID = p.ProductID
WHERE 
    o.CustomerID = 123  -- Replace with the specific CustomerID
GROUP BY 
    p.ProductID, p.ProductName
HAVING 
    COUNT(o.OrderID) >= 2
ORDER BY 
    OrderCount DESC;

