-- Basic DQL

SELECT * FROM Clinic;
SELECT * FROM [Owner];
SELECT * FROM PetType;
SELECT * FROM AnimalBreed;
SELECT * FROM Veterinarian;
SELECT * FROM Pet;
SELECT * FROM Consultation;

-- DML

INSERT INTO Clinic(ClinicName, ClinicAddress)
VALUES ('Seu Pet', 'Rua Parque');

INSERT INTO [Owner](OwnerName)
VALUES 
	('Carlos'),
	('Eduardo');