/*
Procedimiento almacenado entrega_pedido

ARGS:
    ORDEN_ID [bigint]: Es usado para hacer un update a la orden y marcar la orden segun su necesidad

    Estados:
        1: Orden creada
        2: Orden entregada
        3: Rechazado
        4: En proceso

*/
create or replace procedure entrega_pedido_estado
(@id bigint) as
BEGIN
    set nocount on
    UPDATE ORDENES
    SET ORDEN_FECHA_ENTREGA=getdate(), ORDEN_ESTADO=2
    WHERE ORDEN_ID=@id
END
go

entrega_pedido_estado 1878

create or replace procedure rechazo_pedido_estado
(@id bigint) as
BEGIN
    set nocount on
    UPDATE ORDENES
    SET  ORDEN_ESTADO=3
    WHERE ORDEN_ID=@id
END
go

rechazo_pedido_estado 1878

create or replace procedure en_proceso_pedido_estado
(@id bigint) as
BEGIN
    set nocount on
    UPDATE ORDENES
    SET  ORDEN_ESTADO=4
    WHERE ORDEN_ID=@id
END
go

en_proceso_pedido_estado 1878
