CREATE TABLE [dbo].[BitacoraPeso]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[Usuario] INT NULL, 
	[Peso] DECIMAL(5,2) NOT NULL,
	[Fecha] DATETIME NOT NULL,
    CONSTRAINT PK_BitacoraPeso PRIMARY KEY (Id),
	CONSTRAINT FK_BitacoraPeso_Usuario FOREIGN KEY(Usuario) REFERENCES Usuario(Id),
)
