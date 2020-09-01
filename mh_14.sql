/* Write a SELECT query that lists the Artists that have put out records on more than one record label. 
   Hint: When using GROUP BY instead of using a WHERE clause, use the HAVING keyword */

SELECT Artist.ArtistName
FROM Album LEFT JOIN Artist ON Album.ArtistId = Artist.Id GROUP BY Artist.ArtistName HAVING COUNT(DISTINCT Label) > 1