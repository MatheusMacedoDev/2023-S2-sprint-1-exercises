CREATE DATABASE TestDatabase;

USE TestDatabase;

CREATE TABLE Employer
(
	Id INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(100)
);

SELECT * FROM Employer;
SELECT * FROM Company;

INSERT INTO Employer (Name)
VALUES ('Matheus');

ALTER TABLE Employer
DROP COLUMN Nome;

ALTER TABLE Employer
ADD Name VARCHAR(100);

DELETE FROM Employer WHERE Id = 1;


CREATE TABLE Company
(
	Id INT PRIMARY KEY IDENTITY,
	IdEmployer INT FOREIGN KEY REFERENCES Employer(Id),
	Name VARCHAR(100)
);