/*
Procedimiento almacenado insert_premio

ARGS:
    PREMIO_
    PREMIO_

    Estados:
        1: Orden creada
        2: Orden entregada
        3: Rechazado
        4: En proceso

*/
create or replace procedure insert_premio
(@id bigint) as
BEGIN
    set nocount on
    UPDATE ORDENES
    SET ORDEN_FECHA_ENTREGA=getdate(), ORDEN_ESTADO=2
    WHERE ORDEN_ID=@id
END
go

insert_premio 1878