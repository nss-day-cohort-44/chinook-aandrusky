--3
SELECT FirstName, LastName, InvoiceId
FROM Customer c
JOIN Invoice i
    ON c.CustomerId = i.CustomerId
WHERE Country = "Brazil"