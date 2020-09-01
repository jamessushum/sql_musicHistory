/* Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence. */

SELECT Artist.ArtistName, COUNT(Song.Id) AS NumberOfSongs FROM Song
LEFT JOIN Artist ON Song.ArtistId = Artist.Id
GROUP BY Artist.ArtistName;