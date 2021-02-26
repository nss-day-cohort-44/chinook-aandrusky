
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

--7
SELECT Total, c.FirstName AS C_FirstName, c.LastName AS C_LastName, c.Country, InvoiceId, e.FirstName AS E_FirstName, e.LastName AS E_LastName
FROM Invoice i
JOIN Customer c 
    ON c.CustomerId = i.CustomerId
JOIN Employee e  
    ON e.EmployeeId = c.SupportRepId

--8
SELECT COUNT(InvoiceDate) from Invoice 
WHERE InvoiceDate LIKE '2009%' OR InvoiceDate LIKE '2011%';

--9
SELECT SUM(total),
    strftime("%Y", InvoiceDate) as year
FROM Invoice
WHERE year == "2009" OR year == "2011"
GROUP BY year;

--10
SELECT COUNT(InvoiceId) 
FROM InvoiceLine
WHERE InvoiceId = 37

--11
SELECT  InvoiceId, COUNT(InvoiceId) AS NumOfLineItems
FROM InvoiceLine
GROUP BY InvoiceId

--12
SELECT Name, InvoiceId, InvoiceLineId
FROM Track t
JOIN InvoiceLine i 
    ON t.TrackId = i.TrackId

--13
SELECT Name, Composer, InvoiceId
FROM Track t
JOIN InvoiceLine i 
    ON t.TrackId = i.TrackId

--14
SELECT BillingCountry, COUNT(InvoiceId) AS NumberOfInvoices
FROM Invoice
GROUP BY BillingCountry

--15
SELECT COUNT(TrackId), PlaylistId
FROM PlaylistTrack  
GROUP BY PlaylistId

--16
