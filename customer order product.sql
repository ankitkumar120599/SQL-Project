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

   --4.	Write a query to calculate the total quantity of products ordered.
  SELECT SUM(quantity) AS total_quantity_ordered
FROM orders;

--5.	Write a query to retrieve the names of customers who have placed an order.
SELECT DISTINCT c.Name
FROM customers c
JOIN orders o ON c.customerid = o.customerid;

--6.	Write a query to retrieve the products with a price greater than $10.00.
select * from Products where price > $10.00

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

--10.	Write a query to retrieve the products that have not been ordered.
SELECT p.productname
FROM products p
LEFT JOIN orders o ON p.ProductName = o.ProductName
WHERE o.ProductName IS NULL;

---Task 2

--1.	Write a query to retrieve the top 5 customers who have placed the highest total quantity of orders.
SELECT c.name, SUM(o.quantity) AS total_quantity_ordered
FROM customers c
JOIN orders o ON c.customerid = o.customerid
GROUP BY c.name
ORDER BY total_quantity_ordered DESC ;


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

--9.	Write a query to retrieve the top 3 products with the highest average quantity ordered.

SELECT 
    ProductName,
    AVG(quantity) AS average_quantity
FROM 
    orders
GROUP BY 
    ProductName
ORDER BY 
    average_quantity DESC;


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
---Task 3

--1.	Write a query to retrieve the customers who have placed orders for all products.
SELECT c.customerid, c.name
FROM customers c
JOIN orders o ON c.customerid = o.customerid
GROUP BY c.customerid, c.name
HAVING COUNT(DISTINCT o.ProductName) = (SELECT COUNT(DISTINCT p.productid) FROM products p);

--2.	Write a query to retrieve the products that have been ordered by all customers.
SELECT 
    ProductName
FROM 
    orders
GROUP BY 
    ProductName
HAVING 
    COUNT(DISTINCT customerid) = (SELECT COUNT(DISTINCT customerid) FROM orders);

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
--5.	Write a query to retrieve the top 5 customers who have spent the highest amount of money on orders.
--6.	Write a query to calculate the running total of order quantities for each customer.
--7.	Write a query to retrieve the top 3 most recent orders for each customer.
--8.	Write a query to calculate the total revenue generated by each customer in the last 30 days.
--9.	Write a query to retrieve the customers who have placed orders for at least two different product categories.
--10.	Write a query to calculate the average revenue per order for each customer.
--11.	Write a query to retrieve the customers who have placed orders for every month of a specific year.
--12.	Write a query to retrieve the customers who have placed orders for a specific product in consecutive months.
--13.	Write a query to retrieve the products that have been ordered by a specific customer at least twice.

