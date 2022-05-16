/*
=================================================================
    a. How many orders were shipped by Speedy Express in total?
       
ANSWER: 54 orders were shipped by Speedy Express
=================================================================
*/

SELECT COUNT(*)
FROM Orders o
JOIN Shippers s
    ON s.ShipperID = o.ShipperID
WHERE s.ShipperName = 'Speedy Express';


/*
====================================================================================
    b. What is the last name of the employee with the most orders?
    
ANSWER: Peacock is the last name of the employee with the most orders at 40 orders.
====================================================================================
*/

SELECT LastName, COUNT(OrderID)
FROM Employees e
JOIN Orders o
	ON e.EmployeeID = o.EmployeeID
GROUP BY LastName
ORDER BY COUNT(OrderID) DESC;
-- We can add a 'LIMIT 1' clause just before the ';' if we wish to return just the one record



/*
====================================================================================================================
    c. What product was ordered the most by customers in Germany?
    
       This question is a little ambiguous and could mean one of two things:
       1. Which product appeared in most orders
       2. Which product was ordered the most by quantity

       I will answer both questions, and in practice, I would ask for a clarification from the requesting team

--------------------------------------------------------------------------------------------------------------------
       
    c.(1) Which product appeared in the most orders by German customers?
          
ANSWER:  Gorgonzola Telino was ordered the most at 5 unique orders in Germany
====================================================================================================================
*/

SELECT COUNT(od.Quantity) AS UniqueOrders, p.ProductName
FROM Products p
JOIN OrderDetails od
	ON p.ProductID = od.ProductID
JOIN Orders o
	ON od.OrderID = o.OrderID
JOIN Customers c
	ON o.CustomerID = c.CustomerID
WHERE c.Country = 'Germany'
GROUP BY p.ProductID
ORDER BY  1 DESC;
-- We can add a 'LIMIT 1' clause just before the ';' if we wish to return just the one record


/*
===============================================================================
    c.(2) Which product sold the most quantity in Germany?
    
ANSWER:  Boston Crab Meat sold the most at 160 total quantity sold in Germany
===============================================================================        
*/

SELECT SUM(od.Quantity) AS TotalQuantity, p.ProductName
FROM Products p
JOIN OrderDetails od
	ON p.ProductID = od.ProductID
JOIN Orders o
	ON od.OrderID = o.OrderID
JOIN Customers c
	ON o.CustomerID = c.CustomerID
WHERE c.Country = 'Germany'
GROUP BY p.ProductID
ORDER BY  1 DESC;
-- We can add a 'LIMIT 1' clause just before the ';' if we wish to return just the one record