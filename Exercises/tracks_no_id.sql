-- 16
-- Provide a query that shows all the Tracks, but displays no IDs.
-- The result should include the Album name, Media type and Genre.


SELECT
a.Title AS Album, t.Name AS Track, g.Name AS Genre, m.Name AS MediaType
FROM Track t
JOIN MediaType m on t.MediaTypeId = m.MediaTypeId
JOIN Genre g on t.GenreId = g.GenreId
JOIN Album a on t.AlbumId = a.AlbumId
ORDER BY Album;



