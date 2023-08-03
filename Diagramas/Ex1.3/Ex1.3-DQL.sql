-- DQL

SELECT
	VeterinarianName,
	CRMV,
	ClinicName
FROM Veterinarian
	LEFT JOIN Clinic
		ON Veterinarian.ClinicId = Clinic.ClinicId;

SELECT * FROM AnimalBreed
WHERE AnimalBreedName LIKE 's%';

SELECT * FROM PetType
WHERE PetTypeName LIKE '%o';

SELECT 
	PetName,
	OwnerName
FROM Pet
	LEFT JOIN [Owner]
		ON Pet.OwnerId = Owner.OwnerId;

SELECT
	VeterinarianName,
	PetName,
	AnimalBreedName,
	PetTypeName,
	OwnerName,
	ClinicName
FROM Consultation
	LEFT JOIN Veterinarian
		ON Consultation.VeterinarianId = Veterinarian.VeterinarianId
	LEFT JOIN Pet
		ON Consultation.PetId = Pet.PetId
	LEFT JOIN AnimalBreed
		ON Pet.AnimalBreed = AnimalBreed.AnimalBreedId
	LEFT JOIN PetType
		ON Pet.PetTypeId = PetType.PetTypeId
	LEFT JOIN [OWNER] 
		ON Pet.OwnerId = [Owner].OwnerId
	LEFT JOIN Clinic
		ON Veterinarian.ClinicId = Clinic.ClinicId;