create function verificar_tabla_bool
(
    @nombre_tabla VARCHAR(100), --EMPLEADO
    @nombre_columna_id VARCHAR(100), --EMPLEADO_ID
    @nombre_columna_bool VARCHAR(100), --EMPLEADO_INDEFINIDO_BOOL
    @valor_columna_id BIGINT --2
)
RETURN BIT
AS
BEGIN
    if (SELECT COUNT(*) FROM @nombre_tabla WHERE (@nombre_columna_bool=true, @nombre_columna_id=@valor_columna_id)) > 0
        return 1
    else
        return 0
END

select verificar_tabla_bool (552)

create or replace function verificar_tabla_bool
(
    @tabla VARCHAR(100), --EMPLEADO
    @nombre_columna_id VARCHAR(100), --EMPLEADO_ID
    @nombre_columna_bool VARCHAR(100), --EMPLEADO_INDEFINIDO_BOOL
    @valor_columna_id BIGINT --2
)
RETURNS BIT
AS BEGIN
	DECLARE @sqlString VARCHAR(500)
	SET @sqlString = 'SELECT COUNT(*)'
                    + ' FROM ' +@tabla
                    + ' WHERE (' + @nombre_columna_id + ' = ' + CAST(@valor_columna_id AS VARCHAR(100))
                    +  @nombre_columna_bool + '=' + CAST(1 as VARCHAR(100)) + ')'
    DECLARE @result_sql BIGINT
    SET @sqlString= (EXECUTE IMMEDIATE @sqlString )
    if (CAST(@sqlString as bigint)> 0)
        return 1
    else
        return 0
END

