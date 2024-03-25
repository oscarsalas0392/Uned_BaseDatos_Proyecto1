CREATE TABLE [dbo].[Alimento]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[Descripcion] VARCHAR(50) NOT NULL,
	[Calorias] INT NOT NULL,
	[Eliminado] BIT DEFAULT 0,
	CONSTRAINT PK_Alimentos PRIMARY KEY(Id),
)
