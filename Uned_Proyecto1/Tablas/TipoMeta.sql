CREATE TABLE [dbo].[TipoMeta]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[Descripcion] VARCHAR(100),
	[Eliminado] BIT DEFAULT 0,
	CONSTRAINT PK_TipoMeta PRIMARY KEY(Id)
)
