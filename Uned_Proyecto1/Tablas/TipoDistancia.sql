CREATE TABLE [dbo].[TipoDistancia]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[Descripcion] VARCHAR(50),
	[Eliminado] BIT DEFAULT 0,
	CONSTRAINT PK_TipoDistancia PRIMARY KEY(Id)
)
