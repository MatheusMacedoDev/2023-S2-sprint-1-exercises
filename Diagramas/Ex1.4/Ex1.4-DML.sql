USE Ex1_4;

-- Basic DQL

SELECT * FROM Artist;
SELECT * FROM [User];
SELECT MusicStyleName AS MusicStyle FROM MusicStyle ORDER BY MusicStyleName DESC;
SELECT * FROM MusicStyle;
SELECT * FROM Album;
SELECT * FROM AlbumMusicStyle;

SELECT * FROM Album LEFT JOIN Artist ON Album.ArtistId = Artist.ArtistId;

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
	(1, 'Album Marron', '2021-03-24', 'US', 132, 1),
	(2, 'Metalization', '2018-02-13', 'US', 172, 1),
	(1, 'Overexposed', '2012-06-26', 'US', 42, 1);

INSERT INTO AlbumMusicStyle(AlbumId, MusicStyleId)
VALUES
	(1, 1),
	(2, 2),
	(2, 3),
	(3, 1),
	(3, 3);
	