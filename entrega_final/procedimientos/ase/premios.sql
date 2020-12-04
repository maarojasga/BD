/*
Procedimiento almacenado insert_premio

ARGS:
    PREMIO_NOMBRE [VARCHAR(100)] nombre-descripcion premio
    PREMIO_VALOR [BIGINT] valor del premio
    PREMIO_EMPLEADO_ID [BIGINT]: id empleado que fue asignado el premio
    PREMIO_VENDEDOR_ID [BIGINT]: id vendedor que fue asignado el premio

*/
create or replace procedure insert_premio_empleado
(
    @PREMIO_NOMBRE VARCHAR(100),
    @PREMIO_VALOR BIGINT,
    @PREMIO_EMPLEADO_ID BIGINT
) as
BEGIN
    set nocount on
    INSERT INTO PREMIOS
        ( PREMIO_NOMBRE, PREMIO_VALOR, PREMIO_EMPLEADO_ID)
    VALUES
        (
            @PREMIO_NOMBRE,
            @PREMIO_VALOR,
            @PREMIO_EMPLEADO_ID
        )
    if (SELECT COUNT(*) FROM PREMIOS) > 5
        DELETE FROM PREMIOS WHERE PREMIO_ID =  (SELECT MIN(PREMIO_ID) FROM PREMIOS )
END
go



create or replace procedure insert_premio_empleado_vendedor
(
    @PREMIO_NOMBRE VARCHAR(100),
    @PREMIO_VALOR BIGINT,
    @PREMIO_VENDEDOR_ID BIGINT
) as
BEGIN
    set nocount on
    INSERT INTO PREMIOS
        ( PREMIO_NOMBRE, PREMIO_VALOR, PREMIO_VENDEDOR_ID)
    VALUES
        (
            @PREMIO_NOMBRE,
            @PREMIO_VALOR,
            @PREMIO_VENDEDOR_ID
        )
    if (SELECT COUNT(*) FROM PREMIOS) > 5
        DELETE FROM PREMIOS WHERE PREMIO_ID =  (SELECT MIN(PREMIO_ID) FROM PREMIOS )
END
go


insert_premio_empleado 'Aasdasd', 10000, 12134
insert_premio_empleado 'Aasd', 10000, 12134
insert_premio_empleado 'Aasdcx', 10000, 12134
insert_premio_empleado 'Ahygvfc', 10000, 12134
insert_premio_empleado 'BBB', 10000, 12134
insert_premio_empleado 'X', 10000, 12134
insert_premio_empleado 'y', 10000, 12134