/* Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration. Modify the previous query to also display the title of the album. */

SELECT
	s.Title AS SongTitle,
	s.SongLength,
	a.Title AS AlbumTitle
FROM
	Song s
	LEFT JOIN Album a on s.AlbumId = a.Id
WHERE
	SongLength = (
		SELECT
			MAX(SongLength)
		FROM
			Song);