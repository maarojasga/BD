CREATE TRIGGER asignarSalario ON CARGO
FOR INSERT AS
    DECLARE @idPer = (SELECT id_cargo
FROM inserted)
    SELECT @maxValue = (SELECT max_value
    FROM RANGO
    WHERE id=@idPer)
    SELECT @minValue = (SELECT min_value
    FROM RANGO
    WHERE id=@idPer)
    SELECT @salario = (SELECT salario
    FROM inserted)
    IF (@maxValue < @salario AND @salario > @minValue)
        INSERT INTO CARGO ()
    ELSE IF (@salario > @maxValue)
        INSERT @maxValue
    ELSE
        INSERT @minValue


CREATE TRIGGER asignarSalario ON CARGO
FOR INSERT AS
BEGGIN
    UPDATE CARGO
    
END