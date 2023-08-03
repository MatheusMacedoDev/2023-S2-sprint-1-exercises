-- DQL

SELECT 
	UserName,
	UserEmail
FROM [User]
WHERE UserHaveAdministratorPermitions = 1;

SELECT *
FROM Album
WHERE Year(AlbumLaunchingDate) > 2015;

SELECT *
FROM [User]
WHERE 
	UserEmail = 'carlos@mail.com' AND 
	UserPassword = '1342';

SELECT
	AlbumName,
	ArtistName,
	MusicStyleName
FROM AlbumMusicStyle
	LEFT JOIN Album
		ON AlbumMusicStyle.AlbumId = Album.AlbumId
	LEFT JOIN MusicStyle
		ON AlbumMusicStyle.MusicStyleId = MusicStyle.MusicStyleId
	LEFT JOIN Artist
		On Album.ArtistId = Artist.ArtistId
WHERE AlbumIsActive = 1;