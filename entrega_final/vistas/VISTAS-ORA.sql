/*==============================================================*/
/* VIEW_EDIT: ASISTENCIA_CAPACITACIONES                                             */
/*==============================================================*/
CREATE VIEW VISTA_ASISTENCIA_CAPACITACIONES_EDIT AS SELECT 
    ASISTENCIA_CAPACITACIONES_ID,
    CAPACITACION_ID,
    ASISTENCIA_CAPACITACIONES_SI_N
                                    FROM ASISTENCIA_CAPACITACIONES;

/*==============================================================*/
/* VIEW_VIEW:ASISTENCIA_CAPACITACIONES                                             */
/*==============================================================*/
CREATE OR replace VIEW VISTA_ASISTENCIA_CAPACITACIONES_VIEW 
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
GRANT SELECT ON VISTA_ASISTENCIA_CAPACITACIONES_VIEW TO negarzonc;
GRANT INSERT ON VISTA_ASISTENCIA_CAPACITACIONES_EDIT TO negarzonc;
GRANT SELECT ON VISTA_ASISTENCIA_CAPACITACIONES_EDIT TO negarzonc;

GRANT SELECT ON VISTA_ASISTENCIA_CAPACITACIONES_VIEW TO dabonilla;
GRANT INSERT ON VISTA_ASISTENCIA_CAPACITACIONES_EDIT TO dabonilla;
GRANT SELECT ON VISTA_ASISTENCIA_CAPACITACIONES_EDIT TO dabonilla;

GRANT SELECT ON VISTA_ASISTENCIA_CAPACITACIONES_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_ASISTENCIA_CAPACITACIONES_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_ASISTENCIA_CAPACITACIONES_EDIT TO dsilvamo;

/*==============================================================*/
/* VIEW_EDIT: BODEGAS                                           */
/*==============================================================*/
CREATE VIEW VISTA_BODEGAS_EDIT AS SELECT 
    BODEGA_ID,
    SUCURSAL_ID,
    PRODUCTO_ID,
    BODEGA_CANTIDAD
                                    FROM BODEGAS;

/*==============================================================*/
/* VIEW_VIEW: BODEGAS                                             */
/*==============================================================*/
CREATE OR replace VIEW VISTA_BODEGAS_VIEW 
(
   BODEGA_ID,
   SUCURSAL_ID,
   PRODUCTO_ID,
   BODEGA_CANTIDAD,
   digitador,
   fecha
)
AS SELECT 
   BODEGA_ID,
   SUCURSAL_ID,
   PRODUCTO_ID,
   BODEGA_CANTIDAD,
   digitador,
   to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM BODEGAS
WHERE digitador = USER;

/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_BODEGAS_VIEW TO negarzonc;
GRANT INSERT ON VISTA_BODEGAS_EDIT TO negarzonc;
GRANT SELECT ON VISTA_BODEGAS_EDIT TO negarzonc;

GRANT SELECT ON VISTA_BODEGAS_VIEW TO dabonilla;
GRANT INSERT ON VISTA_BODEGAS_EDIT TO dabonilla;
GRANT SELECT ON VISTA_BODEGAS_EDIT TO dabonilla;

GRANT SELECT ON VISTA_BODEGAS_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_BODEGAS_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_BODEGAS_EDIT TO dsilvamo;

/*==============================================================*/
/* VIEW_EDIT: CANDIDATOS                                           */
/*==============================================================*/
CREATE VIEW VISTA_CANDIDATOS_EDIT AS SELECT 
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
/* VIEW_VIEW: CANDIDATOS                                             */
/*==============================================================*/
CREATE OR replace VIEW VISTA_CANDIDATOS_VIEW 
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
GRANT SELECT ON VISTA_CANDIDATOS_VIEW TO negarzonc;
GRANT INSERT ON VISTA_CANDIDATOS_EDIT TO negarzonc;
GRANT SELECT ON VISTA_CANDIDATOS_EDIT TO negarzonc;

GRANT SELECT ON VISTA_CANDIDATOS_VIEW TO dabonilla;
GRANT INSERT ON VISTA_CANDIDATOS_EDIT TO dabonilla;
GRANT SELECT ON VISTA_CANDIDATOS_EDIT TO dabonilla;

GRANT SELECT ON VISTA_CANDIDATOS_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_CANDIDATOS_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_CANDIDATOS_EDIT TO dsilvamo;


/*==============================================================*/
/* VIEW_EDIT: CAPACITACIONES                                           */
/*==============================================================*/
CREATE VIEW VISTA_CAPACITACIONES_EDIT AS SELECT 
    CAPACITACION_ID,
    EMPLEADO_ID,
    CAPACITACION_NOMBRE_TIPO,
    CAPACITACION_FECHA,
    CAPACITACION_DESCRIPCION
                                    FROM CAPACITACIONES;

/*==============================================================*/
/* VIEW_VIEW: CAPACITACIONES                                            */
/*==============================================================*/
CREATE OR replace VIEW VISTA_CAPACITACIONES_VIEW 
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
GRANT SELECT ON VISTA_CAPACITACIONES_VIEW TO negarzonc;
GRANT INSERT ON VISTA_CAPACITACIONES_EDIT TO negarzonc;
GRANT SELECT ON VISTA_CAPACITACIONES_EDIT TO negarzonc;

GRANT SELECT ON VISTA_CAPACITACIONES_VIEW TO dabonilla;
GRANT INSERT ON VISTA_CAPACITACIONES_EDIT TO dabonilla;
GRANT SELECT ON VISTA_CAPACITACIONES_EDIT TO dabonilla;

GRANT SELECT ON VISTA_CAPACITACIONES_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_CAPACITACIONES_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_CAPACITACIONES_EDIT TO dsilvamo;


/*==============================================================*/
/* VIEW_EDIT: CARGOS                                           */
/*==============================================================*/
CREATE VIEW VISTA_CARGOS_EDIT AS SELECT 
    CARGO_ID,
    DEPARTAMENTO_ID,
    CARGO_NOMBRE,
    CARGO_SALARIO_MAX,
    CARGO_SALARIO_MIN
                                    FROM CARGOS;

/*==============================================================*/
/* VIEW_VIEW: CARGOS                                            */
/*==============================================================*/
CREATE OR replace VIEW VISTA_CARGOS_VIEW 
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
GRANT SELECT ON VISTA_CARGOS_VIEW TO negarzonc;
GRANT INSERT ON VISTA_CARGOS_EDIT TO negarzonc;
GRANT SELECT ON VISTA_CARGOS_EDIT TO negarzonc;

GRANT SELECT ON VISTA_CARGOS_VIEW TO dabonilla;
GRANT INSERT ON VISTA_CARGOS_EDIT TO dabonilla;
GRANT SELECT ON VISTA_CARGOS_EDIT TO dabonilla;

GRANT SELECT ON VISTA_CARGOS_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_CARGOS_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_CARGOS_EDIT TO dsilvamo;


/*==============================================================*/
/* VIEW_EDIT: CIUDADES                                           */
/*==============================================================*/
CREATE VIEW VISTA_CIUDADES_EDIT AS SELECT 
    CIUDAD_ID,
    PAIS_ID,
    CIUDAD_NOMBRE
                                    FROM CIUDADES;

/*==============================================================*/
/* VIEW_VIEW: CIUDADES                                             */
/*==============================================================*/
CREATE OR replace VIEW VISTA_CIUDADES_VIEW 
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
GRANT SELECT ON VISTA_ASISTENCIA_CIUDADES_VIEW TO negarzonc;
GRANT INSERT ON VISTA_ASISTENCIA_CIUDADES_EDIT TO negarzonc;
GRANT SELECT ON VISTA_ASISTENCIA_CIUDADES_EDIT TO negarzonc;

GRANT SELECT ON VISTA_ASISTENCIA_CIUDADES_VIEW TO dabonilla;
GRANT INSERT ON VISTA_ASISTENCIA_CIUDADES_EDIT TO dabonilla;
GRANT SELECT ON VISTA_ASISTENCIA_CIUDADES_EDIT TO dabonilla;

GRANT SELECT ON VISTA_ASISTENCIA_CIUDADES_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_ASISTENCIA_CIUDADES_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_ASISTENCIA_CIUDADES_EDIT TO dsilvamo;


/*==============================================================*/
/* VIEW_EDIT: CLIENTES                                            */
/*==============================================================*/
CREATE VIEW VISTA_CLIENTES_EDIT AS SELECT 
    CLIENTE_ID,
    CLIENTE_NIT
    CLIENTE_NOMBRE,
    CLIENTE_CENTRO_LLAMADAS,
    CLIENTE_DIRECCION,
    CLIENTE_NORMAS_BOOL,
    CLIENTE_CORREO
                                    FROM CLIENTES ;

/*==============================================================*/
/* VIEW_VIEW: CLIENTES                                              */
/*==============================================================*/
CREATE OR replace VIEW VISTA_CLIENTES_VIEW 
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
GRANT SELECT ON VISTA_CLIENTES_VIEW TO negarzonc;
GRANT INSERT ON VISTA_CLIENTES_EDIT TO negarzonc;
GRANT SELECT ON VISTA_CLIENTES_EDIT TO negarzonc;

GRANT SELECT ON VISTA_CLIENTES_VIEW TO dabonilla;
GRANT INSERT ON VISTA_CLIENTES_EDIT TO dabonilla;
GRANT SELECT ON VISTA_CLIENTES_EDIT TO dabonilla;

GRANT SELECT ON VISTA_CLIENTES_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_CLIENTES_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_CLIENTES_EDIT TO dsilvamo;


/*==============================================================*/
/* VIEW_EDIT: CLIENTE_GERENTE                                            */
/*==============================================================*/
CREATE VIEW VISTA_CLIENTE_GERENTE_EDIT AS SELECT 
    CLIENTE_GERENTE_ID,
    CLIENTE_ID,
    CLIENTE_GERENTE_NOMBRE,
    CLIENTE_GERENTE_DOCUMENTO,
    CLIENTE_GERENTE_CELULAR,
    CLIENTE_GERENTE_CORREO
                                    FROM CLIENTE_GERENTE;

/*==============================================================*/
/* VIEW_VIEW: CLIENTE_GERENTE                                              */
/*==============================================================*/
CREATE OR replace VIEW VISTA_CLIENTE_GERENTE_VIEW 
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
GRANT SELECT ON VISTA_CLIENTE_GERENTE_VIEW TO negarzonc;
GRANT INSERT ON VISTA_CLIENTE_GERENTE_EDIT TO negarzonc;
GRANT SELECT ON VISTA_CLIENTE_GERENTE_EDIT TO negarzonc;

GRANT SELECT ON VISTA_CLIENTE_GERENTE_VIEW TO dabonilla;
GRANT INSERT ON VISTA_CLIENTE_GERENTE_EDIT TO dabonilla;
GRANT SELECT ON VISTA_CLIENTE_GERENTE_EDIT TO dabonilla;

GRANT SELECT ON VISTA_CLIENTE_GERENTE_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_CLIENTE_GERENTE_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_CLIENTE_GERENTE_EDIT TO dsilvamo;


/*==============================================================*/
/* VIEW_EDIT: DEPARTAMENTOS                                            */
/*==============================================================*/
CREATE VIEW VISTA_DEPARTAMENTOS_EDIT AS SELECT 
    DEPARTAMENTO_ID,
    SUCURSAL_ID,
    DIRECTOR_DEPARTAMENTO_ID,
    DEPARTAMENTO_NOMBRE
                                    FROM DEPARTAMENTOS;

/*==============================================================*/
/* VIEW_VIEW: DEPARTAMENTOS                                              */
/*==============================================================*/
CREATE OR replace VIEW VISTA_DEPARTAMENTOS_VIEW 
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
GRANT SELECT ON VISTA_DEPARTAMENTOS_VIEW TO negarzonc;
GRANT INSERT ON VISTA_DEPARTAMENTOS_EDIT TO negarzonc;
GRANT SELECT ON VISTA_DEPARTAMENTOS_EDIT TO negarzonc;

GRANT SELECT ON VISTA_DEPARTAMENTOS_VIEW TO dabonilla;
GRANT INSERT ON VISTA_DEPARTAMENTOS_EDIT TO dabonilla;
GRANT SELECT ON VISTA_DEPARTAMENTOS_EDIT TO dabonilla;

GRANT SELECT ON VISTA_DEPARTAMENTOS_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_DEPARTAMENTOS_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_DEPARTAMENTOS_EDIT TO dsilvamo;

/*==============================================================*/
/* VIEW_EDIT: DIRECTOR_DEPARTAMENTO                                            */
/*==============================================================*/
CREATE VIEW VISTA_DIRECTOR_DEPARTAMENTO_EDIT AS SELECT 
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
/* VIEW_VIEW: DIRECTOR_DEPARTAMENTO                                              */
/*==============================================================*/
CREATE OR replace VIEW VISTA_DIRECTOR_DEPARTAMENTO_VIEW 
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
GRANT SELECT ON VISTA_DIRECTOR_DEPARTAMENTO_VIEW TO negarzonc;
GRANT INSERT ON VISTA_DIRECTOR_DEPARTAMENTO_EDIT TO negarzonc;
GRANT SELECT ON VISTA_DIRECTOR_DEPARTAMENTO_EDIT TO negarzonc;

GRANT SELECT ON VISTA_DIRECTOR_DEPARTAMENTO_VIEW TO dabonilla;
GRANT INSERT ON VISTA_DIRECTOR_DEPARTAMENTO_EDIT TO dabonilla;
GRANT SELECT ON VISTA_DIRECTOR_DEPARTAMENTO_EDIT TO dabonilla;

GRANT SELECT ON VISTA_DIRECTOR_DEPARTAMENTO_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_DIRECTOR_DEPARTAMENTO_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_DIRECTOR_DEPARTAMENTO_EDIT TO dsilvamo;



/*==============================================================*/
/* VIEW_EDIT: DIRECTOR_SUCURSAL                                            */
/*==============================================================*/
CREATE VIEW VISTA_DIRECTOR_SUCURSAL_EDIT AS SELECT 
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
/* VIEW_VIEW: DIRECTOR_SUCURSAL                                              */
/*==============================================================*/
CREATE OR replace VIEW VISTA_DIRECTOR_SUCURSAL_VIEW 
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
GRANT SELECT ON VISTA_DIRECTOR_SUCURSAL_VIEW TO negarzonc;
GRANT INSERT ON VISTA_DIRECTOR_SUCURSAL_EDIT TO negarzonc;
GRANT SELECT ON VISTA_DIRECTOR_SUCURSAL_EDIT TO negarzonc;

GRANT SELECT ON VISTA_DIRECTOR_SUCURSAL_VIEW TO dabonilla;
GRANT INSERT ON VISTA_DIRECTOR_SUCURSAL_EDIT TO dabonilla;
GRANT SELECT ON VISTA_DIRECTOR_SUCURSAL_EDIT TO dabonilla;

GRANT SELECT ON VISTA_DIRECTOR_SUCURSAL_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_DIRECTOR_SUCURSAL_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_DIRECTOR_SUCURSAL_EDIT TO dsilvamo;


/*==============================================================*/
/* VIEW_EDIT: EMPLEADOS                                            */
/*==============================================================*/
CREATE VIEW VISTA_EMPLEADOS_EDIT AS SELECT 
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
/* VIEW_VIEW: EMPLEADOS                                              */
/*==============================================================*/
CREATE OR replace VIEW VISTA_EMPLEADOS_VIEW 
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
GRANT SELECT ON VISTA_EMPLEADOS_VIEW TO negarzonc;
GRANT INSERT ON VISTA_EMPLEADOS_EDIT TO negarzonc;
GRANT SELECT ON VISTA_EMPLEADOS_EDIT TO negarzonc;

GRANT SELECT ON VISTA_EMPLEADOS_VIEW TO dabonilla;
GRANT INSERT ON VISTA_EMPLEADOS_EDIT TO dabonilla;
GRANT SELECT ON VISTA_EMPLEADOS_EDIT TO dabonilla;

GRANT SELECT ON VISTA_EMPLEADOS_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_EMPLEADOS_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_EMPLEADOS_EDIT TO dsilvamo;



/*==============================================================*/
/* VIEW_EDIT: EMPRESA                                            */
/*==============================================================*/
CREATE VIEW VISTA_EMPRESA_EDIT AS SELECT 
    EMPRESA_ID,
    EMPRESA_NOMBRE,
    EMPRESA_DIRECCION,
    EMPRESA_CENTRO_LLAMADAS
    
                                    FROM EMPRESA;

/*==============================================================*/
/* VIEW_VIEW: EMPRESA                                              */
/*==============================================================*/
CREATE OR replace VIEW VISTA_EMPRESA_VIEW 
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
GRANT SELECT ON VISTA_EMPRESA_VIEW TO negarzonc;
GRANT INSERT ON VISTA_EMPRESA_EDIT TO negarzonc;
GRANT SELECT ON VISTA_EMPRESA_EDIT TO negarzonc;

GRANT SELECT ON VISTA_EMPRESA_VIEW TO dabonilla;
GRANT INSERT ON VISTA_EMPRESA_EDIT TO dabonilla;
GRANT SELECT ON VISTA_EMPRESA_EDIT TO dabonilla;

GRANT SELECT ON VISTA_EMPRESA_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_EMPRESA_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_EMPRESA_EDIT TO dsilvamo;


/*==============================================================*/
/* VIEW_EDIT: EMPRESA_GERENTE                                            */
/*==============================================================*/
CREATE VIEW VISTA_EMPRESA_GERENTE_EDIT AS SELECT 
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
/* VIEW_VIEW: EMPRESA_GERENTE                                              */
/*==============================================================*/
CREATE OR replace VIEW VISTA_EMPRESA_GERENTE_VIEW 
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
GRANT SELECT ON VISTA_EMPRESA_GERENTE_VIEW TO negarzonc;
GRANT INSERT ON VISTA_EMPRESA_GERENTE_EDIT TO negarzonc;
GRANT SELECT ON VISTA_EMPRESA_GERENTE_EDIT TO negarzonc;

GRANT SELECT ON VISTA_EMPRESA_GERENTE_VIEW TO dabonilla;
GRANT INSERT ON VISTA_EMPRESA_GERENTE_EDIT TO dabonilla;
GRANT SELECT ON VISTA_EMPRESA_GERENTE_EDIT TO dabonilla;

GRANT SELECT ON VISTA_EMPRESA_GERENTE_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_EMPRESA_GERENTE_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_EMPRESA_GERENTE_EDIT TO dsilvamo;


/*==============================================================*/
/* VIEW_EDIT: EMPRESA_SUBGERENTE                                            */
/*==============================================================*/
CREATE VIEW VISTA_EMPRESA_SUBGERENTE_EDIT AS SELECT 
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
/* VIEW_VIEW: EMPRESA_SUBGERENTE                                              */
/*==============================================================*/
CREATE OR replace VIEW VISTA_EMPRESA_SUBGERENTE_VIEW 
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
GRANT SELECT ON VISTA_EMPRESA_SUBGERENTE_VIEW TO negarzonc;
GRANT INSERT ON VISTA_EMPRESA_SUBGERENTE_EDIT TO negarzonc;
GRANT SELECT ON VISTA_EMPRESA_SUBGERENTE_EDIT TO negarzonc;

GRANT SELECT ON VISTA_EMPRESA_SUBGERENTE_VIEW TO dabonilla;
GRANT INSERT ON VISTA_EMPRESA_SUBGERENTE_EDIT TO dabonilla;
GRANT SELECT ON VISTA_EMPRESA_SUBGERENTE_EDIT TO dabonilla;

GRANT SELECT ON VISTA_EMPRESA_SUBGERENTE_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_EMPRESA_SUBGERENTE_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_EMPRESA_SUBGERENTE_EDIT TO dsilvamo;


/*==============================================================*/
/* VIEW_EDIT: HISTORIAL_TRABAJADORES                                            */
/*==============================================================*/
CREATE VIEW VISTA_HISTORIAL_TRABAJADORES_EDIT AS SELECT 
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
/* VIEW_VIEW: HISTORIAL_TRABAJADORES                                              */
/*==============================================================*/
CREATE OR replace VIEW VISTA_HISTORIAL_TRABAJADORES_VIEW 
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
GRANT SELECT ON VISTA_HISTORIAL_TRABAJADORES_VIEW TO negarzonc;
GRANT INSERT ON VISTA_HISTORIAL_TRABAJADORES_EDIT TO negarzonc;
GRANT SELECT ON VISTA_HISTORIAL_TRABAJADORES_EDIT TO negarzonc;

GRANT SELECT ON VISTA_HISTORIAL_TRABAJADORES_VIEW TO dabonilla;
GRANT INSERT ON VISTA_HISTORIAL_TRABAJADORES_EDIT TO dabonilla;
GRANT SELECT ON VISTA_HISTORIAL_TRABAJADORES_EDIT TO dabonilla;

GRANT SELECT ON VISTA_HISTORIAL_TRABAJADORES_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_HISTORIAL_TRABAJADORES_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_HISTORIAL_TRABAJADORES_EDIT TO dsilvamo;



/*==============================================================*/
/* VIEW_EDIT: ORDENES                                            */
/*==============================================================*/
CREATE VIEW VISTA_ORDENES_EDIT AS SELECT 
    ORDEN_ID,
    SUCURSAL_ID,
    VACANTE_ID,
    CLIENTE_ID,
    ORDEN_ESTADO,
    ORDEN_FECHA_ENTREGA

    
                                    FROM ORDENES;

/*==============================================================*/
/* VIEW_VIEW: ORDENES                                              */
/*==============================================================*/
CREATE OR replace VIEW VISTA_ORDENES_VIEW 
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
GRANT SELECT ON VISTA_ORDENES_VIEW TO negarzonc;
GRANT INSERT ON VISTA_ORDENES_EDIT TO negarzonc;
GRANT SELECT ON VISTA_ORDENES_EDIT TO negarzonc;

GRANT SELECT ON VISTA_ORDENES_VIEW TO dabonilla;
GRANT INSERT ON VISTA_ORDENES_EDIT TO dabonilla;
GRANT SELECT ON VISTA_ORDENES_EDIT TO dabonilla;

GRANT SELECT ON VISTA_ORDENES_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_ORDENES_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_ORDENES_EDIT TO dsilvamo;



/*==============================================================*/
/* VIEW_EDIT: ORDENES_ITEMS                                            */
/*==============================================================*/
CREATE VIEW VISTA_ORDENES_ITEMS_EDIT AS SELECT 
    ORDEN_ITEM_ID,
    ORDEN_ID,
    PRODUCTO_ID,
    ORDEN_ITEM_CANTIDAD,
    ORDEN_ITEM_PRECIO_TOTAL,
    ORDEN_ITEM_DESCUENTO_BOOL

    
                                    FROM ORDENES_ITEMS;

/*==============================================================*/
/* VIEW_VIEW: ORDENES_ITEMS                                              */
/*==============================================================*/
CREATE OR replace VIEW VISTA_ORDENES_ITEMS_VIEW 
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
GRANT SELECT ON VISTA_ORDENES_ITEMS_VIEW TO negarzonc;
GRANT INSERT ON VISTA_ORDENES_ITEMS_EDIT TO negarzonc;
GRANT SELECT ON VISTA_ORDENES_ITEMS_EDIT TO negarzonc;

GRANT SELECT ON VISTA_ORDENES_ITEMS_VIEW TO dabonilla;
GRANT INSERT ON VISTA_ORDENES_ITEMS_EDIT TO dabonilla;
GRANT SELECT ON VISTA_ORDENES_ITEMS_EDIT TO dabonilla;

GRANT SELECT ON VISTA_ORDENES_ITEMS_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_ORDENES_ITEMS_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_ORDENES_ITEMS_EDIT TO dsilvamo;


/*==============================================================*/
/* VIEW_EDIT: PAISES                                            */
/*==============================================================*/
CREATE VIEW VISTA_PAISES_EDIT AS SELECT 
    PAIS_ID,
    EMPRESA_ID,
    PAIS_NOMBRE,
    PAIS_PREFIJO

    
                                    FROM PAISES;

/*==============================================================*/
/* VIEW_VIEW: PAISES                                              */
/*==============================================================*/
CREATE OR replace VIEW VISTA_PAISES_VIEW 
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
GRANT SELECT ON VISTA_PAISES_VIEW TO negarzonc;
GRANT INSERT ON VISTA_PAISES_EDIT TO negarzonc;
GRANT SELECT ON VISTA_PAISES_EDIT TO negarzonc;

GRANT SELECT ON VISTA_PAISES_VIEW TO dabonilla;
GRANT INSERT ON VISTA_PAISES_EDIT TO dabonilla;
GRANT SELECT ON VISTA_PAISES_EDIT TO dabonilla;

GRANT SELECT ON VISTA_PAISES_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_PAISES_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_PAISES_EDIT TO dsilvamo;



/*==============================================================*/
/* VIEW_EDIT: PREMIOS                                            */
/*==============================================================*/
CREATE VIEW VISTA_PREMIOS_EDIT AS SELECT 
    PREMIO_ID,
    EMPLEADO_ID,
    VENDEDOR_ID,
    PREMIO_NOMBRE,
    PREMIO_VALOR

    
                                    FROM PREMIOS;

/*==============================================================*/
/* VIEW_VIEW: PREMIOS                                              */
/*==============================================================*/
CREATE OR replace VIEW VISTA_PREMIOS_VIEW 
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
GRANT SELECT ON VISTA_PREMIOS_VIEW TO negarzonc;
GRANT INSERT ON VISTA_PREMIOS_EDIT TO negarzonc;
GRANT SELECT ON VISTA_PREMIOS_EDIT TO negarzonc;

GRANT SELECT ON VISTA_PREMIOS_VIEW TO dabonilla;
GRANT INSERT ON VISTA_PREMIOS_EDIT TO dabonilla;
GRANT SELECT ON VISTA_PREMIOS_EDIT TO dabonilla;

GRANT SELECT ON VISTA_PREMIOS_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_PREMIOS_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_PREMIOS_EDIT TO dsilvamo;



/*==============================================================*/
/* VIEW_EDIT: PRODUCTOS                                            */
/*==============================================================*/
CREATE VIEW VISTA_PRODUCTOS_EDIT AS SELECT 
    PRODUCTO_ID,
    PROVEEDOR_ID,
    PRODUCTO_NOMBRE,
    PRODUCTO_PRECIO_ADQUISICION,
    PRODUCTO_PRECIO_VENTA

    
                                    FROM PRODUCTOS;

/*==============================================================*/
/* VIEW_VIEW: PRODUCTOS                                              */
/*==============================================================*/
CREATE OR replace VIEW VISTA_PRODUCTOS_VIEW 
(
   PRODUCTO_ID,
    PROVEEDOR_ID,
    PRODUCTO_NOMBRE,
    PRODUCTO_PRECIO_ADQUISICION,
    PRODUCTO_PRECIO_VENTA,
   digitador,
   fecha
)
AS SELECT 
   PRODUCTO_ID,
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
GRANT SELECT ON VISTA_PRODUCTOS_VIEW TO negarzonc;
GRANT INSERT ON VISTA_PRODUCTOS_EDIT TO negarzonc;
GRANT SELECT ON VISTA_PRODUCTOS_EDIT TO negarzonc;

GRANT SELECT ON VISTA_PRODUCTOS_VIEW TO dabonilla;
GRANT INSERT ON VISTA_PRODUCTOS_EDIT TO dabonilla;
GRANT SELECT ON VISTA_PRODUCTOS_EDIT TO dabonilla;

GRANT SELECT ON VISTA_PRODUCTOS_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_PRODUCTOS_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_PRODUCTOS_EDIT TO dsilvamo;


/*==============================================================*/
/* VIEW_EDIT: PROVEEDORES                                            */
/*==============================================================*/
CREATE VIEW VISTA_PROVEEDORES_EDIT AS SELECT 
    PROVEEDOR_ID,
    PROVEEDOR_NIT,
    PROVEEDOR_NOMBRE,
    PROVEEDOR_CENTRO_LLAMADAS,
    PROVEEDOR_DIRECCION,
    PROVEEDOR_NORMAS_BOOL,
    PROVEEDOR_CORREO

    
                                    FROM PROVEEDORES;

/*==============================================================*/
/* VIEW_VIEW: PROVEEDORES                                              */
/*==============================================================*/
CREATE OR replace VIEW VISTA_PROVEEDORES_VIEW 
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
GRANT SELECT ON VISTA_PROVEEDORES_VIEW TO negarzonc;
GRANT INSERT ON VISTA_PROVEEDORES_EDIT TO negarzonc;
GRANT SELECT ON VISTA_PROVEEDORES_EDIT TO negarzonc;

GRANT SELECT ON VISTA_PROVEEDORES_VIEW TO dabonilla;
GRANT INSERT ON VISTA_PROVEEDORES_EDIT TO dabonilla;
GRANT SELECT ON VISTA_PROVEEDORES_EDIT TO dabonilla;

GRANT SELECT ON VISTA_PROVEEDORES_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_PROVEEDORES_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_PROVEEDORES_EDIT TO dsilvamo;



/*==============================================================*/
/* VIEW_EDIT: PROVEEDOR_GERENTE                                            */
/*==============================================================*/
CREATE VIEW VISTA_PROVEEDOR_GERENTE_EDIT AS SELECT 
    PROVEEDOR_GERENTE_ID,
    PROVEEDOR_ID,
    PROVEEDOR_GERENTE_NOMBRE,
    PROVEEDOR_GERENTE_DOCUMENTO,
    PROVEEDOR_GERENTE_CELULAR,
    PROVEEDOR_GERENTE_CORREO

    
                                    FROM PROVEEDOR_GERENTE;

/*==============================================================*/
/* VIEW_VIEW: PROVEEDOR_GERENTE                                              */
/*==============================================================*/
CREATE OR replace VIEW VISTA_PROVEEDOR_GERENTE_VIEW 
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
GRANT SELECT ON VISTA_PROVEEDOR_GERENTE_VIEW TO negarzonc;
GRANT INSERT ON VISTA_PROVEEDOR_GERENTE_EDIT TO negarzonc;
GRANT SELECT ON VISTA_PROVEEDOR_GERENTE_EDIT TO negarzonc;

GRANT SELECT ON VISTA_PROVEEDOR_GERENTE_VIEW TO dabonilla;
GRANT INSERT ON VISTA_PROVEEDOR_GERENTE_EDIT TO dabonilla;
GRANT SELECT ON VISTA_PROVEEDOR_GERENTE_EDIT TO dabonilla;

GRANT SELECT ON VISTA_PROVEEDOR_GERENTE_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_PROVEEDOR_GERENTE_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_PROVEEDOR_GERENTE_EDIT TO dsilvamo;



/*==============================================================*/
/* VIEW_EDIT: SUCURSALES                                            */
/*==============================================================*/
CREATE VIEW VISTA_SUCURSALES_EDIT AS SELECT 
    SUCURSAL_ID,
    CIUDAD_ID,
    DIRECTOR_SUCURSAL_ID,
    SUCURSAL_NOMBRE,
    SUCURSAL_CENTRO_LLAMADAS,
    SUCURSAL_DIRECCION

    
                                    FROM SUCURSALES;

/*==============================================================*/
/* VIEW_VIEW: SUCURSALES                                              */
/*==============================================================*/
CREATE OR replace VIEW VISTA_SUCURSALES_VIEW 
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
GRANT SELECT ON VISTA_SUCURSALES_VIEW TO negarzonc;
GRANT INSERT ON VISTA_SUCURSALES_EDIT TO negarzonc;
GRANT SELECT ON VISTA_SUCURSALES_EDIT TO negarzonc;

GRANT SELECT ON VISTA_SUCURSALES_VIEW TO dabonilla;
GRANT INSERT ON VISTA_SUCURSALES_EDIT TO dabonilla;
GRANT SELECT ON VISTA_SUCURSALES_EDIT TO dabonilla;

GRANT SELECT ON VISTA_SUCURSALES_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_SUCURSALES_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_SUCURSALES_EDIT TO dsilvamo;



/*==============================================================*/
/* VIEW_EDIT: VACANTES                                            */
/*==============================================================*/
CREATE VIEW VISTA_VACANTES_EDIT AS SELECT 
    VACANTE_ID,
    CARGO_ID,
    VACANTE_NUMERO

    
                                    FROM VACANTES;

/*==============================================================*/
/* VIEW_VIEW: VACANTES                                              */
/*==============================================================*/
CREATE OR replace VIEW VISTA_VACANTES_VIEW 
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
GRANT SELECT ON VISTA_VACANTES_VIEW TO negarzonc;
GRANT INSERT ON VISTA_VACANTES_EDIT TO negarzonc;
GRANT SELECT ON VISTA_VACANTES_EDIT TO negarzonc;

GRANT SELECT ON VISTA_VACANTES_VIEW TO dabonilla;
GRANT INSERT ON VISTA_VACANTES_EDIT TO dabonilla;
GRANT SELECT ON VISTA_VACANTES_EDIT TO dabonilla;

GRANT SELECT ON VISTA_VACANTES_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_VACANTES_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_VACANTES_EDIT TO dsilvamo;

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
/* VIEW_EDIT: VENDEDORES                                            */
/*==============================================================*/
CREATE VIEW VISTA_VENDEDORES_EDIT AS SELECT 
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
/* VIEW_VIEW: VENDEDORES                                              */
/*==============================================================*/
CREATE OR replace VIEW VISTA_VENDEDORES_VIEW 
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
GRANT SELECT ON VISTA_VENDEDORES_VIEW TO negarzonc;
GRANT INSERT ON VISTA_VENDEDORES_EDIT TO negarzonc;
GRANT SELECT ON VISTA_VENDEDORES_EDIT TO negarzonc;

GRANT SELECT ON VISTA_VENDEDORES_VIEW TO dabonilla;
GRANT INSERT ON VISTA_VENDEDORES_EDIT TO dabonilla;
GRANT SELECT ON VISTA_VENDEDORES_EDIT TO dabonilla;

GRANT SELECT ON VISTA_VENDEDORES_VIEW TO dsilvamo;
GRANT INSERT ON VISTA_VENDEDORES_EDIT TO dsilvamo;
GRANT SELECT ON VISTA_VENDEDORES_EDIT TO dsilvamo;

/*==============================================================*/
/* View: PUBLICA_CLIENTES                                           */
/*==============================================================*/
CREATE OR replace view VISTA_PUBLICA_CLIENTES_View 
(
   SUCURSAL_ID,
   CLIENTE_NOMBRE,
   CLIENTE_CENTRO_LLAMADAS,
   CLIENTE_CORREO
)
AS SELECT 
   SUCURSAL_ID,
   CLIENTE_NOMBRE,
   CLIENTE_CENTRO_LLAMADAS,
   CLIENTE_CORREO
FROM CLIENTES

/*==============================================================*/
/* View: PUBLICA_PROVEEDORES                                           */
/*==============================================================*/
CREATE OR replace view VISTA_PUBLICA_PROVEEDORES_View 
(
   SUCURSAL_ID,
   PROVEEDOR_NOMBRE,
   PROVEEDOR_CENTRO_LLAMADAS,
   PROVEEDOR_CORREO
)
AS SELECT 
   SUCURSAL_ID,
   PROVEEDOR_NOMBRE,
   PROVEEDOR_CENTRO_LLAMADAS,
   PROVEEDOR_CORREO
FROM PROVEEDORES

/*==============================================================*/
/* View: PUBLICA_EMPLEADO                                           */
/*==============================================================*/
CREATE OR replace view VISTA_PUBLICA_EMPLEADO_View 
(
   CARGO_ID,
   EMPLEADO_NOMBRE,
   EMPLEADO_CELULAR,
   EMPLEADO_CORREO,
   EMPLEADO_CARGO
)
AS SELECT 
   CARGO_ID,
   EMPLEADO_NOMBRE,
   EMPLEADO_CELULAR,
   EMPLEADO_CORREO,
   EMPLEADO_CARGO
FROM EMPLEADO

/*==============================================================*/
/* View: PUBLICA_VENDEDORES                                           */
/*==============================================================*/
CREATE OR replace view VISTA_PUBLICA_VENDEDORES_View 
(
   SUCURSAL_ID,
   VENDEDOR_NOMBRE,
   VENDEDOR_CELULAR,
   VENDEDOR_CORREO,
)
AS SELECT 
   SUCURSAL_ID,
   VENDEDOR_NOMBRE,
   VENDEDOR_CELULAR,
   VENDEDOR_CORREO,
FROM VENDEDORES

/*==============================================================*/
/* View: REGISTRO_HISTORICO                                           */
/*==============================================================*/
CREATE OR replace view VISTA_REGISTRO_HISTORICO_View 
(
   REGISTRO_HISTORICO_USUARIO,
   REGISTRO_HISTORICO_FECHA,
   REGISTRO_HISTORICO_MENSAJE,
)
AS SELECT 
   REGISTRO_HISTORICO_USUARIO,
   REGISTRO_HISTORICO_FECHA,
   REGISTRO_HISTORICO_MENSAJE,
FROM REGISTRO_HISTORICO




/*==============================================================*/
/* Permisos                                                     */
/*==============================================================*/
GRANT SELECT ON VISTA_PUBLICA_CLIENTES_View TO PUBLIC;
GRANT SELECT ON VISTA_PUBLICA_PROVEDORES_View TO PUBLIC;
GRANT SELECT ON VISTA_PUBLICA_EMPLEADO_View TO PUBLIC;
GRANT SELECT ON VISTA_PUBLICA_VENDEDORES_View TO PUBLIC;
GRANT SELECT ON VISTA_PUBLICA_REGISTRO_HISTORICO_View TO PUBLIC;


