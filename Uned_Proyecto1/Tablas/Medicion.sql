CREATE TABLE [dbo].[Medicion]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[TipoMedida] INT NOT NULL,
	[ValorMedicion] DECIMAL(5, 2),
	[Eliminado] BIT DEFAULT 0,
	CONSTRAINT PK_Medicion PRIMARY KEY (Id),
	CONSTRAINT FK_Medicion_TipoMedida FOREIGN KEY(TipoMedida) REFERENCES TipoMedida(Id),
)
