﻿CREATE TABLE [dbo].[TipoMedida]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[Descripcion] VARCHAR(50) NOT NULL,
	[Eliminado] BIT DEFAULT 0,
	CONSTRAINT PK_TipoMedida PRIMARY KEY(Id)
)
