--12
--line_item_track.sql: Provide a query that includes the
--purchased track name with each invoice line item.

SELECT Name, InvoiceId, InvoiceLineId
FROM Track t
JOIN InvoiceLine i 
    ON t.TrackId = i.TrackId