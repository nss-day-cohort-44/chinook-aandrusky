--8
SELECT COUNT(InvoiceDate) from Invoice 
WHERE InvoiceDate LIKE '2009%' OR InvoiceDate LIKE '2011%';