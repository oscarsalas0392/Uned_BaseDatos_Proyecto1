

INSERT INTO TipoAltura VALUES ('Centímetros',0)
INSERT INTO TipoAltura VALUES ('Pulgadas',0)

INSERT INTO TipoPeso VALUES ('Kilogramos',0)
INSERT INTO TipoPeso VALUES ('Libras',0)

INSERT INTO Genero VALUES ('Masculino',0)
INSERT INTO Genero VALUES ('Femenino',0)
INSERT INTO Genero VALUES ('No binario',0)

INSERT INTO TipoActividadFisica VALUES ('Correr',0)
INSERT INTO TipoActividadFisica VALUES ('Nadar',0)
INSERT INTO TipoActividadFisica VALUES ('Levantamiento de pesas',0)

INSERT INTO TipoDistancia VALUES ('kilómetros',0)
INSERT INTO TipoDistancia VALUES ('Millas',0)

INSERT INTO TipoMeta VALUES ('Pérdida de peso',0)
INSERT INTO TipoMeta VALUES ('Ganancia de músculo',0)
INSERT INTO TipoMeta VALUES ('Mantenimiento',0)

INSERT INTO TipoMedida VALUES ('Peso',0)
INSERT INTO TipoMedida VALUES ('Porcentaje de músculo',0)

INSERT INTO TipoComida VALUES ('Desayuno',0)
INSERT INTO TipoComida VALUES ('Almuerzo',0)
INSERT INTO TipoComida VALUES ('Cena',0)
INSERT INTO TipoComida VALUES ('Merienda en la mañana',0)
INSERT INTO TipoComida VALUES ('Merienda en la tarde',0)

GO

  CREATE TRIGGER actualizarPeso ON Usuario AFTER UPDATE
   AS
    BEGIN
	  DECLARE @Peso DECIMAL
	  DECLARE @Usuario DECIMAL
	  DECLARE @TipoPeso DECIMAL
	  SELECT @Peso= i.Peso, @Usuario = i.Id, @TipoPeso = I.TipoPeso  from inserted i
	  INSERT INTO BitacoraPeso VALUES(@Usuario,@Peso,@TipoPeso,GETDATE())
    END