CREATE TABLE [dbo].[AlimentoConsumido]
(
	[Id] INT NOT NULL,
	[TipoComida] INT NOT NULL,
	[Dieta] INT NOT NULL,
	[Descripcion] VARCHAR(100) NOT NULL,
	
	CONSTRAINT PK_AlimentoConsumido PRIMARY KEY(Id),
	CONSTRAINT FK_AlimentoConsumido_Dieta FOREIGN KEY(Dieta) REFERENCES Dieta(Id),
	CONSTRAINT FK_AlimentoConsumido_TipoComida FOREIGN KEY(TipoComida) REFERENCES TipoComida(Id)
)
