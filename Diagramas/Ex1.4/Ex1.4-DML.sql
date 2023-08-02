-- Basic DQL

SELECT * FROM Artist;
SELECT * FROM [User];
SELECT MusicStyleName AS MusicStyle FROM MusicStyle ORDER BY MusicStyleName DESC;
SELECT * FROM Album;

-- DML

INSERT INTO Artist(ArtistName)
VALUES
	('Marron 5'),
	('Iron Maiden');

INSERT INTO [User](UserName, UserEmail, UserPassword, UserHaveAdministratorPermitions)
VALUES
	('Carlos', 'carlos@mail.com', '1342', 1),
	('Eduardo', 'eduardo@mail.com', '1293M42', 0);

INSERT INTO MusicStyle(MusicStyleName)
VALUES
	('Pop'),
	('Metal'),
	('Rock');

INSERT INTO Album(ArtistId, AlbumName, AlbumLaunchingDate, AlbumLocation, AlbumMinutesDuration, AlbumIsActive)
VALUES
	()