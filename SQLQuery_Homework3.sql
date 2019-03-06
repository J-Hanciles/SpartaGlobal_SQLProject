--Exercise 3 Task 1
-- List all Employees from the Employees table and who they report to. No Excel required. (5 Marks)

/*SELECT TitleOfCourtesy + ' ' + FirstName + ' ' + LastName + ', ' + Title 
AS "Employees", ReportsTo  
FROM Employees*/


--Exercise 3 Task 2 
-- List all Suppliers with total sales over $10,000 in the Order Details table.
-- Include the Company Name from the Suppliers Table and present as a bar chart as below: (5 Marks)


/*SELECT s.CompanyName AS "Company Name", SUM(Sales) AS "Total Sales" FROM Suppliers s
INNER JOIN Products p 
ON s.SupplierID = p.SupplierID
INNER JOIN (SELECT ProductID, UnitPrice*Quantity AS "Sales" FROM [Order Details])o 
ON p.ProductID = o.ProductID
GROUP BY s.CompanyName
HAVING SUM(Sales) > 10000
ORDER BY SUM(Sales);*/




-- Exercise 3 Task 3 
-- List the Top 10 Customers YTD for the latest year in the Orders file. 
-- Based on total value of orders shipped. No Excel required. (10 Marks)

/*SELECT Top (10) c.CompanyName, COUNT(o.ShipName) 
FROM Orders o INNER JOIN Customers c ON o.CustomerID = c.CustomerID 
GROUP BY c.CompanyName, o.ShippedDate ORDER BY COUNT(o.ShippedDate)*/


-- Exercise 3 Task 4
-- Plot the Average Ship Time by month for all data in the 
-- Orders Table using a line chart as below. (10 Marks)
SELECT AVG(DATEDIFF(day, OrderDate, ShippedDate)) AS "Shipping Time", MONTH(ShippedDate) AS "Monthly Average" FROM [Orders]
GROUP BY MONTH(ShippedDate)
HAVING MONTH(ShippedDate) IS NOT NULL
ORDER BY "Monthly Average"
