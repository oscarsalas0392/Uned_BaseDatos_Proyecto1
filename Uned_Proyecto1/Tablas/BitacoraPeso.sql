CREATE TABLE [dbo].[BitacoraPeso]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[Usuario] INT NOT NULL, 
	[Peso] DECIMAL(5,2) NOT NULL,
	[TipoPeso] INT NOT NULL,
	[Fecha] DATETIME NOT NULL,
	[Eliminado] BIT DEFAULT 0,
    CONSTRAINT PK_BitacoraPeso PRIMARY KEY (Id),
	CONSTRAINT FK_BitacoraPeso_Usuario FOREIGN KEY(Usuario) REFERENCES Usuario(Id),
	CONSTRAINT FK_BitacoraPeso_TipoPeso FOREIGN KEY(TipoPeso) REFERENCES TipoPeso(Id),
)
