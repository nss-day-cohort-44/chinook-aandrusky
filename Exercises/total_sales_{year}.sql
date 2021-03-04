--9
SELECT SUM(total),
    strftime("%Y", InvoiceDate) as year
FROM Invoice
WHERE year == "2009" OR year == "2011"
GROUP BY year;
