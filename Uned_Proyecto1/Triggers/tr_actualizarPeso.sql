  CREATE TRIGGER actualizarPeso ON Usuario AFTER UPDATE
   AS
    BEGIN
	  DECLARE @Peso DECIMAL
	  DECLARE @Usuario DECIMAL
	  SELECT @Peso= i.Peso, @Usuario = i.Id  from inserted i
	  INSERT INTO BitacoraPeso VALUES(@Usuario,@Peso, GETDATE())
    END