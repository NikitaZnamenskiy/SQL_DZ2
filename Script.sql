CREATE TABLE Artists (
ArtistID INT PRIMARY KEY,
Name VARCHAR(50)
);

CREATE TABLE Genres (
GenreID INT PRIMARY KEY,
Name VARCHAR(50)
);

CREATE TABLE Albums (
AlbumID INT PRIMARY KEY,
Title VARCHAR(50),
ReleaseYear INT
);

CREATE TABLE ArtistGenres (
ArtistID INT,
GenreID INT,
PRIMARY KEY (ArtistID, GenreID),
FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID),
FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);

CREATE TABLE ArtistAlbums (
ArtistID INT,
AlbumID INT,
PRIMARY KEY (ArtistID, AlbumID),
FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID),
FOREIGN KEY (AlbumID) REFERENCES Albums(AlbumID)
);

CREATE TABLE Tracks (
TrackID INT PRIMARY KEY,
Title VARCHAR(50),
AlbumID INT,
FOREIGN KEY (AlbumID) REFERENCES Albums(AlbumID)
);

CREATE TABLE Compilations (
CompilationID INT PRIMARY KEY,
Title VARCHAR(50),
ReleaseYear INT
);

CREATE TABLE CompilationTracks (
CompilationID INT,
TrackID INT,
PRIMARY KEY (CompilationID, TrackID),
FOREIGN KEY (CompilationID) REFERENCES Compilations(CompilationID),
FOREIGN KEY (TrackID) REFERENCES Tracks(TrackID)
);