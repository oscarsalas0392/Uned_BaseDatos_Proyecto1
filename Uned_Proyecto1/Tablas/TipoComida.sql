CREATE TABLE [dbo].[TipoComida]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[Descripcion] VARCHAR(50),
	CONSTRAINT PK_TipoComida PRIMARY KEY(Id)
)
