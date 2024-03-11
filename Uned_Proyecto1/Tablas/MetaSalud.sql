CREATE TABLE [dbo].[MetaSalud]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[Usuario] INT NOT NULL,
	[TipoMeta] INT NOT NULL,
	[PesoObjectivo] INT NOT NULL,
	[FechaObjectivo] INT NOT NULL,
	[NivelActividad] VARCHAR(500) NOT NULL,
	[OjectivoEspecifico] VARCHAR(500),

	CONSTRAINT PK_MetaSalud PRIMARY KEY(Id),
	CONSTRAINT FK_MetaSalud_Usuario FOREIGN KEY(Usuario) REFERENCES Usuario(Id),
	CONSTRAINT FK_MetaSalud_TipoMeta FOREIGN KEY(TipoMeta) REFERENCES TipoMeta(Id)
)
