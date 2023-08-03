--DML (Data Manipulation Language)

INSERT INTO Employer (Name)
VALUES ('Lucas');

UPDATE Employer
SET Name = 'Pedro'
WHERE Id = 2;

DELETE FROM Employer
WHERE Id = 2;