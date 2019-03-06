-- Exercise 1 Task 1
SELECT CustomerID, CompanyName, Address, City, Region, PostalCode, Country 
FROM Customers WHERE City = 'London' OR City= 'Paris'

-- Exercise 1 Task 2
SELECT * FROM Products 
WHERE QuantityPerUnit LIKE '%Bot%'

-- Exercise 1 Task 3
SELECT s.CompanyName, s.Country 
FROM Suppliers s INNER JOIN Products p ON  p.SupplierID = s.SupplierID 
WHERE QuantityPerUnit LIKE '%Bot%'

-- Exercise 1 Task 4
SELECT CategoryName, p.Reorderlevel + UnitsInStock AS "Product Amount" 
FROM Products p INNER JOIN Categories c ON c.CategoryID = p.CategoryID 
GROUP BY p.Reorderlevel + UnitsInStock, CategoryName ORDER BY "Product Amount" DESC

-- Exercise 1 Task 5
SELECT TitleOfCourtesy, FirstName, LastName, City AS 'UK Employees' 
FROM Employees WHERE Country= 'UK'

-- Exercise 1 Task 6
SELECT FORMAT((SUM(UnitPrice) * SUM(Quantity)), 'N', 'en-us') AS "Sale Total" 
FROM [Order Details] od
INNER JOIN Orders o  
ON od.OrderID = o.OrderID
INNER JOIN EmployeeTerritories emt
ON o.EmployeeID = emt.EmployeeID
INNER JOIN Territories t
ON emt.TerritoryID = t.TerritoryID
INNER JOIN Region rg
ON t.RegionID = rg.RegionID ORDER BY "Sale Total" ASC

-- Exercise 1 Task 7
SELECT COUNT(*) FROM Orders 
WHERE Freight > 100.00 AND ShipCountry= 'USA' OR ShipCountry= 'UK' 

-- Exercise 1 Task 8
SELECT o.OrderID, Max(od.Discount) AS "Max Discount" 
FROM Orders o INNER JOIN [Order Details] od ON o.OrderID = od.OrderID 
GROUP BY o.OrderID, od. Discount ORDER BY "Max Discount" DESC; 