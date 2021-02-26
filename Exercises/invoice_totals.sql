--7
SELECT Total, c.FirstName AS C_FirstName, c.LastName AS C_LastName, c.Country, InvoiceId, e.FirstName AS E_FirstName, e.LastName AS E_LastName
FROM Invoice i
JOIN Customer c 
    ON c.CustomerId = i.CustomerId
JOIN Employee e  
    ON e.EmployeeId = c.SupportRepId