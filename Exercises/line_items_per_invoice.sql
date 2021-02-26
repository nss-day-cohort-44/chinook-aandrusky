-- #11
-- line_items_per_invoice.sql: Looking at the InvoiceLinetable, provide a query
--  that COUNTs the number of line itemsfor each Invoice. HINT: GROUP BY


SELECT  InvoiceId, COUNT(InvoiceId) AS NumOfLineItems
FROM InvoiceLine
GROUP BY InvoiceId