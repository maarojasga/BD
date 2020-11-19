CREATE TRIGGER historia_empleado_insert ON empleado
FOR INSERT AS 
    DECLARE @fecha DATETIME
    DECLARE @id int
    DECLARE @documento BIGINT
    DECLARE @nombreEmpleado VARCHAR(100)
    DECLARE @cargoEmpleado VARCHAR(100)
    SELECT @id=(SELECT id_empleado
    FROM inserted)
    SELECT @fecha=GETDATE()
    SELECT @documento = (SELECT empleado_documento
    FROM inserted)
    SELECT @nombreEmpleado = (SELECT empleado_nombreEmpleado
    FROM inserted)
    SELECT @cargoEmpleado = (SELECT empleado_cargoEmpleado
    FROM inserted)
    INSERT historia_empleado
    (
    HISTORIA_EMPLEADO_ID_EMPLEADO,
    HISTORIA_EMPLEADO_FECHAINGRESO,
    HISTORIA_EMPLEADO_DOCUMENTOEMPLEADO,
    HISTORIA_EMPLEADO_NOMBREEMPLEADO,
    HISTORIA_EMPLEADO_CARGOEMPLEADO
    )
VALUES
    (@id, @fecha, @documento , @nombreEmpleado , @cargoEmpleado)
GO

CREATE TRIGGER historia_empleado_vendedor_insert ON empleado_vendedor
FOR INSERT AS 
    DECLARE @fecha DATETIME
    DECLARE @id int
    DECLARE @documento BIGINT
    DECLARE @nombreEmpleado VARCHAR(100)
    DECLARE @cargoEmpleado VARCHAR(100)
    SELECT @id=(SELECT id_empleado
    FROM inserted)
    SELECT @fecha=GETDATE()
    SELECT @documento = (SELECT empleado_documento
    FROM inserted)
    SELECT @nombreEmpleado = (SELECT empleado_nombreEmpleado
    FROM inserted)
    SELECT @cargoEmpleado = (SELECT empleado_cargoEmpleado
    FROM inserted)
    INSERT historia_empleado
    (
    HISTORIA_EMPLEADO_ID_EMPLEADO_VENDEDOR,
    HISTORIA_EMPLEADO_FECHAINGRESO,
    HISTORIA_EMPLEADO_DOCUMENTOEMPLEADO,
    HISTORIA_EMPLEADO_NOMBREEMPLEADO,
    HISTORIA_EMPLEADO_CARGOEMPLEADO
    )
VALUES
    (@id, @fecha, @documento, @nombreEmpleado, @cargoEmpleado)
GO

CREATE TRIGGER historia_empleado_update ON empleado
FOR UPDATE AS 
    DECLARE @fecha DATETIME
    DECLARE @id int
    SELECT @fecha=GETDATE()
    SELECT @id=(SELECT id_empleado
    FROM inserted)
    UPDATE historia_empleado SET HISTORIA_EMPLEADO_FECHACAMBIODECARGO=@fecha
    WHERE HISTORIA_EMPLEADO_ID_EMPLEADO= @id
GO

CREATE TRIGGER historia_empleado_vendedor_update ON empleado_vendedor
FOR UPDATE AS 
    DECLARE @fecha DATETIME
    DECLARE @id int
    SELECT @fecha=GETDATE()
    SELECT @id=(SELECT id_empleado
    FROM inserted)
    UPDATE historia_empleado SET HISTORIA_EMPLEADO_FECHACAMBIODECARGO=@fecha
    WHERE HISTORIA_EMPLEADO_ID_EMPLEADOVENDEDOR = @id
GO

CREATE TRIGGER historia_empleado_update ON empleado
FOR DELETE AS 
    DECLARE @fecha DATETIME
    DECLARE @id int
    SELECT @fecha=GETDATE()
    SELECT @id=(SELECT id_empleado
    FROM inserted)
    UPDATE historia_empleado SET HISTORIA_EMPLEADO_FECHARETIRO=@fecha
    WHERE HISTORIA_EMPLEADO_ID_EMPLEADOVENDEDOR = @id
GO

CREATE TRIGGER historia_empleado_vendedor_update ON empleado_vendedor
FOR DELETE AS 
    DECLARE @fecha DATETIME
    DECLARE @id int
    SELECT @fecha=GETDATE()
    SELECT @id=(SELECT id_empleado
    FROM inserted)
    UPDATE historia_empleado SET HISTORIA_EMPLEADO_FECHARETIRO=@fecha
    WHERE HISTORIA_EMPLEADO_ID_EMPLEADOVENDEDOR = @id
GO



--AL crear un usuario se tiene que activar el trigger para crear un registro en la tabla historia_empleado
--Y añade automaticamente el campo en fecha_ingreso cuando se haga un insert en empleado o empleado_vendedor

--TABLA historia_empleado
--id_historia_empleado IDENTITY
--id_empleado NULL
--documento NULL
--nombre NULL
--cargo NULL
--id_empleado_vendedor NULL
--fecha_ingreso  NULL
--fecha_retiro NULL
--fecha_modificacion NULL