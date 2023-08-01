-- Basic DQL

SELECT * FROM Company;
SELECT * FROM Model;
SELECT * FROM Brand;
SELECT * FROM Client;
SELECT * FROM Vehicle;
SELECT * FROM Rent;

-- DML

INSERT INTO Company (CompanyName)
VALUES 
	('Super Locadora 2000'),
	('Masters Locadora');

INSERT INTO Model(ModelName)
VALUES 
	('Onix'),
	('Fiesta'),
	('Argo');

INSERT INTO Brand(BrandName)
VALUES 
	('GM'),
	('Ford'),
	('Fiat');

INSERT INTO Client(ClientName, ClientCPF)
VALUES
	('Carlos', '11774123061'),
	('Eduardo', '60103135030');

INSERT INTO Vehicle(CompanyId, BrandId, ModelId, LicensePlate)
VALUES 
	(2, 3, 3, 'HZI0031'),
	(1, 2, 2, 'IAK6479'),
	(2, 1, 1, 'HZF6888');

INSERT INTO Rent(ClientId, VehicleId, WithdrawalDate, ReturnDate)
VALUES
	(1, 3, '2023-08-01', '2023-08-06'),
	(1, 2, '2023-04-23', '2023-05-02'),
	(2, 1, '2023-07-09', '2023-07-12');