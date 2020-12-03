CREATE OR ALTER TRIGGER historia_empleado_insert ON EMPLEADOS
FOR INSERT AS 
    DECLARE @id bigint
    DECLARE @fecha DATETIME
    DECLARE @documento bigint
    DECLARE @correo int
    DECLARE @celular int
    DECLARE @nombre VARCHAR(100)
    DECLARE @cargo INT
    SELECT @id=(SELECT EMPLEADOID
    FROM inserted)
    SELECT @fecha=GETDATE()
    SELECT @nombreEmpleado = (SELECT EMPLEADO_NOMBRE
    FROM inserted)
    SELECT @cargoEmpleado = (SELECT CARGOID
    FROM inserted)
    INSERT HISTORIAEMPLEADO
    (
    HISTORIA_ID_EMPLEADO,
    HISTORIA_FECHAINGRESO,
    HISTORIA_NOMBREEMPLEADO,
    HISTORIA_CARGOEMPLEADO
    )
VALUES
    (@id, @fecha , @nombreEmpleado , @cargoEmpleado)
GO