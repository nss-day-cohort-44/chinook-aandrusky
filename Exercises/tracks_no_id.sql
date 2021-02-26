-- 16
-- Provide a query that shows all the Tracks, but displays no IDs.
-- The result should include the Album name, Media type and Genre.


SELECT t.Name AS TrackName, m.Name AS MediaTypeName , g.Name AS GenreName, Title
FROM Track t, Album, MediaType m, Genre g



