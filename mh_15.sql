/* Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration. */

SELECT 
	Title,
	AlbumLength
FROM 
	Album
WHERE 
	AlbumLength = (
	SELECT 
		MAX(AlbumLength)
	FROM 
		Album);