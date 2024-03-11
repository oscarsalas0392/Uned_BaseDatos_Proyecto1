CREATE TABLE [dbo].[Dieta]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[Usuario] INT NOT NULL,
	[Fecha] DATETIME NOT NULL,
	[TipoComida] INT NOT NULL,
	[AlimentosConsumidos] VARCHAR(MAX) NOT NULL,
	[Calorias] INT NOT NULL,
	[Comentarios] VARCHAR(500),

	CONSTRAINT PK_Dieta PRIMARY KEY(Id),
	CONSTRAINT FK_Dieta_Usuario FOREIGN KEY(Usuario) REFERENCES Usuario(Id),
	CONSTRAINT FK_Dieta_TipoComida FOREIGN KEY(TipoComida) REFERENCES TipoComida(Id)
	
)
