/*
    a. How many orders were shipped by Speedy Express in total?
       
       54 orders were shipped by Speedy Express
*/

SELECT COUNT(*)
FROM Orders o
JOIN Shippers s
    ON s.ShipperID = o.ShipperID
WHERE s.ShipperName = 'Speedy Express';


/*
    b. What is the last name of the employee with the most orders?
    
       Peacock is the last name of the employee with the most orders at 40 orders.
*/

SELECT LastName, COUNT(OrderID)
FROM Employees e
JOIN Orders o
	ON e.EmployeeID = o.EmployeeID
GROUP BY LastName
ORDER BY COUNT(OrderID) DESC;
-- We can add a LIMIT 1 clause if we want at the end to return just the one record


/*
    c. What product was ordered the most by customers in Germany?
    
       
*/
