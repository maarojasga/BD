/*==============================================================*/
/* View_Edit: ASISTENCIA_CAPACITACIONES                                             */
/*==============================================================*/
CREATE view VISTA_ASISTENCIA_CAPACITACIONES_Edit AS SELECT 
    ASISTENCIA_CAPACITACIONES_ID,
    CAPACITACION_ID,
    ASISTENCIA_CAPACITACIONES_SI_N
                                    FROM ASISTENCIA_CAPACITACIONES;

/*==============================================================*/
/* View_View:ASISTENCIA_CAPACITACIONES                                             */
/*==============================================================*/
CREATE OR replace view VISTA_ASISTENCIA_CAPACITACIONES_View 
(
   ASISTENCIA_CAPACITACIONES_ID,
   CAPACITACION_ID,
   ASISTENCIA_CAPACITACIONES_SI_N,
   digitador,
   fecha
)
AS SELECT 
   ASISTENCIA_CAPACITACIONES_ID,
   CAPACITACION_ID,
   ASISTENCIA_CAPACITACIONES_SI_N,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM ASISTENCIA_CAPACITACIONES
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_ASISTENCIA_CAPACITACIONES_View TO negarzonc;
GRANT INSERT ON VISTA_ASISTENCIA_CAPACITACIONES_Edit TO negarzonc;
GRANT SELECT ON VISTA_ASISTENCIA_CAPACITACIONES_Edit TO negarzonc;

GRANT SELECT ON VISTA_ASISTENCIA_CAPACITACIONES_View TO dabonilla;
GRANT INSERT ON VISTA_ASISTENCIA_CAPACITACIONES_Edit TO dabonilla;
GRANT SELECT ON VISTA_ASISTENCIA_CAPACITACIONES_Edit TO dabonilla;

GRANT SELECT ON VISTA_ASISTENCIA_CAPACITACIONES_View TO dsilvamo;
GRANT INSERT ON VISTA_ASISTENCIA_CAPACITACIONES_Edit TO dsilvamo;
GRANT SELECT ON VISTA_ASISTENCIA_CAPACITACIONES_Edit TO dsilvamo;

/*==============================================================*/
/* View_Edit: BODEGAS                                           */
/*==============================================================*/
CREATE view VISTA_BODEGAS_Edit AS SELECT 
    BODEGA_ID,
    SUCURSAL_ID,
    BODEGA_CANTIDAD
                                    FROM BODEGAS;

/*==============================================================*/
/* View_View: BODEGAS                                             */
/*==============================================================*/
CREATE OR replace view VISTA_BODEGAS_View 
(
   BODEGA_ID,
   SUCURSAL_ID,
   BODEGA_CANTIDAD,
   digitador,
   fecha
)
AS SELECT 
   BODEGA_ID,
   SUCURSAL_ID,
   BODEGA_CANTIDAD,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM BODEGAS
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_BODEGAS_View TO negarzonc;
GRANT INSERT ON VISTA_BODEGAS_Edit TO negarzonc;
GRANT SELECT ON VISTA_BODEGAS_Edit TO negarzonc;

GRANT SELECT ON VISTA_BODEGAS_View TO dabonilla;
GRANT INSERT ON VISTA_BODEGAS_Edit TO dabonilla;
GRANT SELECT ON VISTA_BODEGAS_Edit TO dabonilla;

GRANT SELECT ON VISTA_BODEGAS_View TO dsilvamo;
GRANT INSERT ON VISTA_BODEGAS_Edit TO dsilvamo;
GRANT SELECT ON VISTA_BODEGAS_Edit TO dsilvamo;

/*==============================================================*/
/* View_Edit: CANDIDATOS                                           */
/*==============================================================*/
CREATE view VISTA_CANDIDATOS_Edit AS SELECT 
    CANDIDATO_ID,
    VACANTE_ID,
    CANDIDATO_NOMBRE,
    CANDIDATO_DOCUMENTO,
    CANDIDATO_CORREO,
    CANDIDATO_CELULAR,
    CANDIDATO_EDAD,
    CANDIDATO_GENERO,
    CANDIDATO_PORCENTAJE_VALORACIO
                                    FROM CANDIDATOS;

/*==============================================================*/
/* View_View: CANDIDATOS                                             */
/*==============================================================*/
CREATE OR replace view VISTA_CANDIDATOS_View 
(
    CANDIDATO_ID,
    VACANTE_ID,
    CANDIDATO_NOMBRE,
    CANDIDATO_DOCUMENTO,
    CANDIDATO_CORREO,
    CANDIDATO_CELULAR,
    CANDIDATO_EDAD,
    CANDIDATO_GENERO,
    CANDIDATO_PORCENTAJE_VALORACIO,
    digitador,
    fecha
)
AS SELECT 
    CANDIDATO_ID,
    VACANTE_ID,
    CANDIDATO_NOMBRE,
    CANDIDATO_DOCUMENTO,
    CANDIDATO_CORREO,
    CANDIDATO_CELULAR,
    CANDIDATO_EDAD,
    CANDIDATO_GENERO,
    CANDIDATO_PORCENTAJE_VALORACIO,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM CANDIDATOS
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_CANDIDATOS_View TO negarzonc;
GRANT INSERT ON VISTA_CANDIDATOS_Edit TO negarzonc;
GRANT SELECT ON VISTA_CANDIDATOS_Edit TO negarzonc;

GRANT SELECT ON VISTA_CANDIDATOS_View TO dabonilla;
GRANT INSERT ON VISTA_CANDIDATOS_Edit TO dabonilla;
GRANT SELECT ON VISTA_CANDIDATOS_Edit TO dabonilla;

GRANT SELECT ON VISTA_CANDIDATOS_View TO dsilvamo;
GRANT INSERT ON VISTA_CANDIDATOS_Edit TO dsilvamo;
GRANT SELECT ON VISTA_CANDIDATOS_Edit TO dsilvamo;


/*==============================================================*/
/* View_Edit: CAPACITACIONES                                           */
/*==============================================================*/
CREATE view VISTA_CAPACITACIONES_Edit AS SELECT 
    CAPACITACION_ID,
    EMPLEADO_ID,
    CAPACITACION_NOMBRE_TIPO,
    CAPACITACION_FECHA,
    CAPACITACION_DESCRIPCION
                                    FROM CAPACITACIONES;

/*==============================================================*/
/* View_View: CAPACITACIONES                                            */
/*==============================================================*/
CREATE OR replace view VISTA_CAPACITACIONES_View 
(
    CAPACITACION_ID,
    EMPLEADO_ID,
    CAPACITACION_NOMBRE_TIPO,
    CAPACITACION_FECHA,
    CAPACITACION_DESCRIPCION,
   digitador,
   fecha
)
AS SELECT 
    CAPACITACION_ID,
    EMPLEADO_ID,
    CAPACITACION_NOMBRE_TIPO,
    CAPACITACION_FECHA,
    CAPACITACION_DESCRIPCION,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM CAPACITACIONES
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_CAPACITACIONES_View TO negarzonc;
GRANT INSERT ON VISTA_CAPACITACIONES_Edit TO negarzonc;
GRANT SELECT ON VISTA_CAPACITACIONES_Edit TO negarzonc;

GRANT SELECT ON VISTA_CAPACITACIONES_View TO dabonilla;
GRANT INSERT ON VISTA_CAPACITACIONES_Edit TO dabonilla;
GRANT SELECT ON VISTA_CAPACITACIONES_Edit TO dabonilla;

GRANT SELECT ON VISTA_CAPACITACIONES_View TO dsilvamo;
GRANT INSERT ON VISTA_CAPACITACIONES_Edit TO dsilvamo;
GRANT SELECT ON VISTA_CAPACITACIONES_Edit TO dsilvamo;


/*==============================================================*/
/* View_Edit: CARGOS                                           */
/*==============================================================*/
CREATE view VISTA_CARGOS_Edit AS SELECT 
    CARGO_ID,
    DEPARTAMENTO_ID,
    CARGO_NOMBRE,
    CARGO_SALARIO_MAX,
    CARGO_SALARIO_MIN
                                    FROM CARGOS;

/*==============================================================*/
/* View_View: CARGOS                                            */
/*==============================================================*/
CREATE OR replace view VISTA_CARGOS_View 
(
    CARGO_ID,
    DEPARTAMENTO_ID,
    CARGO_NOMBRE,
    CARGO_SALARIO_MAX,
    CARGO_SALARIO_MIN,
   digitador,
   fecha
)
AS SELECT 
    CARGO_ID,
    DEPARTAMENTO_ID,
    CARGO_NOMBRE,
    CARGO_SALARIO_MAX,
    CARGO_SALARIO_MIN,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM CARGOS
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_CARGOS_View TO negarzonc;
GRANT INSERT ON VISTA_CARGOS_Edit TO negarzonc;
GRANT SELECT ON VISTA_CARGOS_Edit TO negarzonc;

GRANT SELECT ON VISTA_CARGOS_View TO dabonilla;
GRANT INSERT ON VISTA_CARGOS_Edit TO dabonilla;
GRANT SELECT ON VISTA_CARGOS_Edit TO dabonilla;

GRANT SELECT ON VISTA_CARGOS_View TO dsilvamo;
GRANT INSERT ON VISTA_CARGOS_Edit TO dsilvamo;
GRANT SELECT ON VISTA_CARGOS_Edit TO dsilvamo;


/*==============================================================*/
/* View_Edit: CIUDADES                                           */
/*==============================================================*/
CREATE view VISTA_CIUDADES_Edit AS SELECT 
    CIUDAD_ID,
    PAIS_ID,
    CIUDAD_NOMBRE
                                    FROM CIUDADES;

/*==============================================================*/
/* View_View: CIUDADES                                             */
/*==============================================================*/
CREATE OR replace view VISTA_CIUDADES_View 
(
   CIUDAD_ID,
   PAIS_ID,
   CIUDAD_NOMBRE,
   digitador,
   fecha
)
AS SELECT 
    CIUDAD_ID,
    PAIS_ID,
    CIUDAD_NOMBRE,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM CIUDADES
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_ASISTENCIA_CIUDADES_View TO negarzonc;
GRANT INSERT ON VISTA_ASISTENCIA_CIUDADES_Edit TO negarzonc;
GRANT SELECT ON VISTA_ASISTENCIA_CIUDADES_Edit TO negarzonc;

GRANT SELECT ON VISTA_ASISTENCIA_CIUDADES_View TO dabonilla;
GRANT INSERT ON VISTA_ASISTENCIA_CIUDADES_Edit TO dabonilla;
GRANT SELECT ON VISTA_ASISTENCIA_CIUDADES_Edit TO dabonilla;

GRANT SELECT ON VISTA_ASISTENCIA_CIUDADES_View TO dsilvamo;
GRANT INSERT ON VISTA_ASISTENCIA_CIUDADES_Edit TO dsilvamo;
GRANT SELECT ON VISTA_ASISTENCIA_CIUDADES_Edit TO dsilvamo;


/*==============================================================*/
/* View_Edit: CLIENTES                                            */
/*==============================================================*/
CREATE view VISTA_CLIENTES_Edit AS SELECT 
    CLIENTE_ID,
    CLIENTE_NIT
    CLIENTE_NOMBRE,
    CLIENTE_CENTRO_LLAMADAS,
    CLIENTE_DIRECCION,
    CLIENTE_NORMAS_BOOL,
    CLIENTE_CORREO
                                    FROM CLIENTES ;

/*==============================================================*/
/* View_View: CLIENTES                                              */
/*==============================================================*/
CREATE OR replace view VISTA_CLIENTES_View 
(
   CLIENTE_ID,
    CLIENTE_NIT
    CLIENTE_NOMBRE,
    CLIENTE_CENTRO_LLAMADAS,
    CLIENTE_DIRECCION,
    CLIENTE_NORMAS_BOOL,
    CLIENTE_CORREO,
   digitador,
   fecha
)
AS SELECT 
    CLIENTE_ID,
    CLIENTE_NIT,
    CLIENTE_NOMBRE,
    CLIENTE_CENTRO_LLAMADAS,
    CLIENTE_DIRECCION,
    CLIENTE_NORMAS_BOOL,
    CLIENTE_CORREO,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM CLIENTES 
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_CLIENTES_View TO negarzonc;
GRANT INSERT ON VISTA_CLIENTES_Edit TO negarzonc;
GRANT SELECT ON VISTA_CLIENTES_Edit TO negarzonc;

GRANT SELECT ON VISTA_CLIENTES_View TO dabonilla;
GRANT INSERT ON VISTA_CLIENTES_Edit TO dabonilla;
GRANT SELECT ON VISTA_CLIENTES_Edit TO dabonilla;

GRANT SELECT ON VISTA_CLIENTES_View TO dsilvamo;
GRANT INSERT ON VISTA_CLIENTES_Edit TO dsilvamo;
GRANT SELECT ON VISTA_CLIENTES_Edit TO dsilvamo;


/*==============================================================*/
/* View_Edit: CLIENTE_GERENTE                                            */
/*==============================================================*/
CREATE view VISTA_CLIENTE_GERENTE_Edit AS SELECT 
    CLIENTE_GERENTE_ID,
    CLIENTE_ID,
    CLIENTE_GERENTE_NOMBRE,
    CLIENTE_GERENTE_DOCUMENTO,
    CLIENTE_GERENTE_CELULAR,
    CLIENTE_GERENTE_CORREO
                                    FROM CLIENTE_GERENTE;

/*==============================================================*/
/* View_View: CLIENTE_GERENTE                                              */
/*==============================================================*/
CREATE OR replace view VISTA_CLIENTE_GERENTE_View 
(
   CLIENTE_GERENTE_ID,
    CLIENTE_ID,
    CLIENTE_GERENTE_NOMBRE,
    CLIENTE_GERENTE_DOCUMENTO,
    CLIENTE_GERENTE_CELULAR,
    CLIENTE_GERENTE_CORREO,
   digitador,
   fecha
)
AS SELECT 
    CLIENTE_GERENTE_ID,
    CLIENTE_ID,
    CLIENTE_GERENTE_NOMBRE,
    CLIENTE_GERENTE_DOCUMENTO,
    CLIENTE_GERENTE_CELULAR,
    CLIENTE_GERENTE_CORREO,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM CLIENTE_GERENTE 
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_CLIENTE_GERENTE_View TO negarzonc;
GRANT INSERT ON VISTA_CLIENTE_GERENTE_Edit TO negarzonc;
GRANT SELECT ON VISTA_CLIENTE_GERENTE_Edit TO negarzonc;

GRANT SELECT ON VISTA_CLIENTE_GERENTE_View TO dabonilla;
GRANT INSERT ON VISTA_CLIENTE_GERENTE_Edit TO dabonilla;
GRANT SELECT ON VISTA_CLIENTE_GERENTE_Edit TO dabonilla;

GRANT SELECT ON VISTA_CLIENTE_GERENTE_View TO dsilvamo;
GRANT INSERT ON VISTA_CLIENTE_GERENTE_Edit TO dsilvamo;
GRANT SELECT ON VISTA_CLIENTE_GERENTE_Edit TO dsilvamo;


/*==============================================================*/
/* View_Edit: DEPARTAMENTOS                                            */
/*==============================================================*/
CREATE view VISTA_DEPARTAMENTOS_Edit AS SELECT 
    DEPARTAMENTO_ID,
    SUCURSAL_ID,
    DIRECTOR_DEPARTAMENTO_ID,
    DEPARTAMENTO_NOMBRE
                                    FROM DEPARTAMENTOS;

/*==============================================================*/
/* View_View: DEPARTAMENTOS                                              */
/*==============================================================*/
CREATE OR replace view VISTA_DEPARTAMENTOS_View 
(
   DEPARTAMENTO_ID,
    SUCURSAL_ID,
    DIRECTOR_DEPARTAMENTO_ID,
    DEPARTAMENTO_NOMBRE,
   digitador,
   fecha
)
AS SELECT 
    DEPARTAMENTO_ID,
    SUCURSAL_ID,
    DIRECTOR_DEPARTAMENTO_ID,
    DEPARTAMENTO_NOMBRE,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM DEPARTAMENTOS 
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_DEPARTAMENTOS_View TO negarzonc;
GRANT INSERT ON VISTA_DEPARTAMENTOS_Edit TO negarzonc;
GRANT SELECT ON VISTA_DEPARTAMENTOS_Edit TO negarzonc;

GRANT SELECT ON VISTA_DEPARTAMENTOS_View TO dabonilla;
GRANT INSERT ON VISTA_DEPARTAMENTOS_Edit TO dabonilla;
GRANT SELECT ON VISTA_DEPARTAMENTOS_Edit TO dabonilla;

GRANT SELECT ON VISTA_DEPARTAMENTOS_View TO dsilvamo;
GRANT INSERT ON VISTA_DEPARTAMENTOS_Edit TO dsilvamo;
GRANT SELECT ON VISTA_DEPARTAMENTOS_Edit TO dsilvamo;

/*==============================================================*/
/* View_Edit: DIRECTOR_DEPARTAMENTO                                            */
/*==============================================================*/
CREATE view VISTA_DIRECTOR_DEPARTAMENTO_Edit AS SELECT 
    DIRECTOR_DEPARTAMENTO_ID,
    DIRECTOR_SUCURSAL_ID,
    DIRECTOR_DEPARTAMENTO_NOMBRE,
    DIRECTOR_DEPARTAMENTO_DOCUMENT,
    DIRECTOR_DEPARTAMENTO_CELULAR,
    DIRECTOR_DEPARTAMENTO_CORREO,
    DIRECTOR_DEPARTAMENTO_GENERO,
    DIRECTOR_DIRECTOR_DEPARTAMENTO_EDAD,
    DIRECTOR_DEPARTAMENTO_SEGURIDAD_SOCIAL_BOOL,
    DIRECTOR_DEPARTAMENTO_POLIZA_VIGENTE_BOOL,
    DIRECTOR_DEPARTAMENTO_SALARIO_FIJO,
    DIRECTOR_DEPARTAMENTO_CONTRATO_INDEFINIDO_BOOL,
    DIRECTOR_DEPARTAMENTO_REINGRESO_BOOL
                                    FROM DIRECTOR_DEPARTAMENTO;

/*==============================================================*/
/* View_View: DIRECTOR_DEPARTAMENTO                                              */
/*==============================================================*/
CREATE OR replace view VISTA_DIRECTOR_DEPARTAMENTO_View 
(
   DIRECTOR_DEPARTAMENTO_ID,
    DIRECTOR_SUCURSAL_ID,
    DIRECTOR_DEPARTAMENTO_NOMBRE,
    DIRECTOR_DEPARTAMENTO_DOCUMENT,
    DIRECTOR_DEPARTAMENTO_CELULAR,
    DIRECTOR_DEPARTAMENTO_CORREO,
    DIRECTOR_DEPARTAMENTO_GENERO,
    DIRECTOR_DIRECTOR_DEPARTAMENTO_EDAD,
    DIRECTOR_DEPARTAMENTO_SEGURIDAD_SOCIAL_BOOL,
    DIRECTOR_DEPARTAMENTO_POLIZA_VIGENTE_BOOL,
    DIRECTOR_DEPARTAMENTO_SALARIO_FIJO,
    DIRECTOR_DEPARTAMENTO_CONTRATO_INDEFINIDO_BOOL,
    DIRECTOR_DEPARTAMENTO_REINGRESO_BOOL,
   digitador,
   fecha
)
AS SELECT 
    DIRECTOR_DEPARTAMENTO_ID,
    DIRECTOR_SUCURSAL_ID,
    DIRECTOR_DEPARTAMENTO_NOMBRE,
    DIRECTOR_DEPARTAMENTO_DOCUMENT,
    DIRECTOR_DEPARTAMENTO_CELULAR,
    DIRECTOR_DEPARTAMENTO_CORREO,
    DIRECTOR_DEPARTAMENTO_GENERO,
    DIRECTOR_DIRECTOR_DEPARTAMENTO_EDAD,
    DIRECTOR_DEPARTAMENTO_SEGURIDAD_SOCIAL_BOOL,
    DIRECTOR_DEPARTAMENTO_POLIZA_VIGENTE_BOOL,
    DIRECTOR_DEPARTAMENTO_SALARIO_FIJO,
    DIRECTOR_DEPARTAMENTO_CONTRATO_INDEFINIDO_BOOL,
    DIRECTOR_DEPARTAMENTO_REINGRESO_BOOL,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM DIRECTOR_DEPARTAMENTO 
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_DIRECTOR_DEPARTAMENTO_View TO negarzonc;
GRANT INSERT ON VISTA_DIRECTOR_DEPARTAMENTO_Edit TO negarzonc;
GRANT SELECT ON VISTA_DIRECTOR_DEPARTAMENTO_Edit TO negarzonc;

GRANT SELECT ON VISTA_DIRECTOR_DEPARTAMENTO_View TO dabonilla;
GRANT INSERT ON VISTA_DIRECTOR_DEPARTAMENTO_Edit TO dabonilla;
GRANT SELECT ON VISTA_DIRECTOR_DEPARTAMENTO_Edit TO dabonilla;

GRANT SELECT ON VISTA_DIRECTOR_DEPARTAMENTO_View TO dsilvamo;
GRANT INSERT ON VISTA_DIRECTOR_DEPARTAMENTO_Edit TO dsilvamo;
GRANT SELECT ON VISTA_DIRECTOR_DEPARTAMENTO_Edit TO dsilvamo;



/*==============================================================*/
/* View_Edit: DIRECTOR_SUCURSAL                                            */
/*==============================================================*/
CREATE view VISTA_DIRECTOR_SUCURSAL_Edit AS SELECT 
    DIRECTOR_SUCURSAL_ID,
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
                                    FROM DIRECTOR_SUCURSAL;

/*==============================================================*/
/* View_View: DIRECTOR_SUCURSAL                                              */
/*==============================================================*/
CREATE OR replace view VISTA_DIRECTOR_SUCURSAL_View 
(
   DIRECTOR_SUCURSAL_ID,
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
    DIRECTOR_SUCURSAL_REINGRESO_BOOL,
   digitador,
   fecha
)
AS SELECT 
    DIRECTOR_SUCURSAL_ID,
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
    DIRECTOR_SUCURSAL_REINGRESO_BOOL,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM DIRECTOR_SUCURSAL 
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_DIRECTOR_SUCURSAL_View TO negarzonc;
GRANT INSERT ON VISTA_DIRECTOR_SUCURSAL_Edit TO negarzonc;
GRANT SELECT ON VISTA_DIRECTOR_SUCURSAL_Edit TO negarzonc;

GRANT SELECT ON VISTA_DIRECTOR_SUCURSAL_View TO dabonilla;
GRANT INSERT ON VISTA_DIRECTOR_SUCURSAL_Edit TO dabonilla;
GRANT SELECT ON VISTA_DIRECTOR_SUCURSAL_Edit TO dabonilla;

GRANT SELECT ON VISTA_DIRECTOR_SUCURSAL_View TO dsilvamo;
GRANT INSERT ON VISTA_DIRECTOR_SUCURSAL_Edit TO dsilvamo;
GRANT SELECT ON VISTA_DIRECTOR_SUCURSAL_Edit TO dsilvamo;


/*==============================================================*/
/* View_Edit: EMPLEADOS                                            */
/*==============================================================*/
CREATE view VISTA_EMPLEADOS_Edit AS SELECT 
    EMPLEADO_ID,
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
    
                                    FROM EMPLEADOS;

/*==============================================================*/
/* View_View: EMPLEADOS                                              */
/*==============================================================*/
CREATE OR replace view VISTA_EMPLEADOS_View 
(
   EMPLEADO_ID,
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
    EMPLEADO_REINGRESO_BOOL,
   digitador,
   fecha
)
AS SELECT 
    EMPLEADO_ID,
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
    EMPLEADO_REINGRESO_BOOL,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM EMPLEADOS 
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_EMPLEADOS_View TO negarzonc;
GRANT INSERT ON VISTA_EMPLEADOS_Edit TO negarzonc;
GRANT SELECT ON VISTA_EMPLEADOS_Edit TO negarzonc;

GRANT SELECT ON VISTA_EMPLEADOS_View TO dabonilla;
GRANT INSERT ON VISTA_EMPLEADOS_Edit TO dabonilla;
GRANT SELECT ON VISTA_EMPLEADOS_Edit TO dabonilla;

GRANT SELECT ON VISTA_EMPLEADOS_View TO dsilvamo;
GRANT INSERT ON VISTA_EMPLEADOS_Edit TO dsilvamo;
GRANT SELECT ON VISTA_EMPLEADOS_Edit TO dsilvamo;



/*==============================================================*/
/* View_Edit: EMPRESA                                            */
/*==============================================================*/
CREATE view VISTA_EMPRESA_Edit AS SELECT 
    EMPRESA_ID,
    EMPRESA_NOMBRE,
    EMPRESA_DIRECCION,
    EMPRESA_CENTRO_LLAMADAS
    
                                    FROM EMPRESA;

/*==============================================================*/
/* View_View: EMPRESA                                              */
/*==============================================================*/
CREATE OR replace view VISTA_EMPRESA_View 
(
   EMPRESA_ID,
    EMPRESA_NOMBRE,
    EMPRESA_DIRECCION,
    EMPRESA_CENTRO_LLAMADAS,
   digitador,
   fecha
)
AS SELECT 
    EMPRESA_ID,
    EMPRESA_NOMBRE,
    EMPRESA_DIRECCION,
    EMPRESA_CENTRO_LLAMADAS,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM EMPRESA 
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_EMPRESA_View TO negarzonc;
GRANT INSERT ON VISTA_EMPRESA_Edit TO negarzonc;
GRANT SELECT ON VISTA_EMPRESA_Edit TO negarzonc;

GRANT SELECT ON VISTA_EMPRESA_View TO dabonilla;
GRANT INSERT ON VISTA_EMPRESA_Edit TO dabonilla;
GRANT SELECT ON VISTA_EMPRESA_Edit TO dabonilla;

GRANT SELECT ON VISTA_EMPRESA_View TO dsilvamo;
GRANT INSERT ON VISTA_EMPRESA_Edit TO dsilvamo;
GRANT SELECT ON VISTA_EMPRESA_Edit TO dsilvamo;


/*==============================================================*/
/* View_Edit: EMPRESA_GERENTE                                            */
/*==============================================================*/
CREATE view VISTA_EMPRESA_GERENTE_Edit AS SELECT 
    EMPRESA_GERENTE_ID,
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
    
                                    FROM EMPRESA_GERENTE;

/*==============================================================*/
/* View_View: EMPRESA_GERENTE                                              */
/*==============================================================*/
CREATE OR replace view VISTA_EMPRESA_GERENTE_View 
(
   EMPRESA_GERENTE_ID,
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
    EMPRESA_GERENTE_REINGRESO_BOOL,
   digitador,
   fecha
)
AS SELECT 
    EMPRESA_GERENTE_ID,
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
    EMPRESA_GERENTE_REINGRESO_BOOL,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM EMPRESA_GERENTE 
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_EMPRESA_GERENTE_View TO negarzonc;
GRANT INSERT ON VISTA_EMPRESA_GERENTE_Edit TO negarzonc;
GRANT SELECT ON VISTA_EMPRESA_GERENTE_Edit TO negarzonc;

GRANT SELECT ON VISTA_EMPRESA_GERENTE_View TO dabonilla;
GRANT INSERT ON VISTA_EMPRESA_GERENTE_Edit TO dabonilla;
GRANT SELECT ON VISTA_EMPRESA_GERENTE_Edit TO dabonilla;

GRANT SELECT ON VISTA_EMPRESA_GERENTE_View TO dsilvamo;
GRANT INSERT ON VISTA_EMPRESA_GERENTE_Edit TO dsilvamo;
GRANT SELECT ON VISTA_EMPRESA_GERENTE_Edit TO dsilvamo;


/*==============================================================*/
/* View_Edit: EMPRESA_SUBGERENTE                                            */
/*==============================================================*/
CREATE view VISTA_EMPRESA_SUBGERENTE_Edit AS SELECT 
    EMPRESA_SUBGERENTE_ID,
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
    
                                    FROM EMPRESA_SUBGERENTE;

/*==============================================================*/
/* View_View: EMPRESA_SUBGERENTE                                              */
/*==============================================================*/
CREATE OR replace view VISTA_EMPRESA_SUBGERENTE_View 
(
   EMPRESA_SUBGERENTE_ID,
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
    EMPRESA_SUBGERENTE_REINGRESO_BOOL,
   digitador,
   fecha
)
AS SELECT 
    EMPRESA_SUBGERENTE_ID,
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
    EMPRESA_SUBGERENTE_REINGRESO_BOOL,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM EMPRESA_SUBGERENTE 
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_EMPRESA_SUBGERENTE_View TO negarzonc;
GRANT INSERT ON VISTA_EMPRESA_SUBGERENTE_Edit TO negarzonc;
GRANT SELECT ON VISTA_EMPRESA_SUBGERENTE_Edit TO negarzonc;

GRANT SELECT ON VISTA_EMPRESA_SUBGERENTE_View TO dabonilla;
GRANT INSERT ON VISTA_EMPRESA_SUBGERENTE_Edit TO dabonilla;
GRANT SELECT ON VISTA_EMPRESA_SUBGERENTE_Edit TO dabonilla;

GRANT SELECT ON VISTA_EMPRESA_SUBGERENTE_View TO dsilvamo;
GRANT INSERT ON VISTA_EMPRESA_SUBGERENTE_Edit TO dsilvamo;
GRANT SELECT ON VISTA_EMPRESA_SUBGERENTE_Edit TO dsilvamo;


/*==============================================================*/
/* View_Edit: HISTORIAL_TRABAJADORES                                            */
/*==============================================================*/
CREATE view VISTA_HISTORIAL_TRABAJADORES_Edit AS SELECT 
    HISTORIA_TRABAJADORES_ID,
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
    HISTORIA_TRABAJADORES_CELULAR

    
                                    FROM HISTORIAL_TRABAJADORES;

/*==============================================================*/
/* View_View: HISTORIAL_TRABAJADORES                                              */
/*==============================================================*/
CREATE OR replace view VISTA_HISTORIAL_TRABAJADORES_View 
(
   HISTORIA_TRABAJADORES_ID,
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
   digitador,
   fecha
)
AS SELECT 
    HISTORIA_TRABAJADORES_ID,
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
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM HISTORIAL_TRABAJADORES 
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_HISTORIAL_TRABAJADORES_View TO negarzonc;
GRANT INSERT ON VISTA_HISTORIAL_TRABAJADORES_Edit TO negarzonc;
GRANT SELECT ON VISTA_HISTORIAL_TRABAJADORES_Edit TO negarzonc;

GRANT SELECT ON VISTA_HISTORIAL_TRABAJADORES_View TO dabonilla;
GRANT INSERT ON VISTA_HISTORIAL_TRABAJADORES_Edit TO dabonilla;
GRANT SELECT ON VISTA_HISTORIAL_TRABAJADORES_Edit TO dabonilla;

GRANT SELECT ON VISTA_HISTORIAL_TRABAJADORES_View TO dsilvamo;
GRANT INSERT ON VISTA_HISTORIAL_TRABAJADORES_Edit TO dsilvamo;
GRANT SELECT ON VISTA_HISTORIAL_TRABAJADORES_Edit TO dsilvamo;



/*==============================================================*/
/* View_Edit: ORDENES                                            */
/*==============================================================*/
CREATE view VISTA_ORDENES_Edit AS SELECT 
    ORDEN_ID,
    SUCURSAL_ID,
    VACANTE_ID,
    CLIENTE_ID,
    ORDEN_ESTADO,
    ORDEN_FECHA_SOLICITUD
    ORDEN_FECHA_ENTREGA

    
                                    FROM ORDENES;

/*==============================================================*/
/* View_View: ORDENES                                              */
/*==============================================================*/
CREATE OR replace view VISTA_ORDENES_View 
(
   ORDEN_ID,
    SUCURSAL_ID,
    VACANTE_ID,
    CLIENTE_ID,
    ORDEN_ESTADO,
    ORDEN_FECHA_SOLICITUD
    ORDEN_FECHA_ENTREGA,
   digitador,
   fecha
)
AS SELECT 
    ORDEN_ID,
    SUCURSAL_ID,
    VACANTE_ID,
    CLIENTE_ID,
    ORDEN_ESTADO,
    ORDEN_FECHA_SOLICITUD
    ORDEN_FECHA_ENTREGA,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM ORDENES 
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_ORDENES_View TO negarzonc;
GRANT INSERT ON VISTA_ORDENES_Edit TO negarzonc;
GRANT SELECT ON VISTA_ORDENES_Edit TO negarzonc;

GRANT SELECT ON VISTA_ORDENES_View TO dabonilla;
GRANT INSERT ON VISTA_ORDENES_Edit TO dabonilla;
GRANT SELECT ON VISTA_ORDENES_Edit TO dabonilla;

GRANT SELECT ON VISTA_ORDENES_View TO dsilvamo;
GRANT INSERT ON VISTA_ORDENES_Edit TO dsilvamo;
GRANT SELECT ON VISTA_ORDENES_Edit TO dsilvamo;



/*==============================================================*/
/* View_Edit: ORDENES_ITEMS                                            */
/*==============================================================*/
CREATE view VISTA_ORDENES_ITEMS_Edit AS SELECT 
    ORDEN_ITEM_ID,
    ORDEN_ID,
    PRODUCTO_ID,
    ORDEN_ITEM_CANTIDAD,
    ORDEN_ITEM_PRECIO_TOTAL,
    ORDEN_ITEM_DESCUENTO_BOOL

    
                                    FROM ORDENES_ITEMS;

/*==============================================================*/
/* View_View: ORDENES_ITEMS                                              */
/*==============================================================*/
CREATE OR replace view VISTA_ORDENES_ITEMS_View 
(
   ORDEN_ITEM_ID,
    ORDEN_ID,
    PRODUCTO_ID,
    ORDEN_ITEM_CANTIDAD,
    ORDEN_ITEM_PRECIO_TOTAL,
    ORDEN_ITEM_DESCUENTO_BOOL,
   digitador,
   fecha
)
AS SELECT 
    ORDEN_ITEM_ID,
    ORDEN_ID,
    PRODUCTO_ID,
    ORDEN_ITEM_CANTIDAD,
    ORDEN_ITEM_PRECIO_TOTAL,
    ORDEN_ITEM_DESCUENTO_BOOL,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM ORDENES_ITEMS 
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_ORDENES_ITEMS_View TO negarzonc;
GRANT INSERT ON VISTA_ORDENES_ITEMS_Edit TO negarzonc;
GRANT SELECT ON VISTA_ORDENES_ITEMS_Edit TO negarzonc;

GRANT SELECT ON VISTA_ORDENES_ITEMS_View TO dabonilla;
GRANT INSERT ON VISTA_ORDENES_ITEMS_Edit TO dabonilla;
GRANT SELECT ON VISTA_ORDENES_ITEMS_Edit TO dabonilla;

GRANT SELECT ON VISTA_ORDENES_ITEMS_View TO dsilvamo;
GRANT INSERT ON VISTA_ORDENES_ITEMS_Edit TO dsilvamo;
GRANT SELECT ON VISTA_ORDENES_ITEMS_Edit TO dsilvamo;


/*==============================================================*/
/* View_Edit: PAISES                                            */
/*==============================================================*/
CREATE view VISTA_PAISES_Edit AS SELECT 
    PAIS_ID,
    EMPRESA_ID,
    PAIS_NOMBRE,
    PAIS_PREFIJO

    
                                    FROM PAISES;

/*==============================================================*/
/* View_View: PAISES                                              */
/*==============================================================*/
CREATE OR replace view VISTA_PAISES_View 
(
   PAIS_ID,
    EMPRESA_ID,
    PAIS_NOMBRE,
    PAIS_PREFIJO,
   digitador,
   fecha
)
AS SELECT 
   PAIS_ID,
    EMPRESA_ID,
    PAIS_NOMBRE,
    PAIS_PREFIJO,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM PAISES 
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_PAISES_View TO negarzonc;
GRANT INSERT ON VISTA_PAISES_Edit TO negarzonc;
GRANT SELECT ON VISTA_PAISES_Edit TO negarzonc;

GRANT SELECT ON VISTA_PAISES_View TO dabonilla;
GRANT INSERT ON VISTA_PAISES_Edit TO dabonilla;
GRANT SELECT ON VISTA_PAISES_Edit TO dabonilla;

GRANT SELECT ON VISTA_PAISES_View TO dsilvamo;
GRANT INSERT ON VISTA_PAISES_Edit TO dsilvamo;
GRANT SELECT ON VISTA_PAISES_Edit TO dsilvamo;



/*==============================================================*/
/* View_Edit: PREMIOS                                            */
/*==============================================================*/
CREATE view VISTA_PREMIOS_Edit AS SELECT 
    PREMIO_ID,
    PREMIO_NOMBRE,
    PREMIO_VALOR

    
                                    FROM PREMIOS;

/*==============================================================*/
/* View_View: PREMIOS                                              */
/*==============================================================*/
CREATE OR replace view VISTA_PREMIOS_View 
(
   PREMIO_ID,
    PREMIO_NOMBRE,
    PREMIO_VALOR,
   digitador,
   fecha
)
AS SELECT 
   PREMIO_ID,
    PREMIO_NOMBRE,
    PREMIO_VALOR,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM PREMIOS 
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_PREMIOS_View TO negarzonc;
GRANT INSERT ON VISTA_PREMIOS_Edit TO negarzonc;
GRANT SELECT ON VISTA_PREMIOS_Edit TO negarzonc;

GRANT SELECT ON VISTA_PREMIOS_View TO dabonilla;
GRANT INSERT ON VISTA_PREMIOS_Edit TO dabonilla;
GRANT SELECT ON VISTA_PREMIOS_Edit TO dabonilla;

GRANT SELECT ON VISTA_PREMIOS_View TO dsilvamo;
GRANT INSERT ON VISTA_PREMIOS_Edit TO dsilvamo;
GRANT SELECT ON VISTA_PREMIOS_Edit TO dsilvamo;



/*==============================================================*/
/* View_Edit: PRODUCTOS                                            */
/*==============================================================*/
CREATE view VISTA_PRODUCTOS_Edit AS SELECT 
    PRODUCTO_ID,
    BODEGA_ID,
    PROVEEDOR_ID,
    PRODUCTO_NOMBRE,
    PRODUCTO_PRECIO_ADQUISICION,
    PRODUCTO_PRECIO_VENTA

    
                                    FROM PRODUCTOS;

/*==============================================================*/
/* View_View: PRODUCTOS                                              */
/*==============================================================*/
CREATE OR replace view VISTA_PRODUCTOS_View 
(
   PRODUCTO_ID,
    BODEGA_ID,
    PROVEEDOR_ID,
    PRODUCTO_NOMBRE,
    PRODUCTO_PRECIO_ADQUISICION,
    PRODUCTO_PRECIO_VENTA,
   digitador,
   fecha
)
AS SELECT 
   PRODUCTO_ID,
    BODEGA_ID,
    PROVEEDOR_ID,
    PRODUCTO_NOMBRE,
    PRODUCTO_PRECIO_ADQUISICION,
    PRODUCTO_PRECIO_VENTA,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM PRODUCTOS 
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_PRODUCTOS_View TO negarzonc;
GRANT INSERT ON VISTA_PRODUCTOS_Edit TO negarzonc;
GRANT SELECT ON VISTA_PRODUCTOS_Edit TO negarzonc;

GRANT SELECT ON VISTA_PRODUCTOS_View TO dabonilla;
GRANT INSERT ON VISTA_PRODUCTOS_Edit TO dabonilla;
GRANT SELECT ON VISTA_PRODUCTOS_Edit TO dabonilla;

GRANT SELECT ON VISTA_PRODUCTOS_View TO dsilvamo;
GRANT INSERT ON VISTA_PRODUCTOS_Edit TO dsilvamo;
GRANT SELECT ON VISTA_PRODUCTOS_Edit TO dsilvamo;


/*==============================================================*/
/* View_Edit: PROVEEDORES                                            */
/*==============================================================*/
CREATE view VISTA_PROVEEDORES_Edit AS SELECT 
    PROVEEDOR_ID,
    PROVEEDOR_NIT,
    PROVEEDOR_NOMBRE,
    PROVEEDOR_CENTRO_LLAMADAS,
    PROVEEDOR_DIRECCION,
    PROVEEDOR_NORMAS_BOOL,
    PROVEEDOR_CORREO

    
                                    FROM PROVEEDORES;

/*==============================================================*/
/* View_View: PROVEEDORES                                              */
/*==============================================================*/
CREATE OR replace view VISTA_PROVEEDORES_View 
(
   PROVEEDOR_ID,
    PROVEEDOR_NIT,
    PROVEEDOR_NOMBRE,
    PROVEEDOR_CENTRO_LLAMADAS,
    PROVEEDOR_DIRECCION,
    PROVEEDOR_NORMAS_BOOL,
    PROVEEDOR_CORREO,
   digitador,
   fecha
)
AS SELECT 
   PROVEEDOR_ID,
    PROVEEDOR_NIT,
    PROVEEDOR_NOMBRE,
    PROVEEDOR_CENTRO_LLAMADAS,
    PROVEEDOR_DIRECCION,
    PROVEEDOR_NORMAS_BOOL,
    PROVEEDOR_CORREO,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM PROVEEDORES 
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_PROVEEDORES_View TO negarzonc;
GRANT INSERT ON VISTA_PROVEEDORES_Edit TO negarzonc;
GRANT SELECT ON VISTA_PROVEEDORES_Edit TO negarzonc;

GRANT SELECT ON VISTA_PROVEEDORES_View TO dabonilla;
GRANT INSERT ON VISTA_PROVEEDORES_Edit TO dabonilla;
GRANT SELECT ON VISTA_PROVEEDORES_Edit TO dabonilla;

GRANT SELECT ON VISTA_PROVEEDORES_View TO dsilvamo;
GRANT INSERT ON VISTA_PROVEEDORES_Edit TO dsilvamo;
GRANT SELECT ON VISTA_PROVEEDORES_Edit TO dsilvamo;



/*==============================================================*/
/* View_Edit: PROVEEDOR_GERENTE                                            */
/*==============================================================*/
CREATE view VISTA_PROVEEDOR_GERENTE_Edit AS SELECT 
    PROVEEDOR_GERENTE_ID,
    PROVEEDOR_ID,
    PROVEEDOR_GERENTE_NOMBRE,
    PROVEEDOR_GERENTE_DOCUMENTO,
    PROVEEDOR_GERENTE_CELULAR,
    PROVEEDOR_GERENTE_CORREO

    
                                    FROM PROVEEDOR_GERENTE;

/*==============================================================*/
/* View_View: PROVEEDOR_GERENTE                                              */
/*==============================================================*/
CREATE OR replace view VISTA_PROVEEDOR_GERENTE_View 
(
   PROVEEDOR_GERENTE_ID,
    PROVEEDOR_ID,
    PROVEEDOR_GERENTE_NOMBRE,
    PROVEEDOR_GERENTE_DOCUMENTO,
    PROVEEDOR_GERENTE_CELULAR,
    PROVEEDOR_GERENTE_CORREO,
   digitador,
   fecha
)
AS SELECT 
   PROVEEDOR_GERENTE_ID,
    PROVEEDOR_ID,
    PROVEEDOR_GERENTE_NOMBRE,
    PROVEEDOR_GERENTE_DOCUMENTO,
    PROVEEDOR_GERENTE_CELULAR,
    PROVEEDOR_GERENTE_CORREO,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM PROVEEDOR_GERENTE 
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_PROVEEDOR_GERENTE_View TO negarzonc;
GRANT INSERT ON VISTA_PROVEEDOR_GERENTE_Edit TO negarzonc;
GRANT SELECT ON VISTA_PROVEEDOR_GERENTE_Edit TO negarzonc;

GRANT SELECT ON VISTA_PROVEEDOR_GERENTE_View TO dabonilla;
GRANT INSERT ON VISTA_PROVEEDOR_GERENTE_Edit TO dabonilla;
GRANT SELECT ON VISTA_PROVEEDOR_GERENTE_Edit TO dabonilla;

GRANT SELECT ON VISTA_PROVEEDOR_GERENTE_View TO dsilvamo;
GRANT INSERT ON VISTA_PROVEEDOR_GERENTE_Edit TO dsilvamo;
GRANT SELECT ON VISTA_PROVEEDOR_GERENTE_Edit TO dsilvamo;



/*==============================================================*/
/* View_Edit: SUCURSALES                                            */
/*==============================================================*/
CREATE view VISTA_SUCURSALES_Edit AS SELECT 
    SUCURSAL_ID,
    CIUDAD_ID,
    DIRECTOR_SUCURSAL_ID,
    SUCURSAL_NOMBRE,
    SUCURSAL_CENTRO_LLAMADAS,
    SUCURSAL_DIRECCION

    
                                    FROM SUCURSALES;

/*==============================================================*/
/* View_View: SUCURSALES                                              */
/*==============================================================*/
CREATE OR replace view VISTA_SUCURSALES_View 
(
   SUCURSAL_ID,
    CIUDAD_ID,
    DIRECTOR_SUCURSAL_ID,
    SUCURSAL_NOMBRE,
    SUCURSAL_CENTRO_LLAMADAS,
    SUCURSAL_DIRECCIO,
   digitador,
   fecha
)
AS SELECT 
   SUCURSAL_ID,
    CIUDAD_ID,
    DIRECTOR_SUCURSAL_ID,
    SUCURSAL_NOMBRE,
    SUCURSAL_CENTRO_LLAMADAS,
    SUCURSAL_DIRECCIO,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM SUCURSALES 
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_SUCURSALES_View TO negarzonc;
GRANT INSERT ON VISTA_SUCURSALES_Edit TO negarzonc;
GRANT SELECT ON VISTA_SUCURSALES_Edit TO negarzonc;

GRANT SELECT ON VISTA_SUCURSALES_View TO dabonilla;
GRANT INSERT ON VISTA_SUCURSALES_Edit TO dabonilla;
GRANT SELECT ON VISTA_SUCURSALES_Edit TO dabonilla;

GRANT SELECT ON VISTA_SUCURSALES_View TO dsilvamo;
GRANT INSERT ON VISTA_SUCURSALES_Edit TO dsilvamo;
GRANT SELECT ON VISTA_SUCURSALES_Edit TO dsilvamo;



/*==============================================================*/
/* View_Edit: VACANTES                                            */
/*==============================================================*/
CREATE view VISTA_VACANTES_Edit AS SELECT 
    VACANTE_ID,
    CARGO_ID,
    VACANTE_NUMERO

    
                                    FROM VACANTES;

/*==============================================================*/
/* View_View: VACANTES                                              */
/*==============================================================*/
CREATE OR replace view VISTA_VACANTES_View 
(
   VACANTE_ID,
    CARGO_ID,
    VACANTE_NUMERO,
   digitador,
   fecha
)
AS SELECT 
   VACANTE_ID,
    CARGO_ID,
    VACANTE_NUMERO,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM VACANTES 
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_VACANTES_View TO negarzonc;
GRANT INSERT ON VISTA_VACANTES_Edit TO negarzonc;
GRANT SELECT ON VISTA_VACANTES_Edit TO negarzonc;

GRANT SELECT ON VISTA_VACANTES_View TO dabonilla;
GRANT INSERT ON VISTA_VACANTES_Edit TO dabonilla;
GRANT SELECT ON VISTA_VACANTES_Edit TO dabonilla;

GRANT SELECT ON VISTA_VACANTES_View TO dsilvamo;
GRANT INSERT ON VISTA_VACANTES_Edit TO dsilvamo;
GRANT SELECT ON VISTA_VACANTES_Edit TO dsilvamo;

/*==============================================================*/
/* Table: VENDEDORES                                            */
/*==============================================================*/
create table VENDEDORES  (
   VENDEDOR_ID          INTEGER                         not null,
   SUCURSAL_ID          INTEGER,
   VENDEDOR_DOCUMENTO   INTEGER                         not null,
   VENDEDOR_NOMBRE      VARCHAR2(100)                   not null,
   VENDEDOR_CELULAR     INTEGER                         not null,
   VENDEDOR_CORREO      VARCHAR2(100)                   not null,
   VENDEDOR_GENERO      VARCHAR2(100),
   VENDEDOR_EDAD        INTEGER                         not null
      constraint CKC_VENDEDOR_EDAD_VENDEDOR check (VENDEDOR_EDAD between 18 and 99),
   VENDEDOR_SEGURIDAD_SOCIAL_BOOL SMALLINT                        not null,
   VENDEDOR_POLIZA_VIGENTE_BOOL SMALLINT                        not null,
   VENDEDOR_SALARIO_FIJO INTEGER                         not null,
   VENDEDOR_CONTRATO_INDEFINIDO_BOOL SMALLINT                        not null,
   VENDEDOR_REINGRESO_BOOL SMALLINT                        not null,
   VENDEDOR_COMISION    INTEGER                         not null,
   constraint PK_VENDEDORES primary key (VENDEDOR_ID)
)

/*==============================================================*/
/* View_Edit: VENDEDORES                                            */
/*==============================================================*/
CREATE view VISTA_VENDEDORES_Edit AS SELECT 
    VENDEDOR_ID,
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
    VENDEDOR_COMISION

    
                                    FROM VENDEDORES;

/*==============================================================*/
/* View_View: VENDEDORES                                              */
/*==============================================================*/
CREATE OR replace view VISTA_VENDEDORES_View 
(
   VENDEDOR_ID,
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
    VENDEDOR_COMISION,
   digitador,
   fecha
)
AS SELECT 
   VENDEDOR_ID,
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
    VENDEDOR_COMISION,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM VENDEDORES 
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_VENDEDORES_View TO negarzonc;
GRANT INSERT ON VISTA_VENDEDORES_Edit TO negarzonc;
GRANT SELECT ON VISTA_VENDEDORES_Edit TO negarzonc;

GRANT SELECT ON VISTA_VENDEDORES_View TO dabonilla;
GRANT INSERT ON VISTA_VENDEDORES_Edit TO dabonilla;
GRANT SELECT ON VISTA_VENDEDORES_Edit TO dabonilla;

GRANT SELECT ON VISTA_VENDEDORES_View TO dsilvamo;
GRANT INSERT ON VISTA_VENDEDORES_Edit TO dsilvamo;
GRANT SELECT ON VISTA_VENDEDORES_Edit TO dsilvamo;