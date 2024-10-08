INSERT INTO Artists (ArtistID, Name) VALUES 
(1, 'IAmArtis'),
(2, 'Artist Two'),
(3, 'IAmNotArtist'),
(4, 'Artist Four');

INSERT INTO Genres (GenreID, Name) VALUES 
(1, 'Pop'),
(2, 'Rock'),
(3, 'Jazz');

INSERT INTO Albums (AlbumID, Title, ReleaseYear) VALUES 
(1, 'First2019', 2019),
(2, 'Second2020', 2020),
(3, 'Third2021', 2021);

INSERT INTO Tracks (TrackID, Title, AlbumID) VALUES 
(1, 'Track1', 1),
(2, 'Track Two', 1),
(3, 'Track2', 2),
(4, 'Track Four', 2),
(5, 'My Track', 3),
(6, 'Track Five', 3);

ALTER TABLE Tracks ADD Duration DECIMAL(4,2);

UPDATE Tracks SET Duration = 4.20 WHERE TrackID = 1;
UPDATE Tracks SET Duration = 3.50 WHERE TrackID = 2;
UPDATE Tracks SET Duration = 5.15 WHERE TrackID = 3;
UPDATE Tracks SET Duration = 4.00 WHERE TrackID = 4;
UPDATE Tracks SET Duration = 3.45 WHERE TrackID = 5;
UPDATE Tracks SET Duration = 2.30 WHERE TrackID = 6;

INSERT INTO Compilations (CompilationID, Title, ReleaseYear) VALUES 
(1, 'Compilation2018', 2018),
(2, 'Compilation2019', 2019),
(3, 'Compilation2020', 2020),
(4, 'Compilation2021', 2021);

INSERT INTO ArtistGenres (ArtistID, GenreID) VALUES 
(1, 1),
(1, 2),
(2, 1),
(2, 3),
(3, 2),
(4, 3);

INSERT INTO ArtistAlbums (ArtistID, AlbumID) VALUES 
(1, 1),
(2, 2),
(3, 3),
(1, 3),
(4, 1);

INSERT INTO CompilationTracks (CompilationID, TrackID) VALUES 
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(4, 6);