CREATE TABLE [dbo].[Revision]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[Usuario] INT NOT NULL,
	[Fecha] DATETIME NOT NULL,
	[Eliminado] BIT DEFAULT 0,
	CONSTRAINT PK_Revision PRIMARY KEY (Id),
	CONSTRAINT FK_Revision_Usuario FOREIGN KEY(Usuario) REFERENCES Usuario(Id),

)
