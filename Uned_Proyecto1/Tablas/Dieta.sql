CREATE TABLE [dbo].[Dieta]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[Revision] INT NOT NULL,
	[TipoComida] INT NOT NULL,
	[Comentarios] VARCHAR(500),
	[Eliminado] BIT DEFAULT 0,
	CONSTRAINT PK_Dieta PRIMARY KEY(Id),
	CONSTRAINT FK_Dieta_Revision FOREIGN KEY(Revision) REFERENCES Revision(Id),
	CONSTRAINT FK_Dieta_Usuario FOREIGN KEY(TipoComida) REFERENCES TipoComida(Id),
	
)
