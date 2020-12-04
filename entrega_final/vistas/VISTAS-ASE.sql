/*==============================================================*/
/* DBMS name:      Sybase AS Enterprise 15.7                    */
/* Created on:     3/12/2020 1:31:41 a.�m.                      */
/*==============================================================*/


/*==============================================================*/
/* VISTA: ASISTENCIA_CAPACITACIONES                             */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */

create VIEW VISTA_ASISTENCIA_CAPACITACIONES_EDIT
AS
    SELECT 
   CAPACITACION_ID,
   ASISTENCIA_CAPACITACIONES_SI_NO_BOOL

FROM ASISTENCIA_CAPACITACIONES

/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

create VIEW VISTA_ASISTENCIA_CAPACITACIONES_VIEW
AS
    SELECT *
    FROM ASISTENCIA_CAPACITACIONES
    WHERE digitador = user_name()


/*==============================================================*/
/* VISTA: BODEGAS                                               */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */
create VIEW VISTA_BODEGAS_EDIT
AS
    SELECT
   SUCURSAL_ID,
   BODEGA_CANTIDAD

FROM BODEGAS

/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */
create VIEW VISTA_BODEGAS_VIEW
AS
    SELECT *
    FROM BODEGAS
    WHERE digitador = user_name()


/*==============================================================*/
/* VISTA: CANDIDATOS                                            */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */
create VIEW VISTA_CANDIDATOS_EDIT
AS
    SELECT
   VACANTE_ID,
   CANDIDATO_NOMBRE,
   CANDIDATO_DOCUMENTO,
   CANDIDATO_CORREO,
   CANDIDATO_CELULAR,
   CANDIDATO_EDAD,
   CANDIDATO_GENERO,
   CANDIDATO_PORCENTAJE_VALORACION

    FROM CANDIDATOS

/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */
create VIEW VISTA_CANDIDATOS_VIEW
AS
    SELECT *
    FROM CANDIDATOS
    WHERE digitador = user_name()

/*==============================================================*/
/* VISTA: CAPACITACIONES                                        */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */
create VIEW VISTA_CAPACITACIONES_EDIT
AS  
    SELECT
   EMPLEADO_ID,
   CAPACITACION_NOMBRE_TIPO,
   CAPACITACION_FECHA,
   CAPACITACION_DESCRIPCION

    FROM CAPACITACIONES

/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */
create VIEW VISTA_CAPACITACIONES_VIEW
AS
    SELECT *
    FROM CAPACITACIONES
    WHERE digitador = user_name()


/*==============================================================*/
/* VISTA: CARGOS                                                */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */
create VIEW VISTA_CARGOS_EDIT 
AS
    SELECT
   DEPARTAMENTO_ID,
   CARGO_NOMBRE,
   CARGO_SALARIO_MAX,
   CARGO_SALARIO_MIN

    FROM CARGOS

/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */
create VIEW VISTA_CARGOS_VIEW
AS
    SELECT *
    FROM CARGOS
    WHERE digitador = user_name()

/*==============================================================*/
/* VISTA: CIUDADES                                              */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */
create VIEW VISTA_CIUDADES_EDIT
AS
    SELECT
   PAIS_ID,
   CIUDAD_NOMBRE

    FROM CIUDADES

/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */
create VIEW VISTA_CIUDADES_VIEW
AS
    SELECT *
    FROM CIUDADES
    WHERE digitador = user_name()

/*==============================================================*/
/* VISTA: CLIENTES                                              */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */
create VIEW VISTA_CLIENTES_EDIT
AS
    SELECT
   SUCURSAL_ID,
   CLIENTE_NIT,
   CLIENTE_NOMBRE,
   CLIENTE_CENTRO_LLAMADAS,
   CLIENTE_DIRECCION,
   CLIENTE_NORMAS_BOOL,
   CLIENTE_CORREO

   FROM CLIENTES

/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */
create VIEW VISTA_CLIENTES_VIEW
AS
    SELECT *
    FROM CLIENTES
    WHERE digitador = user_name()

/*==============================================================*/
/* VISTA: CLIENTE_GERENTE                                       */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */
create VIEW VISTA_CLIENTE_GERENTE_EDIT
AS
    SELECT
   CLIENTE_ID,
   CLIENTE_GERENTE_NOMBRE,
   CLIENTE_GERENTE_DOCUMENTO,
   CLIENTE_GERENTE_CELULAR,
   CLIENTE_GERENTE_CORREO

    FROM CLIENTE_GERENTE

/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

create VIEW VISTA_CLIENTE_GERENTE_VIEW
AS
    SELECT *
    FROM CLIENTE_GERENTE
    WHERE digitador = user_name()


/*==============================================================*/
/* VISTA: DEPARTAMENTOS                                         */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */
create VIEW VISTA_DEPARTAMENTOS_EDIT
AS 
    SELECT
   SUCURSAL_ID,
   DIRECTOR_DEPARTAMENTO_ID,
   DEPARTAMENTO_NOMBRE

    FROM DEPARTAMENTOS

/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

create VIEW VISTA_DEPARTAMENTOS_VIEW
AS
    SELECT *
    FROM DEPARTAMENTOS
    WHERE digitador = user_name()

/*==============================================================*/
/* VISTA: DIRECTOR_DEPARTAMENTO                                 */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */
create VIEW VISTA_DIRECTOR_DEPARTAMENTO_EDIT
AS
    SELECT
   DIRECTOR_SUCURSAL_ID,
   DIRECTOR_DEPARTAMENTO_NOMBRE,
   DIRECTOR_DEPARTAMENTO_DOCUMENTO,
   DIRECTOR_DEPARTAMENTO_CELULAR,
   DIRECTOR_DEPARTAMENTO_CORREO,
   DIRECTOR_DEPARTAMENTO_GENERO,
   DIRECTOR_DEPARTAMENTO_EDAD,
   DIRECTOR_DEPARTAMENTO_SEGURIDAD_SOCIAL_BOOL,
   DIRECTOR_DEPARTAMENTO_POLIZA_VIGENTE_BOOL,
   DIRECTOR_DEPARTAMENTO_SALARIO_FIJO,
   DIRECTOR_DEPARTAMENTO_CONTRATO_INDEFINIDO_BOOL,
   DIRECTOR_DEPARTAMENTO_REINGRESO_BOOL

FROM DIRECTOR_DEPARTAMENTO

/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

create VIEW VISTA_DIRECTOR_DEPARTAMENTO_VIEW
AS
    SELECT *
    FROM DIRECTOR_DEPARTAMENTO
    WHERE digitador = user_name()

/*==============================================================*/
/* VISTA: DIRECTOR_SUCURSAL                                     */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */
create VIEW VISTA_DIRECTOR_SUCURSAL_EDIT
AS
    SELECT
   EMPRESA_SUBGERENTE_ID,
   DIRECTOR_SUCURSAL_NOMBRE,
   DIRECTOR_SUCURSAL_DOCUMENTO,
   DIRECTOR_SUCURSAL_CELULAR,
   DIRECTOR_SUCURSAL_CORREO,
   DIRECTOR_SUCURSAL_GENERO,
   DIRECTOR_SUCURSAL_EDAD,
   DIRECTOR_SUCURSAL_SEGURIDAD_SOCIAL_BOOL,
   DIRECTOR_SUCURSAL_POLIZA_VIGENTE_BOOL,
   DIRECTOR_SUCURSAL_SALARIO_FIJO,
   DIRECTOR_SUCURSAL_CONTRATO_INDEFINIDO_BOOL,
   DIRECTOR_SUCURSAL_REINGRESO_BOOL

    FROM DIRECTOR_SUCURSAL

/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

create VIEW VISTA_DIRECTOR_SUCURSAL_VIEW
AS
    SELECT *
    FROM DIRECTOR_SUCURSAL
    WHERE digitador = user_name()


/*==============================================================*/
/* VISTA: EMPLEADOS                                             */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */
create VIEW VISTA_EMPLEADOS_EDIT
AS
    SELECT
   CARGO_ID,
   EMPLEADO_DOCUMENTO,
   EMPLEADO_NOMBRE,
   EMPLEADO_CELULAR,
   EMPLEADO_CORREO,
   EMPLEADO_GENERO,
   EMPLEADO_EDAD,
   EMPLEADO_SEGURIDAD_SOCIAL_BOOL,
   EMPLEADO_POLIZA_VIGENTE_BOOL,
   EMPLEADO_CARGO,
   EMPLEADO_SALARIO_FIJO,
   EMPLEADO_CONTRATO_INDEFINIDO_BOOL,
   EMPLEADO_REINGRESO_BOOL

    FROM EMPLEADOS
/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

create VIEW VISTA_EMPLEADOS_VIEW
AS
    SELECT *
    FROM EMPLEADOS
    WHERE digitador = user_name()

/*==============================================================*/
/* VISTA: EMPRESA                                               */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */
create VIEW VISTA_EMPRESA_EDIT
AS
    SELECT
   EMPRESA_NOMBRE,
   EMPRESA_DIRECCION,
   EMPRESA_CENTRO_LLAMADAS

    FROM EMPRESA

/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

create VIEW VISTA_EMPRESA_VIEW
AS
    SELECT *
    FROM EMPRESA
    WHERE digitador = user_name()

/*==============================================================*/
/* VISTA: EMPRESA_GERENTE                                       */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */
create VIEW VISTA_EMPRESA_GERENTE_EDIT
AS
    SELECT
   EMPRESA_ID,
   EMPRESA_GERENTE_NOMBRE,
   EMPRESA_GERENTE_DOCUMENTO,
   EMPRESA_GERENTE_CELULAR,
   EMPRESA_GERENTE_CORREO,
   EMPRESA_GERENTE_EDAD,
   EMPRESA_GERENTE_GENERO,
   EMPRESA_GERENTE_SEGURIDAD_SOCIAL_BOOL,
   EMPRESA_GERENTE_POLIZA_VIGENTE_BOOL,
   EMPRESA_GERENTE_CONTRATO_INDEFINIDO_BOOL,
   EMPRESA_GERENTE_SALARIO_FIJO,
   EMPRESA_GERENTE_REINGRESO_BOOL

    FROM EMPRESA_GERENTE

/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

create VIEW VISTA_EMPRESA_GERENTE_VIEW
AS
    SELECT *
    FROM EMPRESA_GERENTE
    WHERE digitador = user_name()

/*==============================================================*/
/* VISTA: EMPRESA_SUBGERENTE                                    */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */
create VIEW VISTA_EMPRESA_SUBGERENTE_EDIT
AS
    SELECT
   EMPRESA_GERENTE_ID,
   EMPRESA_ID,
   EMPRESA_SUBGERENTE_NOMBRE,
   EMPRESA_SUBGERENTE_DOCUMENTO,
   EMPRESA_SUBGERENTE_CELULAR,
   EMPRESA_SUBGERENTE_CORREO,
   EMPRESA_SUBGERENTE_EDAD,
   EMPRESA_SUBGERENTE_GENERO,
   EMPRESA_SUBGERENTE_SEGURIDAD_SOCIAL_BOOL,
   EMPRESA_SUBGERENTE_POLIZA_VIGENTE_BOOL,
   EMPRESA_SUBGERENTE_CONTRATO_INDEFINIDO_BOOL,
   EMPRESA_SUBGERENTE_SALARIO_FIJO,
   EMPRESA_SUBGERENTE_REINGRESO_BOOL

    FROM EMPRESA_SUBGERENTE

/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

create VIEW VISTA_EMPRESA_SUBGERENTE_VIEW
AS
    SELECT *
    FROM EMPRESA_SUBGERENTE
    WHERE digitador = user_name()


/*==============================================================*/
/* VISTA: HISTORIAL_TRABAJADORES                                */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */
create VIEW VISTA_HISTORIAL_TRABAJADORES_EDIT
AS
    SELECT
   HISTORIA_TRABAJADORES_FECHA_INGRESO,
   HISTORIA_TRABAJADORES_FECHA_RETIRO,
   HISTORIA_TRABAJADORES_ID_EMPLEADO,
   HISTORIA_TRABAJADORES_ID_EMPLEADO_VENDEDOR,
   HISTORIA_TRABAJADORES_DOCUMENTO,
   HISTORIA_TRABAJADORES_NOMBRE,
   HISTORIA_TRABAJADORES_CARGO,
   HISTORIA_TRABAJADORES_FECHA_CAMBIO_CARGO,
   HISTORIA_TRABAJADORES_FECHA_REINGRESO,
   HISTORIA_TRABAJADORES_CORREO,
   HISTORIA_TRABAJADORES_CELULAR,
   HISTORIA_TRABAJADORES_REINGRESO_BOOL,
   HISTORIA_TRABAJADORES_RETIRO_BOOL

    FROM HISTORIAL_TRABAJADORES

/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

create VIEW VISTA_HISTORIAL_TRABAJADORES_VIEW
AS
    SELECT *
    FROM HISTORIAL_TRABAJADORES
    WHERE digitador = user_name()

/*==============================================================*/
/* VISTA: ORDENES                                               */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */
create VIEW VISTA_ORDENES_EDIT
AS
    SELECT
   SUCURSAL_ID,
   VENDEDOR_ID,
   CLIENTE_ID,
   ORDEN_ESTADO,
   ORDEN_FECHA_SOLICITUD,
   ORDEN_FECHA_ENTREGA

    FROM ORDENES

/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

create VIEW VISTA_ORDENES_VIEW
AS
    SELECT *
    FROM ORDENES
    WHERE digitador = user_name()


/*==============================================================*/
/* VISTA: ORDENES_ITEMS                                         */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */
create VIEW VISTA_ORDENES_ITEMS_EDIT
AS
    SELECT
   ORDEN_ID,
   PRODUCTO_ID,
   ORDEN_ITEM_CANTIDAD,
   ORDEN_ITEM_PRECIO_TOTAL,
   ORDEN_ITEM_DESCUENTO_BOOL

    FROM ORDENES_ITEMS

/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

create VIEW VISTA_ORDENES_ITEMS_VIEW
AS
    SELECT *
    FROM ORDENES_ITEMS
    WHERE digitador = user_name()

/*==============================================================*/
/* VISTA: PAISES                                                */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */
create VIEW VISTA_PAISES_EDIT
AS 
    SELECT
   EMPRESA_ID,
   PAIS_NOMBRE,
   PAIS_PREFIJO

    FROM PAISES

/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

create VIEW VISTA_PAISES_VIEW
AS
    SELECT *
    FROM PAISES
    WHERE digitador = user_name()


/*==============================================================*/
/* VISTA: PREMIOS                                               */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */
create VIEW VISTA_PREMIOS_EDIT
AS
    SELECT
   PREMIO_NOMBRE,
   PREMIO_VALOR

    FROM PREMIOS

/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

create VIEW VISTA_PREMIOS_VIEW
AS
    SELECT *
    FROM PREMIOS
    WHERE digitador = user_name()

/*==============================================================*/
/* VISTA: PRODUCTOS                                             */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */
create VIEW VISTA_PRODUCTOS_EDIT
AS 
    SELECT
   BODEGA_ID,
   PROVEEDOR_ID,
   PRODUCTO_NOMBRE,
   PRODUCTO_PRECIO_ADQUISICION,
   PRODUCTO_PRECIO_VENTA

    FROM PRODUCTOS

/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

create VIEW VISTA_PRODUCTOS_VIEW
AS
    SELECT *
    FROM PRODUCTOS
    WHERE digitador = user_name()


/*==============================================================*/
/* VISTA: PROVEEDORES                                           */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */
create VIEW VISTA_PROVEEDORES_EDIT
AS  
    SELECT
   SUCURSAL_ID,
   PROVEEDOR_NIT,
   PROVEEDOR_NOMBRE,
   PROVEEDOR_CENTRO_LLAMADAS,
   PROVEEDOR_DIRECCION,
   PROVEEDOR_NORMAS_BOOL,
   PROVEEDOR_CORREO

    FROM PROVEEDORES

/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

create VIEW VISTA_PROVEEDORES_VIEW
AS
    SELECT *
    FROM PROVEEDORES
    WHERE digitador = user_name()

/*==============================================================*/
/* VISTA: PROVEEDOR_GERENTE                                     */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */
create VIEW VISTA_PROVEEDOR_GERENTE_EDIT
AS
    SELECT
   PROVEEDOR_ID,
   PROVEEDOR_GERENTE_NOMBRE,
   PROVEEDOR_GERENTE_DOCUMENTO,
   PROVEEDOR_GERENTE_CELULAR,
   PROVEEDOR_GERENTE_CORREO

    FROM PROVEEDOR_GERENTE

/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

create VIEW VISTA_PROVEEDOR_GERENTE_VIEW
AS
    SELECT *
    FROM PROVEEDOR_GERENTE
    WHERE digitador = user_name()

/*==============================================================*/
/* VISTA: SUCURSALES                                            */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */
create VIEW VISTA_SUCURSALES_EDIT
AS  
    SELECT
   CIUDAD_ID,
   DIRECTOR_SUCURSAL_ID,
   SUCURSAL_NOMBRE,
   SUCURSAL_CENTRO_LLAMADAS,
   SUCURSAL_DIRECCION

    FROM SUCURSALES

/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

create VIEW VISTA_SUCURSALES_VIEW
AS
    SELECT *
    FROM SUCURSALES
    WHERE digitador = user_name()


/*==============================================================*/
/* VISTA: VACANTES                                              */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */
create VIEW VISTA_VACANTES_EDIT
AS
    SELECT
   CARGO_ID,
   VACANTE_NUMERO

    FROM VACANTES

/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

create VIEW VISTA_VACANTES_VIEW
AS
    SELECT *
    FROM VACANTES
    WHERE digitador = user_name()

/*==============================================================*/
/* VISTA: VENDEDORES                                            */
/*==============================================================*/

/* Crear la vista VISTA_ _EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */
create VIEW VISTA_VENDEDORES_EDIT
AS  
    SELECT
   SUCURSAL_ID,
   VENDEDOR_DOCUMENTO,
   VENDEDOR_NOMBRE,
   VENDEDOR_CELULAR,
   VENDEDOR_CORREO,
   VENDEDOR_GENERO,
   VENDEDOR_EDAD,
   VENDEDOR_SEGURIDAD_SOCIAL_BOOL,
   VENDEDOR_POLIZA_VIGENTE_BOOL,
   VENDEDOR_SALARIO_FIJO,
   VENDEDOR_CONTRATO_INDEFINIDO_BOOL,
   VENDEDOR_REINGRESO_BOOL,
   VENDEDOR_COMISION

    FROM VENDEDORES

/* Crear la vista VISTA_ _VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

create VIEW VISTA_VENDEDORES_VIEW
AS
    SELECT *
    FROM VENDEDORES
    WHERE digitador = user_name()


/*==============================================================*/
/* VISTA: PÚBLICA CLIENTES                                       */
/*==============================================================*/

create VIEW VISTA_PUBLICA_CLIENTES_VIEW
AS
    SELECT 
         SUCURSAL_ID,
         CLIENTE_NOMBRE,
         CLIENTE_CENTRO_LLAMADAS,
         CLIENTE_CORREO 

    FROM CLIENTES

/*==============================================================*/
/* VISTA: PÚBLICA PROVEEDORES                                       */
/*==============================================================*/

create VIEW VISTA_PUBLICA_PROVEEDORES_VIEW
AS
    SELECT 
   SUCURSAL_ID,
   PROVEEDOR_NOMBRE,
   PROVEEDOR_CENTRO_LLAMADAS,
   PROVEEDOR_CORREO
         
    FROM PROVEEDORES

/*==============================================================*/
/* VISTA: PÚBLICA EMPLEADOS                                      */
/*==============================================================*/

create VIEW VISTA_PUBLICA_EMPLEADOS_VIEW
AS
    SELECT 
   CARGO_ID,
   EMPLEADO_NOMBRE,
   EMPLEADO_CELULAR,
   EMPLEADO_CORREO,
   EMPLEADO_CARGO
     
    FROM EMPLEADOS

/*==============================================================*/
/* VISTA: PÚBLICA VENDEDORES                                     */
/*==============================================================*/

create VIEW VISTA_PUBLICA_VENDEDORES_VIEW
AS
    SELECT 
   SUCURSAL_ID,
   VENDEDOR_NOMBRE,
   VENDEDOR_CELULAR,
   VENDEDOR_CORREO
     
FROM VENDEDORES

/*==============================================================*/
/* VISTA: REGISTRO_HISTORICO                                    */
/*==============================================================*/

create VIEW VISTA_REGISTRO_HISTORICO_VIEW
AS
    SELECT
   REGISTRO_HISTORICO_USUARIO,
   REGISTRO_HISTORICO_FECHA,
   REGISTRO_HISTORICO_MENSAJE

    FROM REGISTRO_HISTORICO

/*==============================================================*/
/* PERMISOS                                                     */
/*==============================================================*/

GRANT SELECT ON VISTA_ASISTENCIA_CAPACITACIONES_VIEW TO negarzonc
GRANT INSERT ON VISTA_ASISTENCIA_CAPACITACIONES_EDIT TO negarzonc
GRANT SELECT ON VISTA_ASISTENCIA_CAPACITACIONES_EDIT TO negarzonc
GRANT SELECT ON VISTA_ASISTENCIA_CAPACITACIONES_VIEW TO dsilvamo
GRANT INSERT ON VISTA_ASISTENCIA_CAPACITACIONES_EDIT TO dsilvamo
GRANT SELECT ON VISTA_ASISTENCIA_CAPACITACIONES_EDIT TO dsilvamo
GRANT SELECT ON VISTA_ASISTENCIA_CAPACITACIONES_VIEW TO dabonilla
GRANT INSERT ON VISTA_ASISTENCIA_CAPACITACIONES_EDIT TO dabonilla
GRANT SELECT ON VISTA_ASISTENCIA_CAPACITACIONES_EDIT TO dabonilla

GRANT SELECT ON VISTA_BODEGAS_VIEW TO negarzonc
GRANT INSERT ON VISTA_BODEGAS_EDIT TO negarzonc
GRANT SELECT ON VISTA_BODEGAS_EDIT TO negarzonc
GRANT SELECT ON VISTA_BODEGAS_VIEW TO dsilvamo
GRANT INSERT ON VISTA_BODEGAS_EDIT TO dsilvamo
GRANT SELECT ON VISTA_BODEGAS_EDIT TO dsilvamo
GRANT SELECT ON VISTA_BODEGAS_VIEW TO dabonilla
GRANT INSERT ON VISTA_BODEGAS_EDIT TO dabonilla
GRANT SELECT ON VISTA_BODEGAS_EDIT TO dabonilla

GRANT SELECT ON VISTA_CANDIDATOS_VIEW TO negarzonc
GRANT INSERT ON VISTA_CANDIDATOS_EDIT TO negarzonc
GRANT SELECT ON VISTA_CANDIDATOS_EDIT TO negarzonc
GRANT SELECT ON VISTA_CANDIDATOS_VIEW TO dsilvamo
GRANT INSERT ON VISTA_CANDIDATOS_EDIT TO dsilvamo
GRANT SELECT ON VISTA_CANDIDATOS_EDIT TO dsilvamo
GRANT SELECT ON VISTA_CANDIDATOS_VIEW TO dabonilla
GRANT INSERT ON VISTA_CANDIDATOS_EDIT TO dabonilla
GRANT SELECT ON VISTA_CANDIDATOS_EDIT TO dabonilla

GRANT SELECT ON VISTA_CAPACITACIONES_VIEW TO negarzonc
GRANT INSERT ON VISTA_CAPACITACIONES_EDIT TO negarzonc
GRANT SELECT ON VISTA_CAPACITACIONES_EDIT TO negarzonc
GRANT SELECT ON VISTA_CAPACITACIONES_VIEW TO dsilvamo
GRANT INSERT ON VISTA_CAPACITACIONES_EDIT TO dsilvamo
GRANT SELECT ON VISTA_CAPACITACIONES_EDIT TO dsilvamo
GRANT SELECT ON VISTA_CAPACITACIONES_VIEW TO dabonilla
GRANT INSERT ON VISTA_CAPACITACIONES_EDIT TO dabonilla
GRANT SELECT ON VISTA_CAPACITACIONES_EDIT TO dabonilla

GRANT SELECT ON VISTA_CARGOS_VIEW TO negarzonc
GRANT INSERT ON VISTA_CARGOS_EDIT TO negarzonc
GRANT SELECT ON VISTA_CARGOS_EDIT TO negarzonc
GRANT SELECT ON VISTA_CARGOS_VIEW TO dsilvamo
GRANT INSERT ON VISTA_CARGOS_EDIT TO dsilvamo
GRANT SELECT ON VISTA_CARGOS_EDIT TO dsilvamo
GRANT SELECT ON VISTA_CARGOS_VIEW TO dabonilla
GRANT INSERT ON VISTA_CARGOS_EDIT TO dabonilla
GRANT SELECT ON VISTA_CARGOS_EDIT TO dabonilla

GRANT SELECT ON VISTA_CIUDADES_VIEW TO negarzonc
GRANT INSERT ON VISTA_CIUDADES_EDIT TO negarzonc
GRANT SELECT ON VISTA_CIUDADES_EDIT TO negarzonc
GRANT SELECT ON VISTA_CIUDADES_VIEW TO dsilvamo
GRANT INSERT ON VISTA_CIUDADES_EDIT TO dsilvamo
GRANT SELECT ON VISTA_CIUDADES_EDIT TO dsilvamo
GRANT SELECT ON VISTA_CIUDADES_VIEW TO dabonilla
GRANT INSERT ON VISTA_CIUDADES_EDIT TO dabonilla
GRANT SELECT ON VISTA_CIUDADES_EDIT TO dabonilla

GRANT SELECT ON VISTA_CLIENTES_VIEW TO negarzonc
GRANT INSERT ON VISTA_CLIENTES_EDIT TO negarzonc
GRANT SELECT ON VISTA_CLIENTES_EDIT TO negarzonc
GRANT SELECT ON VISTA_CLIENTES_VIEW TO dsilvamo
GRANT INSERT ON VISTA_CLIENTES_EDIT TO dsilvamo
GRANT SELECT ON VISTA_CLIENTES_EDIT TO dsilvamo
GRANT SELECT ON VISTA_CLIENTES_VIEW TO dabonilla
GRANT INSERT ON VISTA_CLIENTES_EDIT TO dabonilla
GRANT SELECT ON VISTA_CLIENTES_EDIT TO dabonilla

GRANT SELECT ON VISTA_CLIENTE_GERENTE_VIEW TO negarzonc
GRANT INSERT ON VISTA_CLIENTE_GERENTE_EDIT TO negarzonc
GRANT SELECT ON VISTA_CLIENTE_GERENTE_EDIT TO negarzonc
GRANT SELECT ON VISTA_CLIENTE_GERENTE_VIEW TO dsilvamo
GRANT INSERT ON VISTA_CLIENTE_GERENTE_EDIT TO dsilvamo
GRANT SELECT ON VISTA_CLIENTE_GERENTE_EDIT TO dsilvamo
GRANT SELECT ON VISTA_CLIENTE_GERENTE_VIEW TO dabonilla
GRANT INSERT ON VISTA_CLIENTE_GERENTE_EDIT TO dabonilla
GRANT SELECT ON VISTA_CLIENTE_GERENTE_EDIT TO dabonilla

GRANT SELECT ON VISTA_DEPARTAMENTOS_VIEW TO negarzonc
GRANT INSERT ON VISTA_DEPARTAMENTOS_EDIT TO negarzonc
GRANT SELECT ON VISTA_DEPARTAMENTOS_EDIT TO negarzonc
GRANT SELECT ON VISTA_DEPARTAMENTOS_VIEW TO dsilvamo
GRANT INSERT ON VISTA_DEPARTAMENTOS_EDIT TO dsilvamo
GRANT SELECT ON VISTA_DEPARTAMENTOS_EDIT TO dsilvamo
GRANT SELECT ON VISTA_DEPARTAMENTOS_VIEW TO dabonilla
GRANT INSERT ON VISTA_DEPARTAMENTOS_EDIT TO dabonilla
GRANT SELECT ON VISTA_DEPARTAMENTOS_EDIT TO dabonilla

GRANT SELECT ON VISTA_DIRECTOR_DEPARTAMENTO_VIEW TO negarzonc
GRANT INSERT ON VISTA_DIRECTOR_DEPARTAMENTO_EDIT TO negarzonc
GRANT SELECT ON VISTA_DIRECTOR_DEPARTAMENTO_EDIT TO negarzonc
GRANT SELECT ON VISTA_DIRECTOR_DEPARTAMENTO_VIEW TO dsilvamo
GRANT INSERT ON VISTA_DIRECTOR_DEPARTAMENTO_EDIT TO dsilvamo
GRANT SELECT ON VISTA_DIRECTOR_DEPARTAMENTO_EDIT TO dsilvamo
GRANT SELECT ON VISTA_DIRECTOR_DEPARTAMENTO_VIEW TO dabonilla
GRANT INSERT ON VISTA_DIRECTOR_DEPARTAMENTO_EDIT TO dabonilla
GRANT SELECT ON VISTA_DIRECTOR_DEPARTAMENTO_EDIT TO dabonilla

GRANT SELECT ON VISTA_DIRECTOR_SUCURSAL_VIEW TO negarzonc
GRANT INSERT ON VISTA_DIRECTOR_SUCURSAL_EDIT TO negarzonc
GRANT SELECT ON VISTA_DIRECTOR_SUCURSAL_EDIT TO negarzonc
GRANT SELECT ON VISTA_DIRECTOR_SUCURSAL_VIEW TO dsilvamo
GRANT INSERT ON VISTA_DIRECTOR_SUCURSAL_EDIT TO dsilvamo
GRANT SELECT ON VISTA_DIRECTOR_SUCURSAL_EDIT TO dsilvamo
GRANT SELECT ON VISTA_DIRECTOR_SUCURSAL_VIEW TO dabonilla
GRANT INSERT ON VISTA_DIRECTOR_SUCURSAL_EDIT TO dabonilla
GRANT SELECT ON VISTA_DIRECTOR_SUCURSAL_EDIT TO dabonilla

GRANT SELECT ON VISTA_EMPLEADOS_VIEW TO negarzonc
GRANT INSERT ON VISTA_EMPLEADOS_EDIT TO negarzonc
GRANT SELECT ON VISTA_EMPLEADOS_EDIT TO negarzonc
GRANT SELECT ON VISTA_EMPLEADOS_VIEW TO dsilvamo
GRANT INSERT ON VISTA_EMPLEADOS_EDIT TO dsilvamo
GRANT SELECT ON VISTA_EMPLEADOS_EDIT TO dsilvamo
GRANT SELECT ON VISTA_EMPLEADOS_VIEW TO dabonilla
GRANT INSERT ON VISTA_EMPLEADOS_EDIT TO dabonilla
GRANT SELECT ON VISTA_EMPLEADOS_EDIT TO dabonilla

GRANT SELECT ON VISTA_EMPRESA_VIEW TO negarzonc
GRANT INSERT ON VISTA_EMPRESA_EDIT TO negarzonc
GRANT SELECT ON VISTA_EMPRESA_EDIT TO negarzonc
GRANT SELECT ON VISTA_EMPRESA_VIEW TO dsilvamo
GRANT INSERT ON VISTA_EMPRESA_EDIT TO dsilvamo
GRANT SELECT ON VISTA_EMPRESA_EDIT TO dsilvamo
GRANT SELECT ON VISTA_EMPRESA_VIEW TO dabonilla
GRANT INSERT ON VISTA_EMPRESA_EDIT TO dabonilla
GRANT SELECT ON VISTA_EMPRESA_EDIT TO dabonilla

GRANT SELECT ON VISTA_EMPRESA_GERENTE_VIEW TO negarzonc
GRANT INSERT ON VISTA_EMPRESA_GERENTE_EDIT TO negarzonc
GRANT SELECT ON VISTA_EMPRESA_GERENTE_EDIT TO negarzonc
GRANT SELECT ON VISTA_EMPRESA_GERENTE_VIEW TO dsilvamo
GRANT INSERT ON VISTA_EMPRESA_GERENTE_EDIT TO dsilvamo
GRANT SELECT ON VISTA_EMPRESA_GERENTE_EDIT TO dsilvamo
GRANT SELECT ON VISTA_EMPRESA_GERENTE_VIEW TO dabonilla
GRANT INSERT ON VISTA_EMPRESA_GERENTE_EDIT TO dabonilla
GRANT SELECT ON VISTA_EMPRESA_GERENTE_EDIT TO dabonilla

GRANT SELECT ON VISTA_EMPRESA_SUBGERENTE_VIEW TO negarzonc
GRANT INSERT ON VISTA_EMPRESA_SUBGERENTE_EDIT TO negarzonc
GRANT SELECT ON VISTA_EMPRESA_SUBGERENTE_EDIT TO negarzonc
GRANT SELECT ON VISTA_EMPRESA_SUBGERENTE_VIEW TO dsilvamo
GRANT INSERT ON VISTA_EMPRESA_SUBGERENTE_EDIT TO dsilvamo
GRANT SELECT ON VISTA_EMPRESA_SUBGERENTE_EDIT TO dsilvamo
GRANT SELECT ON VISTA_EMPRESA_SUBGERENTE_VIEW TO dabonilla
GRANT INSERT ON VISTA_EMPRESA_SUBGERENTE_EDIT TO dabonilla
GRANT SELECT ON VISTA_EMPRESA_SUBGERENTE_EDIT TO dabonilla

GRANT SELECT ON VISTA_HISTORIAL_TRABAJADORES_VIEW TO negarzonc
GRANT INSERT ON VISTA_HISTORIAL_TRABAJADORES_EDIT TO negarzonc
GRANT SELECT ON VISTA_HISTORIAL_TRABAJADORES_EDIT TO negarzonc
GRANT SELECT ON VISTA_HISTORIAL_TRABAJADORES_VIEW TO dsilvamo
GRANT INSERT ON VISTA_HISTORIAL_TRABAJADORES_EDIT TO dsilvamo
GRANT SELECT ON VISTA_HISTORIAL_TRABAJADORES_EDIT TO dsilvamo
GRANT SELECT ON VISTA_HISTORIAL_TRABAJADORES_VIEW TO dabonilla
GRANT INSERT ON VISTA_HISTORIAL_TRABAJADORES_EDIT TO dabonilla
GRANT SELECT ON VISTA_HISTORIAL_TRABAJADORES_EDIT TO dabonilla

GRANT SELECT ON VISTA_ORDENES_VIEW TO negarzonc
GRANT INSERT ON VISTA_ORDENES_EDIT TO negarzonc
GRANT SELECT ON VISTA_ORDENES_EDIT TO negarzonc
GRANT SELECT ON VISTA_ORDENES_VIEW TO dsilvamo
GRANT INSERT ON VISTA_ORDENES_EDIT TO dsilvamo
GRANT SELECT ON VISTA_ORDENES_EDIT TO dsilvamo
GRANT SELECT ON VISTA_ORDENES_VIEW TO dabonilla
GRANT INSERT ON VISTA_ORDENES_EDIT TO dabonilla
GRANT SELECT ON VISTA_ORDENES_EDIT TO dabonilla

GRANT SELECT ON VISTA_ORDENES_ITEMS_VIEW TO negarzonc
GRANT INSERT ON VISTA_ORDENES_ITEMS_EDIT TO negarzonc
GRANT SELECT ON VISTA_ORDENES_ITEMS_EDIT TO negarzonc
GRANT SELECT ON VISTA_ORDENES_ITEMS_VIEW TO dsilvamo
GRANT INSERT ON VISTA_ORDENES_ITEMS_EDIT TO dsilvamo
GRANT SELECT ON VISTA_ORDENES_ITEMS_EDIT TO dsilvamo
GRANT SELECT ON VISTA_ORDENES_ITEMS_VIEW TO dabonilla
GRANT INSERT ON VISTA_ORDENES_ITEMS_EDIT TO dabonilla
GRANT SELECT ON VISTA_ORDENES_ITEMS_EDIT TO dabonilla

GRANT SELECT ON VISTA_PAISES_VIEW TO negarzonc
GRANT INSERT ON VISTA_PAISES_EDIT TO negarzonc
GRANT SELECT ON VISTA_PAISES_EDIT TO negarzonc
GRANT SELECT ON VISTA_PAISES_VIEW TO dsilvamo
GRANT INSERT ON VISTA_PAISES_EDIT TO dsilvamo
GRANT SELECT ON VISTA_PAISES_EDIT TO dsilvamo
GRANT SELECT ON VISTA_PAISES_VIEW TO dabonilla
GRANT INSERT ON VISTA_PAISES_EDIT TO dabonilla
GRANT SELECT ON VISTA_PAISES_EDIT TO dabonilla

GRANT SELECT ON VISTA_PREMIOS_VIEW TO negarzonc
GRANT INSERT ON VISTA_PREMIOS_EDIT TO negarzonc
GRANT SELECT ON VISTA_PREMIOS_EDIT TO negarzonc
GRANT SELECT ON VISTA_PREMIOS_VIEW TO dsilvamo
GRANT INSERT ON VISTA_PREMIOS_EDIT TO dsilvamo
GRANT SELECT ON VISTA_PREMIOS_EDIT TO dsilvamo
GRANT SELECT ON VISTA_PREMIOS_VIEW TO dabonilla
GRANT INSERT ON VISTA_PREMIOS_EDIT TO dabonilla
GRANT SELECT ON VISTA_PREMIOS_EDIT TO dabonilla

GRANT SELECT ON VISTA_PRODUCTOS_VIEW TO negarzonc
GRANT INSERT ON VISTA_PRODUCTOS_EDIT TO negarzonc
GRANT SELECT ON VISTA_PRODUCTOS_EDIT TO negarzonc
GRANT SELECT ON VISTA_PRODUCTOS_VIEW TO dsilvamo
GRANT INSERT ON VISTA_PRODUCTOS_EDIT TO dsilvamo
GRANT SELECT ON VISTA_PRODUCTOS_EDIT TO dsilvamo
GRANT SELECT ON VISTA_PRODUCTOS_VIEW TO dabonilla
GRANT INSERT ON VISTA_PRODUCTOS_EDIT TO dabonilla
GRANT SELECT ON VISTA_PRODUCTOS_EDIT TO dabonilla

GRANT SELECT ON VISTA_PROVEEDORES_VIEW TO negarzonc
GRANT INSERT ON VISTA_PROVEEDORES_EDIT TO negarzonc
GRANT SELECT ON VISTA_PROVEEDORES_EDIT TO negarzonc
GRANT SELECT ON VISTA_PROVEEDORES_VIEW TO dsilvamo
GRANT INSERT ON VISTA_PROVEEDORES_EDIT TO dsilvamo
GRANT SELECT ON VISTA_PROVEEDORES_EDIT TO dsilvamo
GRANT SELECT ON VISTA_PROVEEDORES_VIEW TO dabonilla
GRANT INSERT ON VISTA_PROVEEDORES_EDIT TO dabonilla
GRANT SELECT ON VISTA_PROVEEDORES_EDIT TO dabonilla

GRANT SELECT ON VISTA_PROVEEDOR_GERENTE_VIEW TO negarzonc
GRANT INSERT ON VISTA_PROVEEDOR_GERENTE_EDIT TO negarzonc
GRANT SELECT ON VISTA_PROVEEDOR_GERENTE_EDIT TO negarzonc
GRANT SELECT ON VISTA_PROVEEDOR_GERENTE_VIEW TO dsilvamo
GRANT INSERT ON VISTA_PROVEEDOR_GERENTE_EDIT TO dsilvamo
GRANT SELECT ON VISTA_PROVEEDOR_GERENTE_EDIT TO dsilvamo
GRANT SELECT ON VISTA_PROVEEDOR_GERENTE_VIEW TO dabonilla
GRANT INSERT ON VISTA_PROVEEDOR_GERENTE_EDIT TO dabonilla
GRANT SELECT ON VISTA_PROVEEDOR_GERENTE_EDIT TO dabonilla

GRANT SELECT ON VISTA_SUCURSALES_VIEW TO negarzonc
GRANT INSERT ON VISTA_SUCURSALES_EDIT TO negarzonc
GRANT SELECT ON VISTA_SUCURSALES_EDIT TO negarzonc
GRANT SELECT ON VISTA_SUCURSALES_VIEW TO dsilvamo
GRANT INSERT ON VISTA_SUCURSALES_EDIT TO dsilvamo
GRANT SELECT ON VISTA_SUCURSALES_EDIT TO dsilvamo
GRANT SELECT ON VISTA_SUCURSALES_VIEW TO dabonilla
GRANT INSERT ON VISTA_SUCURSALES_EDIT TO dabonilla
GRANT SELECT ON VISTA_SUCURSALES_EDIT TO dabonilla

GRANT SELECT ON VISTA_VACANTES_VIEW TO negarzonc
GRANT INSERT ON VISTA_VACANTES_EDIT TO negarzonc
GRANT SELECT ON VISTA_VACANTES_EDIT TO negarzonc
GRANT SELECT ON VISTA_VACANTES_VIEW TO dsilvamo
GRANT INSERT ON VISTA_VACANTES_EDIT TO dsilvamo
GRANT SELECT ON VISTA_VACANTES_EDIT TO dsilvamo
GRANT SELECT ON VISTA_VACANTES_VIEW TO dabonilla
GRANT INSERT ON VISTA_VACANTES_EDIT TO dabonilla
GRANT SELECT ON VISTA_VACANTES_EDIT TO dabonilla

GRANT SELECT ON VISTA_VENDEDORES_VIEW TO negarzonc
GRANT INSERT ON VISTA_VENDEDORES_EDIT TO negarzonc
GRANT SELECT ON VISTA_VENDEDORES_EDIT TO negarzonc
GRANT SELECT ON VISTA_VENDEDORES_VIEW TO dsilvamo
GRANT INSERT ON VISTA_VENDEDORES_EDIT TO dsilvamo
GRANT SELECT ON VISTA_VENDEDORES_EDIT TO dsilvamo
GRANT SELECT ON VISTA_VENDEDORES_VIEW TO dabonilla
GRANT INSERT ON VISTA_VENDEDORES_EDIT TO dabonilla
GRANT SELECT ON VISTA_VENDEDORES_EDIT TO dabonilla

/*==============================================================*/
/* PERMISOS PÚBLICOS                                            */
/*==============================================================*/

GRANT SELECT ON VISTA_PUBLICA_CLIENTES_VIEW TO PUBLIC

GRANT SELECT ON VISTA_PUBLICA_PROVEEDORES_VIEW TO PUBLIC

GRANT SELECT ON VISTA_PUBLICA_EMPLEADOS_VIEW TO PUBLIC

GRANT SELECT ON VISTA_PUBLICA_VENDEDORES_VIEW TO PUBLIC

GRANT SELECT ON VISTA_REGISTRO_HISTORICO_VIEW TO PUBLIC


