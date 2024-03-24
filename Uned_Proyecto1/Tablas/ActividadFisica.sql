CREATE TABLE [dbo].[ActividadFisica]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[Revision] INT NOT NULL,
	[Tipo] INT NOT NULL,
	[Duracion] INT NOT NULL,
	[Distancia] DECIMAL(5,2),
	[TipoDistancia] INT,
	[Calorias] INT NOT NULL,
	[Comentarios] VARCHAR(500),
	[Eliminado] BIT DEFAULT 0,

	CONSTRAINT PK_ActividadFisica PRIMARY KEY (Id),
	CONSTRAINT FK_ActividadFisica_Revision FOREIGN KEY(Revision) REFERENCES Revision(Id),
	CONSTRAINT FK_ActividadFisica_TipoActivadadFisica FOREIGN KEY(Tipo) REFERENCES TipoActividadFisica(Id),
	CONSTRAINT FK_ActividadFisica_TipoDistancia FOREIGN KEY(TipoDistancia) REFERENCES TipoDistancia(Id)
)
