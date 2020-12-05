/*
Procedimiento almacenado find
*/

create or replace procedure find_empleado_empleados_mismo_departamento
(
    @EMPLEADO_ID BIGINT
) as
BEGIN
    set nocount on
    SELECT *
    FROM EMPLEADOS
    WHERE EMPLEADO_DEPARTAMENTO_ID = (SELECT EMPLEADO_DEPARTAMENTO_ID
    FROM EMPLEADOS
    WHERE EMPLEADO_ID = @EMPLEADO_ID)
END
go

create or replace procedure find_empleados_mismo_departamento
(
    @EMPLEADO_DEPARTAMENTO_ID BIGINT
) as
BEGIN
    set nocount on
    SELECT *
    FROM EMPLEADOS
    WHERE EMPLEADO_DEPARTAMENTO_ID = @EMPLEADO_DEPARTAMENTO_ID
END
go


create or replace procedure find_empleados_misma_sucursal
(
    @SUCURSAL_ID BIGINT
) as
BEGIN
    set nocount on
    SELECT *
    FROM EMPLEADOS
    WHERE EMPLEADO_DEPARTAMENTO_ID = (SELECT DEPARTAMENTO_ID
    FROM DEPARTAMENTOS
    WHERE SUCURSAL_ID=@SUCURSAL_ID)
END
go




create or replace procedure find_empleados_misma_sucursal_y_sueldo
(
    @SUCURSAL_ID BIGINT
    @SUELDO BIGINT
) as
BEGIN
    set nocount on
    SELECT *
    FROM EMPLEADOS
    WHERE EMPLEADO_DEPARTAMENTO_ID =(SELECT DEPARTAMENTO_ID
    FROM DEPARTAMENTOS
    WHERE SUCURSAL_ID=@SUCURSAL_ID)
    , 
    EMPLEADO_SALARIO_FIJO = @SUELDO
END
go

-- CREATE OR REPLACE PROCEDURE find_departamentos_sin_empleados
-- (
--     @DEPARTAMENTO_ID BIGINT
-- ) AS
-- BEGIN
--     SET NOCOUNT ON
--     SELECT * FROM DEPARTAMENTOS WHERE COUNT(SELECT )>0
-- END
-- GO


create or replace procedure find_empleado_mayor_salario_por_sucursal
(
    @SUCURSAL_ID BIGINT
) as
BEGIN
    set nocount on
    SELECT *
    FROM EMPLEADOS
    WHERE EMPLEADO_DEPARTAMENTO_ID =(SELECT DEPARTAMENTO_ID
    FROM DEPARTAMENTOS
    WHERE SUCURSAL_ID=@SUCURSAL_ID)
    ,
    EMPLEADO_SALARIO_FIJO=
    (SELECT MAX(EMPLEADO_SALARIO_FIJO)
    FROM EMPLEADOS
    WHERE EMPLEADO_DEPARTAMENTO_ID =(SELECT DEPARTAMENTO_ID
    FROM DEPARTAMENTOS
    WHERE SUCURSAL_ID=@SUCURSAL_ID)
    )
END
go


create or replace procedure find_empleado_mayor_salario_por_departamento
(
    @DEPARTAMENTO_ID BIGINT
) as
BEGIN
    set nocount on
    SELECT *
    FROM EMPLEADOS
    WHERE EMPLEADO_DEPARTAMENTO_ID = @DEPARTAMENTO_ID
    ,
    EMPLEADO_SALARIO_FIJO=
    (SELECT MAX(EMPLEADO_SALARIO_FIJO)
    FROM EMPLEADOS
    WHERE EMPLEADO_DEPARTAMENTO_ID == @DEPARTAMENTO_ID)
END
go


create or replace procedure total_salario_departamento
(
    @DEPARTAMENTO_ID BIGINT
) as
BEGIN
    set nocount on
    SELECT SUM(EMPLEADO_SALARIO_FIJO)
    FROM EMPLEADOS
    WHERE EMPLEADO_DEPARTAMENTO_ID = @DEPARTAMENTO_ID
END
go


create or replace procedure total_salario_empresa
(
    @DEPARTAMENTO_ID BIGINT
) as
BEGIN
    set nocount on
    SELECT SUM(EMPLEADO_SALARIO_FIJO)
    FROM EMPLEADOS
END
go


create or replace procedure empleados_ganan_comision
() as
BEGIN
    set nocount on
    SELECT *
    FROM VENDEDORES
END
go

