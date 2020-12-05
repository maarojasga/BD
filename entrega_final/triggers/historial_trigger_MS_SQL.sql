

CREATE OR ALTER TRIGGER historia_empleado_vendedor_insert ON VENDEDORES
FOR INSERT AS 
    DECLARE @fecha DATETIME
    DECLARE @id int
    DECLARE @nombreEmpleado VARCHAR(100)
    DECLARE @cargoEmpleado INT
    SELECT @id=(SELECT EMPLEADO_VENDEDORID
    FROM inserted)
    SELECT @fecha=GETDATE()
    SELECT @nombreEmpleado = (SELECT EMPLEADO_NOMBRE
    FROM inserted)
    SELECT @cargoEmpleado = 'VENDEDOR'
    INSERT HISTORIAL_TRABAJADORES
    (
    HISTORIA_TRABAJADORES_ID_EMPLEADO_VENDEDOR,
    HISTORIA_TRABAJADORES_FECHA_INGRESO,
    HISTORIA_TRABAJADORES_NOMBRE,
    HISTORIA_TRABAJADORES_CARGO
    )
VALUES
    (@id, @fecha, @nombreEmpleado, @cargoEmpleado)
GO

CREATE OR ALTER TRIGGER historia_empleado_update ON EMPLEADOS
FOR UPDATE AS 
    DECLARE @fecha DATETIME
    DECLARE @id int
    SELECT @fecha=GETDATE()
    SELECT @id=(SELECT EMPLEADOID
    FROM inserted)
    UPDATE HISTORIAL_TRABAJADORES SET HISTORIA_TRABAJADORES_FECHA_CAMBIO_CARGO=@fecha
    WHERE HISTORIA_TRABAJADORES_ID_EMPLEADO= @id
GO

CREATE OR ALTER TRIGGER historia_empleado_vendedor_update ON VENDEDORES
FOR UPDATE AS 
    DECLARE @fecha DATETIME
    DECLARE @id int
    SELECT @fecha=GETDATE()
    SELECT @id=(SELECT EMPLEADO_VENDEDORID
    FROM inserted)
    UPDATE HISTORIAL_TRABAJADORES SET HISTORIA_TRABAJADORES_FECHA_CAMBIO_CARGO=@fecha
    WHERE HISTORIA_TRABAJADORES_ID_EMPLEADO_VENDEDOR = @id
GO

CREATE OR ALTER TRIGGER historia_empleado_delete ON EMPLEADOS
FOR DELETE AS 
    DECLARE @fecha DATETIME
    DECLARE @id int
    SELECT @fecha=GETDATE()
    SELECT @id=(SELECT EMPLEADOID
    FROM inserted)
    UPDATE HISTORIAL_TRABAJADORES SET HISTORIA_TRABAJADORES_FECHA_RETIRO=@fecha
    WHERE HISTORIA_TRABAJADORES_ID_EMPLEADO = @id
GO

CREATE OR ALTER TRIGGER historia_empleado_vendedor_delete ON VENDEDORES
FOR DELETE AS 
    DECLARE @fecha DATETIME
    DECLARE @id int
    SELECT @fecha=GETDATE()
    SELECT @id=(SELECT EMPLEADO_VENDEDORID
    FROM inserted)
    UPDATE HISTORIAL_TRABAJADORES SET HISTORIA_TRABAJADORES_FECHA_RETIRO=@fecha
    WHERE HISTORIA_TRABAJADORES_ID_EMPLEADO_VENDEDOR = @id
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