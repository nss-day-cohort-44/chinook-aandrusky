
-- 1
SELECT FirstName, LastName, CustomerId, Country
FROM Customer
WHERE Country != "USA"


--2
SELECT FirstName, LastName, CustomerId
FROM Customer
WHERE Country = "Brazil"

--3
SELECT FirstName, LastName, InvoiceId
FROM Customer c
JOIN Invoice i
    ON c.CustomerId = i.CustomerId
WHERE Country = "Brazil"

--4
SELECT FirstName, LastName, EmployeeId, Title
FROM Employee
WHERE title LIKE "%Agent%";

--5
SELECT DISTINCT BillingCountry FROM  Invoice 
ORDER BY BillingCountry ASC;

--6
SELECT e.FirstName, e.LastName, InvoiceId
FROM Employee e
JOIN Customer c
    ON e.EmployeeId = c.SupportRepId
JOIN Invoice i
    ON i.CustomerId = c.CustomerId
ORDER BY InvoiceId ASC;


--6?
SELECT FirstName, LastName, InvoiceId 
FROM Employee
  JOIN Customer
    ON EmployeeId = SupportRepId;

