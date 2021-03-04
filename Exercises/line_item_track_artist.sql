--13
-- line_item_track_artist.sql: Provide a query that includes the purchased
-- track name AND artist name with each invoice line item.

SELECT Name, Composer, InvoiceId
FROM Track t
JOIN InvoiceLine i 
    ON t.TrackId = i.TrackId