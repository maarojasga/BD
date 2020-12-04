CREATE OR ALTER TRIGGER historia_empleado_insert ON EMPLEADOS
FOR INSERT AS 
    /*Declaracion variables*/
    DECLARE @id bigint
    DECLARE @fecha DATETIME
    DECLARE @documento bigint
    DECLARE @correo VARCHAR(100)
    DECLARE @celular bigint
    DECLARE @nombre VARCHAR(100)
    DECLARE @cargo bigint
    /*Asignacion */
    SELECT @id=(SELECT EMPLEADO_ID
    FROM inserted)
    SELECT @fecha=GETDATE()
    SELECT @documento = (SELECT EMPLEADO_DOCUMENTO
    FROM inserted)
    SELECT @correo = (SELECT EMPLEADO_CORREO
    FROM inserted)
    SELECT @celular = (SELECT EMPLEADO_CELULAR
    FROM inserted)
    SELECT @nombre = (SELECT EMPLEADO_NOMBRE
    FROM inserted)
    SELECT @cargo = (SELECT EMPLEADO_CARGO
    FROM inserted)

    /*Insertar datos en la tabla histo */
    INSERT HISTORIAL_TRABAJADORES
    (
    HISTORIAL_TRABAJADORES_ID_EMPLEADO,
    HISTORIAL_TRABAJADORES_FECHA_INGRESO,
    HISTORIAL_TRABAJADORES_NOMBRE,
    HISTORIAL_TRABAJADORES_DOCUMENTO,
    HISTORIAL_TRABAJADORES_CELULAR,
    HISTORIAL_TRABAJADORES_CORREO,
    HISTORIAL_TRABAJADORES_CARGO
    )
VALUES
    (@id, @fecha , @nombre , @documento, @celular, @correo, @cargo)
GO

CREATE OR ALTER TRIGGER historia_empleado_insert ON VENDEDORES
FOR INSERT AS 
    /*Declaracion variables*/
    DECLARE @id bigint
    DECLARE @fecha DATETIME
    DECLARE @documento bigint
    DECLARE @correo VARCHAR(100)
    DECLARE @celular bigint
    DECLARE @nombre VARCHAR(100)
    DECLARE @cargo bigint
    /*Asignacion */
    SELECT @id=(SELECT VENDEDOR_ID
    FROM inserted)
    SELECT @fecha=GETDATE()
    SELECT @documento = (SELECT VENDEDOR_DOCUMENTO
    FROM inserted)
    SELECT @correo = (SELECT VENDEDOR_CORREO
    FROM inserted)
    SELECT @celular = (SELECT VENDEDOR_CELULAR
    FROM inserted)
    SELECT @nombre = (SELECT VENDEDOR_NOMBRE
    FROM inserted)
    SELECT @cargo = 'Vendedor'

    /*Insertar datos en la tabla histo */
    INSERT HISTORIAL_TRABAJADORES
    (
    HISTORIAL_TRABAJADORES_ID_EMPLEADO_VENDEDOR,
    HISTORIAL_TRABAJADORES_FECHA_INGRESO,
    HISTORIAL_TRABAJADORES_NOMBRE,
    HISTORIAL_TRABAJADORES_DOCUMENTO,
    HISTORIAL_TRABAJADORES_CELULAR,
    HISTORIAL_TRABAJADORES_CORREO,
    HISTORIAL_TRABAJADORES_CARGO
    )
VALUES
    (@id, @fecha , @nombre , @documento, @celular, @correo, @cargo)
GO
