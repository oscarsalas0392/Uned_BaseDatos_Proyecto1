CREATE TABLE [dbo].[Usuario]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[NombreUsuario] VARCHAR(50) NOT NULL,
	[Correo] VARCHAR(50) NOT NULL,
	[Contrasena] VARCHAR(500) NOT NULL,
	[Nombre] VARCHAR(50) NOT NULL,
	[FechaNacimiento] DATETIME NOT NULL,
	[Altura] INT NOT NULL,
	[TipoAltura] INT NOT NULL,
	[Peso] DECIMAL(5,2) NOT NULL,
	[TipoPeso] INT NOT NULL,
	[Genero] INT NOT NULL,
	[Foto] VARCHAR(MAX) DEFAULT NULL,
	[Eliminado] BIT DEFAULT 0,

	CONSTRAINT PK_Usuario PRIMARY KEY(Id),
	CONSTRAINT FK_Usuario_Genero FOREIGN KEY(Genero) REFERENCES Genero(Id),
	CONSTRAINT FK_Usuario_TipoPeso FOREIGN KEY(TipoPeso) REFERENCES TipoPeso(Id),
	CONSTRAINT FK_Usuario_TipoAltura FOREIGN KEY(TipoAltura) REFERENCES TipoAltura(Id),
)
