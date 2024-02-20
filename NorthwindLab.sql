SELECT * FROM Customers;

SELECT DISTINCT Country FROM Customers;

SELECT * FROM Customers WHERE CustomerID LIKE 'BL%';

SELECT TOP 100 * FROM Orders;

SELECT * FROM Customers WHERE PostalCode = '1010' or PostalCode = '3012' or PostalCode = '12209' or PostalCode = '05023';

SELECT * FROM Orders WHERE ShipRegion IS NOT NULL;

SELECT * FROM Customers ORDER BY Country, City;

INSERT INTO Customers (CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax)
VALUES
	('Valve', 'Valve Corporation', 'Gabe Newell', 'CEO', 'SomeStreet 1234', 'Bellevue', 'WA', '12345', 'USA', '111-222-3333', NULL);

UPDATE Orders
SET ShipRegion = 'EuroZone'
WHERE ShipCountry = 'France';

DELETE FROM [Order Details] WHERE Quantity = 1;

SELECT CustomerID FROM Orders WHERE OrderID = 10290;

SELECT * FROM Orders JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

SELECT FirstName FROM Employees WHERE ReportsTo IS NULL;

SELECT FirstName FROM Employees WHERE ReportsTo IN (SELECT EmployeeID FROM Employees WHERE FirstName = 'Andrew');

CREATE INDEX cust_index ON Customers(CustomerID);

SELECT AVG(Quantity), MAX(Quantity), MIN(Quantity) FROM [Order Details] GROUP BY OrderID;

SELECT AVG(Quantity), MAX(Quantity), MIN(Quantity) FROM [Order Details];

SELECT * FROM Customers WHERE City = 'London' OR City = 'Paris';

SELECT * FROM Orders JOIN  Customers ON  Orders.CustomerID = Customers.CustomerID;

SELECT * FROM Orders LEFT JOIN  Customers ON  Orders.CustomerID = Customers.CustomerID;

SELECT * FROM Orders RIGHT JOIN  Customers ON  Orders.CustomerID = Customers.CustomerID;

SELECT DISTINCT City FROM Customers WHERE City IS NOT NULL;

SELECT FirstName FROM Employees ORDER BY FirstName;

SELECT* FROM [Order Details]

SELECT CAST(((UnitPrice * Quantity) - (0.15 * UnitPrice * Quantity)) AS DECIMAL(10, 2)) AS [Total] FROM [Order Details]

SELECT * FROM Employees WHERE HireDate BETWEEN '1/1/1994' AND GETDATE() ORDER BY HireDate;

SELECT CAST((GETDATE() - HireDate) AS INT)/360 AS [Total Years Worked], FirstName, LastName FROM Employees; 

SELECT * FROM Products ORDER BY UnitsInStock;

SELECT * FROM Products ORDER BY UnitsInStock DESC;

SELECT * FROM Products WHERE UnitsInStock < 6;

SELECT * FROM Products WHERE Discontinued = 1;

SELECT * FROM Products WHERE ProductName LIKE '%tofu%'

SELECT * FROM Products WHERE UnitPrice IN (SELECT MAX(UnitPrice) FROM Products)

SELECT * FROM Employees WHERE HireDate > '1/1/1993';

SELECT * FROM Employees WHERE TitleOfCourtesy LIKE 'Mrs.' OR TitleOfCourtesy LIKE 'Ms.';

SELECT * FROM Employees WHERE HomePhone LIKE '(206)%'