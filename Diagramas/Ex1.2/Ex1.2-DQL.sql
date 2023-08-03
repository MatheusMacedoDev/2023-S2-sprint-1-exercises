-- DQL

SELECT 
	WithdrawalDate AS Inicio, 
	ReturnDate AS Fim,
	ClientName AS NomeCliente,
	ModelName AS ModeloCarro
FROM Rent
	LEFT JOIN Client 
		ON Rent.ClientId = Client.ClientId
	LEFT JOIN Vehicle 
		ON Rent.VehicleId = Vehicle.VehicleId
	LEFT JOIN Model
		ON Vehicle.ModelId = Model.ModelId;

SELECT
	ClientName,
	WithdrawalDate,
	ReturnDate,
	ModelName
FROM RENT
	LEFT JOIN Client
		ON Rent.ClientId = Client.ClientId
	LEFT JOIN Vehicle
		ON Rent.VehicleId = Vehicle.VehicleId
	LEFT JOIN Model
		ON Vehicle.ModelId = Model.ModelId
WHERE Rent.ClientId = 2;
	
