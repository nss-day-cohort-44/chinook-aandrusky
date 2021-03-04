--6
SELECT e.FirstName, e.LastName, InvoiceId
FROM Employee e
JOIN Customer c
    ON e.EmployeeId = c.SupportRepId
JOIN Invoice i
    ON i.CustomerId = c.CustomerId
ORDER BY InvoiceId ASC;