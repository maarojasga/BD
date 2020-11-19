CREATE TRIGGER historia_empleado_insert ON EMPLEADO
FOR INSERT AS 
    DECLARE @fecha DATE,
        @id int,
        @nombreEmpleado VARCHAR(100),
        @cargoEmpleado INT
    SELECT @id=(SELECT EMPLEADOID FROM inserted),
        @fecha=GETDATE(),
        @nombreEmpleado = (SELECT EMPLEADO_NOMBRE FROM inserted),
        @cargoEmpleado = (SELECT CARGOID FROM inserted)
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

CREATE TRIGGER historia_empleado_vendedor_insert ON EMPLEADO_VENDEDOR
FOR INSERT AS 
    DECLARE @fecha DATE,
        @id int,
        @nombreEmpleado VARCHAR(100),
        @cargoEmpleado INT
    SELECT @id=(SELECT EMPLEADO_VENDEDORID FROM inserted),
        @fecha=GETDATE(),
        @nombreEmpleado = (SELECT EMPLEADOVENDEDOR_NOMBRE FROM inserted),
        @cargoEmpleado = 'VENDEDOR'
    INSERT HISTORIAEMPLEADO
    (
    HISTORIA_ID_EMPLEADOVENDEDOR,
    HISTORIA_FECHAINGRESO,
    HISTORIA_NOMBREEMPLEADO,
    HISTORIA_CARGOEMPLEADO
    )
VALUES
    (@id, @fecha, @nombreEmpleado, @cargoEmpleado)
GO

CREATE TRIGGER historia_empleado_update ON EMPLEADO
FOR UPDATE AS 
    DECLARE @fecha DATETIME
    DECLARE @id int
    SELECT @fecha=GETDATE()
    SELECT @id=(SELECT EMPLEADOID
    FROM inserted)
    UPDATE HISTORIAEMPLEADO SET c=@fecha
    WHERE HISTORIA_ID_EMPLEADO= @id
GO

CREATE TRIGGER historia_empleado_vendedor_update ON EMPLEADO_VENDEDOR
FOR UPDATE AS 
    DECLARE @fecha DATETIME
    DECLARE @id int
    SELECT @fecha=GETDATE()
    SELECT @id=(SELECT EMPLEADO_VENDEDORID
    FROM inserted)
    UPDATE HISTORIAEMPLEADO SET HISTORIA_FECHACAMBIOCARGO=@fecha
    WHERE HISTORIA_ID_EMPLEADOVENDEDOR = @id
GO

CREATE TRIGGER historia_empleado_delete ON EMPLEADO
FOR DELETE AS 
    DECLARE @fecha DATETIME
    DECLARE @id int
    SELECT @fecha=GETDATE()
    SELECT @id=(SELECT EMPLEADOID
    FROM inserted)
    UPDATE HISTORIAEMPLEADO SET HISTORIA_FECHARETIRO=@fecha
    WHERE HISTORIA_ID_EMPLEADOVENDEDOR = @id
GO

CREATE TRIGGER historia_empleado_vendedor_delete ON EMPLEADO_VENDEDOR
FOR DELETE AS 
    DECLARE @fecha DATETIME
    DECLARE @id int
    SELECT @fecha=GETDATE()
    SELECT @id=(SELECT EMPLEADO_VENDEDORID
    FROM inserted)
    UPDATE HISTORIAEMPLEADO SET HISTORIA_FECHARETIRO=@fecha
    WHERE HISTORIA_ID_EMPLEADOVENDEDOR = @id
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