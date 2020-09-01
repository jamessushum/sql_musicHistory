/* Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence. */

SELECT Album.Title, COUNT(Song.Id) AS NumberOfSongs FROM Song
LEFT JOIN Album ON Song.AlbumId = Album.Id
GROUP BY Album.Title;
