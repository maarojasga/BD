CREATE OR ALTER TRIGGER historia_empleado_insert ON EMPLEADOS
FOR DELETE AS 
    /*Declaracion variables*/
    DECLARE @id bigint
    DECLARE @fecha DATETIME
    /*Asignacion */
    SELECT @id=(SELECT EMPLEADO_ID
    FROM deleted)
    SELECT @fecha=GETDATE()

    /*Actualizar datos en la tabla histo */
    UPDATE HISTORIAL_TRABAJADORES
    SET HISTORIAL_TRABAJADORES_FECHA_RETIRO=@fecha, HISTORIAL_TRABAJADORES_FECHA_RETIRO_BOOL=true
    WHERE HISTORIAL_TRABAJADORES_ID_EMPLEADO=@id;
GO

CREATE OR ALTER TRIGGER historia_empleado_insert ON VENDEDORES
FOR DELETE AS 
    /*Declaracion variables*/
    DECLARE @id bigint
    DECLARE @fecha DATETIME
    /*Asignacion */
    SELECT @id=(SELECT VENDEDOR_ID
    FROM deleted)
    SELECT @fecha=GETDATE()
    /*Actualizar datos en la tabla histo */
    UPDATE HISTORIAL_TRABAJADORES
    SET HISTORIAL_TRABAJADORES_FECHA_RETIRO=@fecha, HISTORIAL_TRABAJADORES_FECHA_RETIRO_BOOL=true
    WHERE HISTORIAL_TRABAJADORES_ID_EMPLEADO_VENDEDOR=@id;
GO
