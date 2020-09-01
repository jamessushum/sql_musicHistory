/* Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence. */

SELECT Genre.Label, COUNT(Song.Id) AS NumberOfSongs FROM Song
LEFT JOIN Genre ON Song.GenreId = Genre.Id
GROUP BY Genre.Label;