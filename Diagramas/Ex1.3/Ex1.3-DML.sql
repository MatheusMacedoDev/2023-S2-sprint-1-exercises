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

INSERT INTO PetType(PetTypeName)
VALUES 
	('Cachorro'),
	('Gato');

INSERT INTO AnimalBreed(AnimalBreedName)
VALUES 
	('Pastor Alemão'),
	('Gato Persa');

INSERT INTO Veterinarian(ClinicId, VeterinarianName)
VALUES 
	(1, 'Pedro Rocha'),
	(1, 'Yuri Marsal');

INSERT INTO Pet(OwnerId, PetTypeId, AnimalBreed, PetName, BirthDate)
VALUES
	(1, 2, 2, 'Sirius', '2018-08-27'),
	(2, 2, 2, 'Fofinho', '2021-05-12'),
	(2, 1, 1, 'Thor', '2016-03-05');

INSERT INTO Consultation(VeterinarianId, PetId, ConsultationDescription, ConsultationDate)
VALUES
	(2, 1,'Problemas com bola de pelo', '2023-04-10'),
	(1, 2,'Banho', '2023-06-16'),
	(2, 3,'Banho e tosa', '2023-07-03');