-- DDL

CREATE DATABASE Ex1_4;

USE Ex1_4;

CREATE TABLE Artist
(
	ArtistId INT PRIMARY KEY IDENTITY,
	ArtistName VARCHAR(30) NOT NULL
);

CREATE TABLE [User]
(
	UserId INT PRIMARY KEY IDENTITY,
	UserName VARCHAR(40) NOT NULL,
	UserEmail VARCHAR(50) NOT NULL,
	UserPassword VARCHAR(30) NOT NULL,
	UserHaveAdministratorPermitions BIT NOT NULL
);

CREATE TABLE MusicStyle
(
	MusicStyleId INT PRIMARY KEY IDENTITY,
	MusicStyleName VARCHAR(20) NOT NULL
);

CREATE TABLE Album
(
	AlbumId INT PRIMARY KEY IDENTITY,
	ArtistId INT FOREIGN KEY REFERENCES Artist(ArtistId) NOT NULL,
	AlbumName VARCHAR(50) NOT NULL,
	AlbumLaunchingDate DATE NOT NULL,
	AlbumLocation VARCHAR(30) NOT NULL,
	AlbumMinutesDuration SMALLINT NOT NULL,
	AlbumIsActive BIT NOT NULL
);

CREATE TABLE AlbumMusicStyle
(
	AlbumMusicStyleId INT PRIMARY KEY IDENTITY,
	AlbumId INT FOREIGN KEY REFERENCES Album(AlbumId) NOT NULL,
	MusicStyleId INT FOREIGN KEY REFERENCES MusicStyle(MusicStyleId) NOT NULL
);

DROP TABLE AlbumMusicStyle;
DROP TABLE Album;