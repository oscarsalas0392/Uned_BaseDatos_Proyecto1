﻿CREATE TABLE [dbo].[TipoAltura]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[Descripcion] VARCHAR(50) NOT NULL,
	
	CONSTRAINT PK_TipoAltura PRIMARY KEY(Id)
)
