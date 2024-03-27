CREATE TABLE [dbo].[ActividadFisica]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[Usuario] INT NOT NULL,
	[TipoActividadFisica] INT NOT NULL,
	[Duracion] INT NOT NULL,
	[Distancia] DECIMAL(5,2),
	[TipoDistancia] INT,
	[Calorias] INT NOT NULL,
	[Comentarios] VARCHAR(500),
	[Eliminado] BIT DEFAULT 0,

	CONSTRAINT PK_ActividadFisica PRIMARY KEY (Id),
	CONSTRAINT FK_ActividadFisica_Usuario FOREIGN KEY(Usuario) REFERENCES Usuario(Id),
	CONSTRAINT FK_ActividadFisica_TipoActivadadFisica FOREIGN KEY(TipoActividadFisica) REFERENCES TipoActividadFisica(Id),
	CONSTRAINT FK_ActividadFisica_TipoDistancia FOREIGN KEY(TipoDistancia) REFERENCES TipoDistancia(Id)
)
