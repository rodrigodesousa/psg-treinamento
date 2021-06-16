
-- Exercicios w3school SQL
-- Exercicios de SELECT
SELECT * FROM Customers;

SELECT City FROM Customers;

SELECT DISTINCT Country FROM Customers;

-- Exercicios de SELECT
SELECT * FROM Customers WHERE City = "Berlin";

SELECT * FROM Customers WHERE noNOTt City = 'Berlin';

SELECT * FROM Customers WHERE NOT City = 'Berlin';

SELECT * FROM Customers WHERE CustomerID = 32;

SELECT * FROM Customers WHERE City = 'Berlin' AND PostalCode = 12209;

SELECT * FROM Customers WHERE City = 'Berlin' OR City = 'London';

--Exercicios de ORDER BY

SELECT * FROM Customers ORDER BY City;

SELECT * FROM Customers ORDER BY City DESC;

SELECT * FROM Customers ORDER BY Country, City;

--Exercicios de Insert
INSERT INTO Customers(CustomerName, Address, City, PostalCode, Country)
VALUES('Hekkan Burger', 'Gateveien 15', 'Sandnes', '4306','Norway');

--Exercicios de Null
SELECT * FROM Customers WHERE PostalCode IS NULL;

SELECT * FROM Customers WHERE PostalCode IS NOT NULL;

--Exercicios de Update
UPDATE Customers SET City = 'Oslo';

UPDATE Customers SET City = 'Oslo' WHERE Country = 'Norway';

UPDATE Customers SET City = 'Oslo', Country = 'Norway' WHERE CustomerID = 32;