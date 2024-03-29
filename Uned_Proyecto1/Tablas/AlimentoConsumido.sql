CREATE TABLE [dbo].[AlimentoConsumido]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[Dieta] INT NOT NULL,
	[Alimento] INT NOT NULL,
	[Opcion] INT NOT NULL,
	[Eliminado] BIT DEFAULT 0,
	CONSTRAINT PK_AlimentoConsumido PRIMARY KEY(Id),
	CONSTRAINT FK_AlimentoConsumido_Dieta FOREIGN KEY(Dieta) REFERENCES Dieta(Id),
	CONSTRAINT FK_AlimentoConsumido_Alimento FOREIGN KEY(Alimento) REFERENCES Alimento(Id),
)
