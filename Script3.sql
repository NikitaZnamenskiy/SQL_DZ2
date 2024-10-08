SELECT Title, Duration FROM Tracks ORDER BY Duration DESC LIMIT 1;

SELECT Title FROM Tracks WHERE Duration >= 3.5;

SELECT Title FROM Compilations WHERE ReleaseYear BETWEEN 2018 AND 2020;

SELECT Name FROM Artists WHERE Name NOT LIKE '% %';

SELECT Title FROM Tracks WHERE Title ILIKE '%мой%' OR Title ILIKE '%my%';

SELECT g.Name AS Genre, COUNT(DISTINCT ag.ArtistID) AS ArtistCount
FROM Genres g
LEFT JOIN ArtistGenres ag ON g.GenreID = ag.GenreID
GROUP BY g.Name;

SELECT COUNT(t.TrackID) AS TrackCount
FROM Tracks t
JOIN Albums a ON t.AlbumID = a.AlbumID
WHERE a.ReleaseYear BETWEEN 2019 AND 2020;

SELECT a.Title AS AlbumTitle, AVG(t.Duration) AS AverageDuration
FROM Albums a
JOIN Tracks t ON a.AlbumID = t.AlbumID
GROUP BY a.Title;

SELECT a.Name 
FROM Artists a 
LEFT JOIN ArtistAlbums aa ON a.ArtistID = aa.ArtistID 
LEFT JOIN Albums al ON aa.AlbumID = al.AlbumID AND al.ReleaseYear = 2020 
WHERE al.AlbumID IS NULL;


SELECT c.Title 
FROM Compilations c 
JOIN CompilationTracks ct ON c.CompilationID = ct.CompilationID 
JOIN Tracks t ON ct.TrackID = t.TrackID 
JOIN ArtistAlbums aa ON t.AlbumID = aa.AlbumID 
WHERE aa.ArtistID = 3; 
