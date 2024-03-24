CREATE TABLE [dbo].[MetaSalud]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[Revision] INT NOT NULL,
	[TipoMeta] INT NOT NULL,
	[PesoObjectivo] DECIMAL NOT NULL,
	[FechaObjectivo] DATETIME NOT NULL,
	[NivelActividad] VARCHAR(500) NOT NULL,
	[OjectivoEspecifico] VARCHAR(500),
	[Eliminado] BIT DEFAULT 0,

	CONSTRAINT PK_MetaSalud PRIMARY KEY(Id),
	CONSTRAINT FK_MetaSalud_TipoMeta FOREIGN KEY(TipoMeta) REFERENCES TipoMeta(Id),
	CONSTRAINT FK_MetaSalud_Revision FOREIGN KEY(Revision) REFERENCES Revision(Id),
)
