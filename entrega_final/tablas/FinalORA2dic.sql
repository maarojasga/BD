/*==============================================================*/
/* DBMS name:      ORACLE Version 10g                           */
/* Created on:     3/12/2020 9:16:12 p. m.                      */
/*==============================================================*/



-- Type package declaration
create or replace package PDTypes  
as
    TYPE ref_cursor IS REF CURSOR;
end;

-- Integrity package declaration
create or replace package IntegrityPackage AS
 procedure InitNestLevel;
 function GetNestLevel return number;
 procedure NextNestLevel;
 procedure PreviousNestLevel;
 end IntegrityPackage;
/

-- Integrity package definition
create or replace package body IntegrityPackage AS
 NestLevel number;

-- Procedure to initialize the trigger nest level
 procedure InitNestLevel is
 begin
 NestLevel := 0;
 end;


-- Function to return the trigger nest level
 function GetNestLevel return number is
 begin
 if NestLevel is null then
     NestLevel := 0;
 end if;
 return(NestLevel);
 end;

-- Procedure to increase the trigger nest level
 procedure NextNestLevel is
 begin
 if NestLevel is null then
     NestLevel := 0;
 end if;
 NestLevel := NestLevel + 1;
 end;

-- Procedure to decrease the trigger nest level
 procedure PreviousNestLevel is
 begin
 NestLevel := NestLevel - 1;
 end;

 end IntegrityPackage;
/


drop trigger TIB_ASISTENCIA_CAPACITACIONES
/

drop trigger TIB_BODEGAS
/

drop trigger TIB_CANDIDATOS
/

drop trigger TIB_CAPACITACIONES
/

drop trigger TIB_CARGOS
/

drop trigger TIB_CIUDADES
/

drop trigger TIB_CLIENTES
/

drop trigger TIB_CLIENTE_GERENTE
/

drop trigger TIB_DEPARTAMENTOS
/

drop trigger TIB_DIRECTOR_DEPARTAMENTO
/

drop trigger TIB_DIRECTOR_SUCURSAL
/

drop trigger TIB_EMPLEADOS
/

drop trigger TIB_EMPRESA
/

drop trigger TIB_EMPRESA_GERENTE
/

drop trigger TIB_EMPRESA_SUBGERENTE
/

drop trigger TIB_HISTORIAL_TRABAJADORES
/

drop trigger TIB_ORDENES
/

drop trigger TIB_ORDENES_ITEMS
/

drop trigger TIB_PAISES
/

drop trigger TIB_PREMIOS
/

drop trigger TIB_PRODUCTOS
/

drop trigger TIB_PROVEEDORES
/

drop trigger TIB_PROVEEDOR_GERENTE
/

drop trigger TIB_SUCURSALES
/

drop trigger TIB_VACANTES
/

drop trigger TIB_VENDEDORES
/

alter table ASISTENCIA_CAPACITACIONES
   drop constraint FK_ASISTENC_CONTROL_A_CAPACITA
/

alter table BODEGAS
   drop constraint FK_BODEGAS_TIENEN_SUCURSAL
/

alter table CANDIDATOS
   drop constraint FK_CANDIDAT_TIENE_CAN_VACANTES
/

alter table CAPACITACIONES
   drop constraint FK_CAPACITA_RECIBEN_C_EMPLEADO
/

alter table CARGOS
   drop constraint FK_CARGOS_DIVIDE_EN_DEPARTAM
/

alter table CIUDADES
   drop constraint FK_CIUDADES_CONTIENE__PAISES
/

alter table CLIENTE_GERENTE
   drop constraint FK_CLIENTE__REPRESENT_CLIENTES
/

alter table DEPARTAMENTOS
   drop constraint FK_DEPARTAM_DIRIGE_DE_DIRECTOR
/

alter table DEPARTAMENTOS
   drop constraint FK_DEPARTAM_DIVIDE_EN_SUCURSAL
/

alter table DIRECTOR_DEPARTAMENTO
   drop constraint FK_DIRECTOR_JEFE_DIR__DIRECTOR
/

alter table DIRECTOR_SUCURSAL
   drop constraint FK_DIRECTOR_JEFE_DIRE_EMPRESA_
/

alter table EMPLEADOS
   drop constraint FK_EMPLEADO_OCUPADOS__CARGOS
/

alter table EMPRESA_GERENTE
   drop constraint FK_EMPRESA__DIRIGIDA__EMPRESA
/

alter table EMPRESA_SUBGERENTE
   drop constraint FK_EMPRESA__JEFE_SUBG_EMPRESA_
/

alter table EMPRESA_SUBGERENTE
   drop constraint FK_EMPRESA__REEMPLAZO_EMPRESA
/

alter table ORDENES
   drop constraint FK_ORDENES_GENERA_VENDEDOR
/

alter table ORDENES
   drop constraint FK_ORDENES_LUGAR_VEN_SUCURSAL
/

alter table ORDENES
   drop constraint FK_ORDENES_PIDEN_CLIENTES
/

alter table ORDENES_ITEMS
   drop constraint FK_ORDENES__PASO_ORDE_ORDENES
/

alter table ORDENES_ITEMS
   drop constraint FK_ORDENES__RELACIONA_PRODUCTO
/

alter table PAISES
   drop constraint FK_PAISES_ESTA_PRES_EMPRESA
/

alter table PRODUCTOS
   drop constraint FK_PRODUCTO_ALMACENA_BODEGAS
/

alter table PRODUCTOS
   drop constraint FK_PRODUCTO_PROVEE_PR_PROVEEDO
/

alter table PROVEEDOR_GERENTE
   drop constraint FK_PROVEEDO_REPRESENT_PROVEEDO
/

alter table SUCURSALES
   drop constraint FK_SUCURSAL_CONTIENE__CIUDADES
/

alter table SUCURSALES
   drop constraint FK_SUCURSAL_DIRIGE_SU_DIRECTOR
/

alter table VACANTES
   drop constraint FK_VACANTES_CARGOS_DI_CARGOS
/

alter table VENDEDORES
   drop constraint FK_VENDEDOR_ATENDIDA__SUCURSAL
/

drop index CONTROL_ASISTENCIA_FK
/

drop table ASISTENCIA_CAPACITACIONES cascade constraints
/

drop index TIENEN_FK
/

drop table BODEGAS cascade constraints
/

drop index TIENE_CANDIDATOS_FK
/

drop table CANDIDATOS cascade constraints
/

drop index RECIBEN_CAPACITACIONES_FK
/

drop table CAPACITACIONES cascade constraints
/

drop index DIVIDE_EN_CARGOS_FK
/

drop table CARGOS cascade constraints
/

drop index CONTIENE_CIUDADES_FK
/

drop table CIUDADES cascade constraints
/

drop table CLIENTES cascade constraints
/

drop index REPRESENTA_CLIENTE_FK
/

drop table CLIENTE_GERENTE cascade constraints
/

drop index DIRIGE_DEPARTAMENTO_FK
/

drop index DIVIDE_EN_DEPARTAMENTOS_FK
/

drop table DEPARTAMENTOS cascade constraints
/

drop index JEFE_DIR_DEPARTAMENTO_FK
/

drop table DIRECTOR_DEPARTAMENTO cascade constraints
/

drop index JEFE_DIRECTOR_SUCURSAL_FK
/

drop table DIRECTOR_SUCURSAL cascade constraints
/

drop index OCUPADOS_POR_FK
/

drop table EMPLEADOS cascade constraints
/

drop table EMPRESA cascade constraints
/

drop index DIRIGIDA_POR_FK
/

drop table EMPRESA_GERENTE cascade constraints
/

drop index REEMPLAZO_GERENTE_FK
/

drop index JEFE_SUBGERENTE_FK
/

drop table EMPRESA_SUBGERENTE cascade constraints
/

drop table HISTORIAL_TRABAJADORES cascade constraints
/

drop index PIDEN_FK
/

drop index GENERA_FK
/

drop index LUGAR_VENTA_FK
/

drop table ORDENES cascade constraints
/

drop index RELACIONAN_PRODUCTOS_FK
/

drop index PASO_ORDENES_ITEMS_FK
/

drop table ORDENES_ITEMS cascade constraints
/

drop index ESTA_PRESENTE_FK
/

drop table PAISES cascade constraints
/

drop table PREMIOS cascade constraints
/

drop index PROVEE_PRODUCTOS_FK
/

drop index ALMACENA_FK
/

drop table PRODUCTOS cascade constraints
/

drop table PROVEEDORES cascade constraints
/

drop index REPRESENTA_PROVEEDOR_FK
/

drop table PROVEEDOR_GERENTE cascade constraints
/

drop index DIRIGE_SUCURSAL_FK
/

drop index CONTIENE_SUCURSALES_FK
/

drop table SUCURSALES cascade constraints
/

drop index CARGOS_DISPONIBLES_FK
/

drop table VACANTES cascade constraints
/

drop index ATENDIDA_POR_FK
/

drop table VENDEDORES cascade constraints
/

drop sequence SECUENCIA_ASISTENCIA_CAPACITAC
/

drop sequence SECUENCIA_BODEGAS
/

drop sequence SECUENCIA_CANDIDATOS
/

drop sequence SECUENCIA_CAPACITACION
/

drop sequence SECUENCIA_CARGOS
/

drop sequence SECUENCIA_CIUDADES
/

drop sequence SECUENCIA_CLIENTES
/

drop sequence SECUENCIA_CLIENTE_GERENTE
/

drop sequence SECUENCIA_DEPARTAMENTOS
/

drop sequence SECUENCIA_DIRECTOR_DEPARTAMENT
/

drop sequence SECUENCIA_DIRECTOR_SUCURSAL
/

drop sequence SECUENCIA_EMPLEADOS
/

drop sequence SECUENCIA_EMPRESA
/

drop sequence SECUENCIA_EMPRESA_GERENTE
/

drop sequence SECUENCIA_EMPRESA_SUBGERENTE
/

drop sequence SECUENCIA_HISTORIA_TRABAJADORE
/

drop sequence SECUENCIA_ORDENES
/

drop sequence SECUENCIA_ORDEN_ITEM
/

drop sequence SECUENCIA_PAISES
/

drop sequence SECUENCIA_PREMIOS
/

drop sequence SECUENCIA_PRODUCTOS
/

drop sequence SECUENCIA_PROVEEDORES
/

drop sequence SECUENCIA_PROVEEDOR_GERENTE
/

drop sequence SECUENCIA_SUCURSALES
/

drop sequence SECUENCIA_TODAS
/

drop sequence SECUENCIA_VACANTES
/

drop sequence SECUENCIA_VENDEDORES
/

drop sequence SEQUENCE_7
/
drop table REGISTRO_HISTORICO_USUARIO
/

create sequence SECUENCIA_ASISTENCIA_CAPACITAC
increment by 1
 nomaxvalue
nocycle
order
/

create sequence SECUENCIA_BODEGAS
increment by 1
 nomaxvalue
nocycle
order
/

create sequence SECUENCIA_CANDIDATOS
increment by 1
 nomaxvalue
nocycle
order
/

create sequence SECUENCIA_CAPACITACION
increment by 1
 nomaxvalue
nocycle
order
/

create sequence SECUENCIA_CARGOS
increment by 1
 nomaxvalue
nocycle
order
/

create sequence SECUENCIA_CIUDADES
increment by 1
 nomaxvalue
nocycle
order
/

create sequence SECUENCIA_CLIENTES
increment by 1
 nomaxvalue

nocycle
order
/

create sequence SECUENCIA_CLIENTE_GERENTE
increment by 1
 nomaxvalue

nocycle
order
/

create sequence SECUENCIA_DEPARTAMENTOS
increment by 1
 nomaxvalue
nocycle
noorder
/

create sequence SECUENCIA_DIRECTOR_DEPARTAMENT
increment by 1
 nomaxvalue
nocycle
order
/

create sequence SECUENCIA_DIRECTOR_SUCURSAL
increment by 1
 nomaxvalue
nocycle
order
/

create sequence SECUENCIA_EMPLEADOS
increment by 1
 nomaxvalue
nocycle
order
/

create sequence SECUENCIA_EMPRESA
increment by 1
 nomaxvalue
nocycle
order
/

create sequence SECUENCIA_EMPRESA_GERENTE
increment by 1
 nomaxvalue
nocycle
order
/

create sequence SECUENCIA_EMPRESA_SUBGERENTE
increment by 1
 nomaxvalue
nocycle
order
/

create sequence SECUENCIA_HISTORIA_TRABAJADORE
increment by 1
 nomaxvalue
nocycle
order
/

create sequence SECUENCIA_ORDENES
increment by 1
 nomaxvalue
nocycle
order
/

create sequence SECUENCIA_ORDEN_ITEM
increment by 1
 nomaxvalue

nocycle
order
/

create sequence SECUENCIA_PAISES
increment by 1
 nomaxvalue
nocycle
order
/

create sequence SECUENCIA_PREMIOS
increment by 1
 nomaxvalue
nocycle
order
/

create sequence SECUENCIA_PRODUCTOS
increment by 1
 nomaxvalue
nocycle
order
/

create sequence SECUENCIA_PROVEEDORES
increment by 1
 nomaxvalue

nocycle
order
/

create sequence SECUENCIA_PROVEEDOR_GERENTE
increment by 1
 nomaxvalue

nocycle
order
/

create sequence SECUENCIA_SUCURSALES
increment by 1
 nomaxvalue
nocycle
order
/

create sequence SECUENCIA_TODAS
increment by 1
 nomaxvalue
nocycle
order
/

create sequence SECUENCIA_VACANTES
increment by 1
 nomaxvalue
nocycle
order
/

create sequence SECUENCIA_VENDEDORES
increment by 1
 nomaxvalue
nocycle
order
/

create sequence SEQUENCE_7
/

/*==============================================================*/
/* Table: ASISTENCIA_CAPACITACIONES                             */
/*==============================================================*/
create table ASISTENCIA_CAPACITACIONES  (
   ASISTENCIA_CAPACITACIONES_ID NUMBER GENERATED ALWAYS AS IDENTITY,
   CAPACITACION_ID      INTEGER,
   ASISTENCIA_CAPACITACIONES_SI_N SMALLINT                        not null,
   digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_ASISTENCIA_CAPACITACIONES primary key (ASISTENCIA_CAPACITACIONES_ID)
)
/

/*==============================================================*/
/* Index: CONTROL_ASISTENCIA_FK                                 */
/*==============================================================*/
create index CONTROL_ASISTENCIA_FK on ASISTENCIA_CAPACITACIONES (
   CAPACITACION_ID ASC
)
/

/*==============================================================*/
/* Table: BODEGAS                                               */
/*==============================================================*/
create table BODEGAS  (
   BODEGA_ID            NUMBER GENERATED ALWAYS AS IDENTITY,
   SUCURSAL_ID          INTEGER                         not null,
   PRODUCTO_ID          INTEGER                         not null,
   BODEGA_CANTIDAD      INTEGER                         not null,
   digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_BODEGAS primary key (BODEGA_ID)
)
/

/*==============================================================*/
/* Index: TIENEN_FK                                             */
/*==============================================================*/
create index TIENEN_FK on BODEGAS (
   SUCURSAL_ID ASC
)
/

/*==============================================================*/
/* Index: ALMACENA_FK                                             */
/*==============================================================*/
create index ALMACENA_FK on BODEGAS (
   PRODUCTO_ID ASC
)
/

/*==============================================================*/
/* Table: CANDIDATOS                                            */
/*==============================================================*/
create table CANDIDATOS  (
   CANDIDATO_ID         NUMBER GENERATED ALWAYS AS IDENTITY,
   VACANTE_ID           INTEGER,
   CANDIDATO_NOMBRE     VARCHAR2(100)                   not null,
   CANDIDATO_DOCUMENTO  INTEGER                         not null,
   CANDIDATO_CORREO     VARCHAR2(100)                   not null,
   CANDIDATO_CELULAR    INTEGER                         not null,
   CANDIDATO_EDAD       INTEGER                         not null
      constraint CKC_CANDIDATO_EDAD_CANDIDAT check (CANDIDATO_EDAD between 18 and 99),
   CANDIDATO_GENERO     VARCHAR2(100),
   CANDIDATO_PORCENTAJE_VALORACIO INTEGER                         not null
      constraint CKC_CANDIDATO_PORCENT_CANDIDAT check (CANDIDATO_PORCENTAJE_VALORACIO between 0 and 100),
      digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_CANDIDATOS primary key (CANDIDATO_ID)
)
/

/*==============================================================*/
/* Index: TIENE_CANDIDATOS_FK                                   */
/*==============================================================*/
create index TIENE_CANDIDATOS_FK on CANDIDATOS (
   VACANTE_ID ASC
)
/

/*==============================================================*/
/* Table: CAPACITACIONES                                        */
/*==============================================================*/
create table CAPACITACIONES  (
   CAPACITACION_ID      NUMBER GENERATED ALWAYS AS IDENTITY,
   EMPLEADO_ID          INTEGER,
   CAPACITACION_NOMBRE_TIPO VARCHAR2(100)                   not null,
   CAPACITACION_FECHA   DATE                            not null,
   CAPACITACION_DESCRIPCION VARCHAR2(1000)                  not null,
   digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_CAPACITACIONES primary key (CAPACITACION_ID)
)
/

/*==============================================================*/
/* Index: RECIBEN_CAPACITACIONES_FK                             */
/*==============================================================*/
create index RECIBEN_CAPACITACIONES_FK on CAPACITACIONES (
   EMPLEADO_ID ASC
)
/

/*==============================================================*/
/* Table: CARGOS                                                */
/*==============================================================*/
create table CARGOS  (
   CARGO_ID             NUMBER GENERATED ALWAYS AS IDENTITY,
   DEPARTAMENTO_ID      INTEGER,
   CARGO_NOMBRE         VARCHAR2(100)                   not null,
   CARGO_SALARIO_MAX    INTEGER                         not null,
   CARGO_SALARIO_MIN    INTEGER                         not null,
   CARGO_JEFE_INMEDIATO_ID   INTEGER                    not null,
   digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_CARGOS primary key (CARGO_ID)
)
/

/*==============================================================*/
/* Index: DIVIDE_EN_CARGOS_FK                                   */
/*==============================================================*/
create index DIVIDE_EN_CARGOS_FK on CARGOS (
   DEPARTAMENTO_ID ASC
)
/

/*==============================================================*/
/* Table: CIUDADES                                              */
/*==============================================================*/
create table CIUDADES  (
   CIUDAD_ID            NUMBER GENERATED ALWAYS AS IDENTITY,
   PAIS_ID              INTEGER,
   CIUDAD_NOMBRE        VARCHAR2(100)                   not null,
   digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_CIUDADES primary key (CIUDAD_ID)
)
/

/*==============================================================*/
/* Index: CONTIENE_CIUDADES_FK                                  */
/*==============================================================*/
create index CONTIENE_CIUDADES_FK on CIUDADES (
   PAIS_ID ASC
)
/

/*==============================================================*/
/* Table: CLIENTES                                              */
/*==============================================================*/
create table CLIENTES  (
   CLIENTE_ID           NUMBER GENERATED ALWAYS AS IDENTITY,
   SUCURSAL_ID          INTEGER                          null,
   CLIENTE_NIT          INTEGER                         not null,
   CLIENTE_NOMBRE       VARCHAR2(100)                   not null,
   CLIENTE_CENTRO_LLAMADAS INTEGER                         not null,
   CLIENTE_DIRECCION    VARCHAR2(100)                   not null,
   CLIENTE_NORMAS_BOOL  SMALLINT                        not null,
   CLIENTE_CORREO       VARCHAR2(100)                   not null,
   digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_CLIENTES primary key (CLIENTE_ID)
)
/

/*==============================================================*/
/* Table: CLIENTE_GERENTE                                       */
/*==============================================================*/
create table CLIENTE_GERENTE  (
   CLIENTE_GERENTE_ID   NUMBER GENERATED ALWAYS AS IDENTITY,
   CLIENTE_ID           INTEGER,
   CLIENTE_GERENTE_NOMBRE VARCHAR2(100)                   not null,
   CLIENTE_GERENTE_DOCUMENTO INTEGER                         not null,
   CLIENTE_GERENTE_CELULAR INTEGER                         not null,
   CLIENTE_GERENTE_CORREO VARCHAR2(100)                   not null,
   digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_CLIENTE_GERENTE primary key (CLIENTE_GERENTE_ID)
)
/

/*==============================================================*/
/* Index: REPRESENTA_CLIENTE_FK                                 */
/*==============================================================*/
create index REPRESENTA_CLIENTE_FK on CLIENTE_GERENTE (
   CLIENTE_ID ASC
)
/

/*==============================================================*/
/* Table: DEPARTAMENTOS                                         */
/*==============================================================*/
create table DEPARTAMENTOS  (
   DEPARTAMENTO_ID      NUMBER GENERATED ALWAYS AS IDENTITY,
   SUCURSAL_ID          INTEGER,
   DIRECTOR_DEPARTAMENTO_ID INTEGER,
   DEPARTAMENTO_NOMBRE  VARCHAR2(100)                   not null,
   digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_DEPARTAMENTOS primary key (DEPARTAMENTO_ID)
)
/

/*==============================================================*/
/* Index: DIVIDE_EN_DEPARTAMENTOS_FK                            */
/*==============================================================*/
create index DIVIDE_EN_DEPARTAMENTOS_FK on DEPARTAMENTOS (
   SUCURSAL_ID ASC
)
/

/*==============================================================*/
/* Index: DIRIGE_DEPARTAMENTO_FK                                */
/*==============================================================*/
create index DIRIGE_DEPARTAMENTO_FK on DEPARTAMENTOS (
   DIRECTOR_DEPARTAMENTO_ID ASC
)
/

/*==============================================================*/
/* Table: DIRECTOR_DEPARTAMENTO                                 */
/*==============================================================*/
create table DIRECTOR_DEPARTAMENTO  (
   DIRECTOR_DEPARTAMENTO_ID NUMBER GENERATED ALWAYS AS IDENTITY,
   DIRECTOR_SUCURSAL_ID INTEGER,
   DIRECTOR_DEPARTAMENTO_NOMBRE VARCHAR2(100)                   not null,
   DIRECTOR_DEPARTAMENTO_DOCUMENT INTEGER                         not null,
   DIRECTOR_DEPARTAMENTO_CELULAR INTEGER                         not null,
   DIRECTOR_DEPARTAMENTO_CORREO VARCHAR2(100)                   not null,
   DIRECTOR_DEPARTAMENTO_GENERO VARCHAR2(100),
   DIRECTOR_DEPARTAMENTO_EDAD INTEGER                         not null
      constraint CKC_DIRECTOR_DEPARTAM_DIRECTO2 check (DIRECTOR_DEPARTAMENTO_EDAD between 18 and 99),
   DIRECTOR_DEPARTAMENTO_SEGURIDAD_SOCIAL_BOOL SMALLINT                        not null,
   DIRECTOR_DEPARTAMENTO_POLIZA_VIGENTE_BOOL SMALLINT                        not null,
   DIRECTOR_DEPARTAMENTO_SALARIO_FIJO INTEGER                         not null
      constraint CKC_DIRECTOR_DEPARTAM_DIRECTOR check (DIRECTOR_DEPARTAMENTO_SALARIO_FIJO between 3500000 and 3999999),
   DIRECTOR_DEPARTAMENTO_CONTRATO_INDEFINIDO_BOOL SMALLINT                        not null,
   DIRECTOR_DEPARTAMENTO_REINGRESO_BOOL SMALLINT                        not null,
   digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_DIRECTOR_DEPARTAMENTO primary key (DIRECTOR_DEPARTAMENTO_ID)
)
/

/*==============================================================*/
/* Index: JEFE_DIR_DEPARTAMENTO_FK                              */
/*==============================================================*/
create index JEFE_DIR_DEPARTAMENTO_FK on DIRECTOR_DEPARTAMENTO (
   DIRECTOR_SUCURSAL_ID ASC
)
/

/*==============================================================*/
/* Table: DIRECTOR_SUCURSAL                                     */
/*==============================================================*/
create table DIRECTOR_SUCURSAL  (
   DIRECTOR_SUCURSAL_ID NUMBER GENERATED ALWAYS AS IDENTITY,
   EMPRESA_SUBGERENTE_ID INTEGER,
   DIRECTOR_SUCURSAL_NOMBRE VARCHAR2(100)                   not null,
   DIRECTOR_SUCURSAL_DOCUMENTO INTEGER                         not null,
   DIRECTOR_SUCURSAL_CELULAR INTEGER                         not null,
   DIRECTOR_SUCURSAL_CORREO VARCHAR2(100)                   not null,
   DIRECTOR_SUCURSAL_GENERO VARCHAR2(100),
   DIRECTOR_SUCURSAL_EDAD INTEGER                         not null
      constraint CKC_DIRECTOR_SUCURSAL_DIRECTO2 check (DIRECTOR_SUCURSAL_EDAD between 18 and 99),
   DIRECTOR_SUCURSAL_SEGURIDAD_SOCIAL_BOOL SMALLINT                        not null,
   DIRECTOR_SUCURSAL_POLIZA_VIGENTE_BOOL SMALLINT                        not null,
   DIRECTOR_SUCURSAL_SALARIO_FIJO INTEGER                         not null
      constraint CKC_DIRECTOR_SUCURSAL_DIRECTOR check (DIRECTOR_SUCURSAL_SALARIO_FIJO between 4000000 and 4999999),
   DIRECTOR_SUCURSAL_CONTRATO_INDEFINIDO_BOOL SMALLINT                        not null,
   DIRECTOR_SUCURSAL_REINGRESO_BOOL SMALLINT                        not null,
   digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_DIRECTOR_SUCURSAL primary key (DIRECTOR_SUCURSAL_ID)
)
/

/*==============================================================*/
/* Index: JEFE_DIRECTOR_SUCURSAL_FK                             */
/*==============================================================*/
create index JEFE_DIRECTOR_SUCURSAL_FK on DIRECTOR_SUCURSAL (
   EMPRESA_SUBGERENTE_ID ASC
)
/

/*==============================================================*/
/* Table: EMPLEADOS                                             */
/*==============================================================*/
create table EMPLEADOS  (
   EMPLEADO_ID          NUMBER GENERATED ALWAYS AS IDENTITY,
   CARGO_ID             INTEGER,
   EMPLEADO_DOCUMENTO   INTEGER                         not null,
   EMPLEADO_NOMBRE      VARCHAR2(100)                   not null,
   EMPLEADO_CELULAR     INTEGER                         not null,
   EMPLEADO_CORREO      INTEGER                         not null,
   EMPLEADO_GENERO      VARCHAR2(100),
   EMPLEADO_EDAD        INTEGER                         not null
      constraint CKC_EMPLEADO_EDAD_EMPLEADO check (EMPLEADO_EDAD between 18 and 99),
   EMPLEADO_SEGURIDAD_SOCIAL_BOOL SMALLINT                        not null,
   EMPLEADO_POLIZA_VIGENTE_BOOL SMALLINT                        not null,
   EMPLEADO_CARGO       INTEGER                         not null,
   EMPLEADO_SALARIO_FIJO INTEGER                         not null,
   EMPLEADO_CONTRATO_INDEFINIDO_BOOL SMALLINT                        not null,
   EMPLEADO_DEPARTAMENTO_ID     INTEGER,
   EMPLEADO_REINGRESO_BOOL SMALLINT                        not null,
   digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_EMPLEADOS primary key (EMPLEADO_ID)
)
/

/*==============================================================*/
/* Index: OCUPADOS_POR_FK                                       */
/*==============================================================*/
create index OCUPADOS_POR_FK on EMPLEADOS (
   CARGO_ID ASC
)
/

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA  (
   EMPRESA_ID           NUMBER GENERATED ALWAYS AS IDENTITY,
   EMPRESA_NOMBRE       VARCHAR2(100)                   not null,
   EMPRESA_DIRECCION    VARCHAR2(100)                   not null,
   EMPRESA_CENTRO_LLAMADAS INTEGER                         not null,
   digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_EMPRESA primary key (EMPRESA_ID)
)
/

/*==============================================================*/
/* Table: EMPRESA_GERENTE                                       */
/*==============================================================*/
create table EMPRESA_GERENTE  (
   EMPRESA_GERENTE_ID   NUMBER GENERATED ALWAYS AS IDENTITY,
   EMPRESA_ID           INTEGER,
   EMPRESA_GERENTE_NOMBRE VARCHAR2(100)                   not null,
   EMPRESA_GERENTE_DOCUMENTO INTEGER                         not null,
   EMPRESA_GERENTE_CELULAR INTEGER                         not null,
   EMPRESA_GERENTE_CORREO VARCHAR2(100)                   not null,
   EMPRESA_GERENTE_EDAD INTEGER                         not null
      constraint CKC_EMPRESA_GERENTE_E_EMPRESA_ check (EMPRESA_GERENTE_EDAD between 18 and 99),
   EMPRESA_GERENTE_GENERO VARCHAR2(100),
   EMPRESA_GERENTE_SEGURIDAD_SOCIAL_BOOL SMALLINT                        not null,
   EMPRESA_GERENTE_POLIZA_VIGENTE_BOOL SMALLINT                        not null,
   EMPRESA_GERENTE_CONTRATO_INDEFINIDO_BOOL SMALLINT                        not null,
   EMPRESA_GERENTE_SALARIO_FIJO INTEGER                         not null
      constraint CKC_EMPRESA_GERENTE_S_EMPRESA_ check (EMPRESA_GERENTE_SALARIO_FIJO between 6000000 and 8000000),
   EMPRESA_GERENTE_REINGRESO_BOOL SMALLINT                        not null,
   digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_EMPRESA_GERENTE primary key (EMPRESA_GERENTE_ID)
)
/

/*==============================================================*/
/* Index: DIRIGIDA_POR_FK                                       */
/*==============================================================*/
create index DIRIGIDA_POR_FK on EMPRESA_GERENTE (
   EMPRESA_ID ASC
)
/

/*==============================================================*/
/* Table: EMPRESA_SUBGERENTE                                    */
/*==============================================================*/
create table EMPRESA_SUBGERENTE  (
   EMPRESA_SUBGERENTE_ID NUMBER GENERATED ALWAYS AS IDENTITY,
   EMPRESA_GERENTE_ID   INTEGER,
   EMPRESA_ID           INTEGER,
   EMPRESA_SUBGERENTE_NOMBRE VARCHAR2(100)                   not null,
   EMPRESA_SUBGERENTE_DOCUMENTO INTEGER                         not null,
   EMPRESA_SUBGERENTE_CELULAR INTEGER                         not null,
   EMPRESA_SUBGERENTE_CORREO VARCHAR2(100)                   not null,
   EMPRESA_SUBGERENTE_EDAD INTEGER                         not null
      constraint CKC_EMPRESA_SUBGERENT_EMPRESA2 check (EMPRESA_SUBGERENTE_EDAD between 18 and 99),
   EMPRESA_SUBGERENTE_GENERO VARCHAR2(100),
   EMPRESA_SUBGERENTE_SEGURIDAD_SOCIAL_BOOL SMALLINT                        not null,
   EMPRESA_SUBGERENTE_POLIZA_VIGENTE_BOOL SMALLINT                        not null,
   EMPRESA_SUBGERENTE_CONTRATO_INDEFINIDO_BOOL SMALLINT                        not null,
   EMPRESA_SUBGERENTE_SALARIO_FIJO INTEGER                         not null
      constraint CKC_EMPRESA_SUBGERENT_EMPRESA_ check (EMPRESA_SUBGERENTE_SALARIO_FIJO between 5000000 and 5999999),
   EMPRESA_SUBGERENTE_REINGRESO_BOOL SMALLINT                        not null,
   digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_EMPRESA_SUBGERENTE primary key (EMPRESA_SUBGERENTE_ID)
)
/

/*==============================================================*/
/* Index: JEFE_SUBGERENTE_FK                                    */
/*==============================================================*/
create index JEFE_SUBGERENTE_FK on EMPRESA_SUBGERENTE (
   EMPRESA_GERENTE_ID ASC
)
/

/*==============================================================*/
/* Index: REEMPLAZO_GERENTE_FK                                  */
/*==============================================================*/
create index REEMPLAZO_GERENTE_FK on EMPRESA_SUBGERENTE (
   EMPRESA_ID ASC
)
/

/*==============================================================*/
/* Table: HISTORIAL_TRABAJADORES                                */
/*==============================================================*/
create table HISTORIAL_TRABAJADORES  (
   HISTORIA_TRABAJADORES_ID NUMBER GENERATED ALWAYS AS IDENTITY,
   HISTORIA_TRABAJADORES_FECHA_INGRESO DATE                            not null,
   HISTORIA_TRABAJADORES_FECHA_RETIRO DATE                            not null,
   HISTORIA_TRABAJADORES_ID_EMPLEADO INTEGER                         not null,
   HISTORIA_TRABAJADORES_ID_EMPLEADO_VENDEDOR INTEGER                         not null,
   HISTORIA_TRABAJADORES_DOCUMENTO INTEGER                         not null,
   HISTORIA_TRABAJADORES_NOMBRE VARCHAR2(100)                   not null,
   HISTORIA_TRABAJADORES_CARGO VARCHAR2(100)                   not null,
   HISTORIA_TRABAJADORES_FECHA_CAMBIO_CARGO DATE                            not null,
   HISTORIA_TRABAJADORES_FECHA_REINGRESO DATE                            not null,
   HISTORIA_TRABAJADORES_CORREO VARCHAR2(100)                   not null,
   HISTORIA_TRABAJADORES_CELULAR INTEGER                         not null,
   digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_HISTORIAL_TRABAJADORES primary key (HISTORIA_TRABAJADORES_ID)
)
/

/*==============================================================*/
/* Table: ORDENES                                               */
/*==============================================================*/
create table ORDENES  (
   ORDEN_ID             NUMBER GENERATED ALWAYS AS IDENTITY,
   SUCURSAL_ID          INTEGER                         not null,
   VENDEDOR_ID          INTEGER                         not null,
   CLIENTE_ID           INTEGER,
   ORDEN_ESTADO         INTEGER                         not null
      constraint CKC_ORDEN_ESTADO_ORDENES check (ORDEN_ESTADO between 1 and 4),
   ORDEN_FECHA_SOLICITUD DATE default sysdate          not null,        
   ORDEN_FECHA_ENTREGA  DATE                            not null,
   digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_ORDENES primary key (ORDEN_ID)
)
/

/*==============================================================*/
/* Index: LUGAR_VENTA_FK                                        */
/*==============================================================*/
create index LUGAR_VENTA_FK on ORDENES (
   SUCURSAL_ID ASC
)
/

/*==============================================================*/
/* Index: GENERA_FK                                             */
/*==============================================================*/
create index GENERA_FK on ORDENES (
   VENDEDOR_ID ASC
)
/

/*==============================================================*/
/* Index: PIDEN_FK                                              */
/*==============================================================*/
create index PIDEN_FK on ORDENES (
   CLIENTE_ID ASC
)
/

/*==============================================================*/
/* Table: ORDENES_ITEMS                                         */
/*==============================================================*/
create table ORDENES_ITEMS  (
   ORDEN_ITEM_ID        NUMBER GENERATED ALWAYS AS IDENTITY,
   ORDEN_ID             INTEGER,
   PRODUCTO_ID          INTEGER,
   ORDEN_ITEM_CANTIDAD  INTEGER                         not null,
   ORDEN_ITEM_PRECIO_TOTAL INTEGER                         not null,
   ORDEN_ITEM_DESCUENTO_BOOL SMALLINT                        not null,
   digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_ORDENES_ITEMS primary key (ORDEN_ITEM_ID)
)
/

/*==============================================================*/
/* Index: PASO_ORDENES_ITEMS_FK                                 */
/*==============================================================*/
create index PASO_ORDENES_ITEMS_FK on ORDENES_ITEMS (
   ORDEN_ID ASC
)
/

/*==============================================================*/
/* Index: RELACIONAN_PRODUCTOS_FK                               */
/*==============================================================*/
create index RELACIONAN_PRODUCTOS_FK on ORDENES_ITEMS (
   PRODUCTO_ID ASC
)
/

/*==============================================================*/
/* Table: PAISES                                                */
/*==============================================================*/
create table PAISES  (
   PAIS_ID              NUMBER GENERATED ALWAYS AS IDENTITY,
   EMPRESA_ID           INTEGER,
   PAIS_NOMBRE          VARCHAR2(100)                   not null,
   PAIS_PREFIJO         INTEGER                         not null,
   digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_PAISES primary key (PAIS_ID)
)
/

/*==============================================================*/
/* Index: ESTA_PRESENTE_FK                                      */
/*==============================================================*/
create index ESTA_PRESENTE_FK on PAISES (
   EMPRESA_ID ASC
)
/

/*==============================================================*/
/* Table: PREMIOS                                               */
/*==============================================================*/
create table PREMIOS  (
   PREMIO_ID            NUMBER GENERATED ALWAYS AS IDENTITY,
   EMPLEADO_ID          INTEGER                         not null,
   VENDEDOR_ID          INTEGER                         not null,   
   PREMIO_NOMBRE        VARCHAR2(100)                   not null,
   PREMIO_VALOR         INTEGER                         not null,
   digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_PREMIOS primary key (PREMIO_ID)
)
/

/*==============================================================*/
/* Table: PRODUCTOS                                             */
/*==============================================================*/
create table PRODUCTOS  (
   PRODUCTO_ID          NUMBER GENERATED ALWAYS AS IDENTITY, 
   PROVEEDOR_ID         INTEGER,
   PRODUCTO_NOMBRE      VARCHAR2(100)                   not null,
   PRODUCTO_PRECIO_ADQUISICION INTEGER                         not null,
   PRODUCTO_PRECIO_VENTA INTEGER                         not null,
   digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_PRODUCTOS primary key (PRODUCTO_ID)
)
/

/*==============================================================*/
/* Index: ALMACENA_FK                                           */
/*==============================================================*/
create index PROVEE_PRODUCTOS_FK on PRODUCTOS (
   PROVEEDOR_ID ASC
)
/

/*==============================================================*/
/* Index: PROVEE_PRODUCTOS_FK                                   */
/*==============================================================*/
create index PROVEE_PRODUCTOS_FK on PRODUCTOS (
   PROVEEDOR_ID ASC
)
/

/*==============================================================*/
/* Table: PROVEEDORES                                           */
/*==============================================================*/
create table PROVEEDORES  (
   PROVEEDOR_ID         NUMBER GENERATED ALWAYS AS IDENTITY,
    SUCURSAL_ID         INTEGER                                null,
   PROVEEDOR_NIT        INTEGER                         not null,
   PROVEEDOR_NOMBRE     VARCHAR2(100)                   not null,
   PROVEEDOR_CENTRO_LLAMADAS INTEGER                         not null,
   PROVEEDOR_DIRECCION  VARCHAR2(100)                   not null,
   PROVEEDOR_NORMAS_BOOL SMALLINT                        not null,
   PROVEEDOR_CORREO     VARCHAR2(100)                   not null,
   digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_PROVEEDORES primary key (PROVEEDOR_ID)
)
/

/*==============================================================*/
/* Table: PROVEEDOR_GERENTE                                     */
/*==============================================================*/
create table PROVEEDOR_GERENTE  (
   PROVEEDOR_GERENTE_ID NUMBER GENERATED ALWAYS AS IDENTITY,
   PROVEEDOR_ID         INTEGER,
   PROVEEDOR_GERENTE_NOMBRE VARCHAR2(100)                   not null,
   PROVEEDOR_GERENTE_DOCUMENTO INTEGER                         not null,
   PROVEEDOR_GERENTE_CELULAR INTEGER                         not null,
   PROVEEDOR_GERENTE_CORREO VARCHAR2(100)                   not null,
   digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_PROVEEDOR_GERENTE primary key (PROVEEDOR_GERENTE_ID)
)
/

/*==============================================================*/
/* Index: REPRESENTA_PROVEEDOR_FK                               */
/*==============================================================*/
create index REPRESENTA_PROVEEDOR_FK on PROVEEDOR_GERENTE (
   PROVEEDOR_ID ASC
)
/

/*==============================================================*/
/* Table: SUCURSALES                                            */
/*==============================================================*/
create table SUCURSALES  (
   SUCURSAL_ID          NUMBER GENERATED ALWAYS AS IDENTITY,
   CIUDAD_ID            INTEGER,
   DIRECTOR_SUCURSAL_ID INTEGER,
   SUCURSAL_NOMBRE      VARCHAR2(100)                   not null,
   SUCURSAL_CENTRO_LLAMADAS INTEGER                         not null,
   SUCURSAL_DIRECCION   VARCHAR2(100)                   not null,
   digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_SUCURSALES primary key (SUCURSAL_ID)
)
/

/*==============================================================*/
/* Index: CONTIENE_SUCURSALES_FK                                */
/*==============================================================*/
create index CONTIENE_SUCURSALES_FK on SUCURSALES (
   CIUDAD_ID ASC
)
/

/*==============================================================*/
/* Index: DIRIGE_SUCURSAL_FK                                    */
/*==============================================================*/
create index DIRIGE_SUCURSAL_FK on SUCURSALES (
   DIRECTOR_SUCURSAL_ID ASC
)
/

/*==============================================================*/
/* Table: VACANTES                                              */
/*==============================================================*/
create table VACANTES  (
   VACANTE_ID           NUMBER GENERATED ALWAYS AS IDENTITY,
   CARGO_ID             INTEGER,
   VACANTE_NUMERO       INTEGER                         not null,
   digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_VACANTES primary key (VACANTE_ID)
)
/

/*==============================================================*/
/* Index: CARGOS_DISPONIBLES_FK                                 */
/*==============================================================*/
create index CARGOS_DISPONIBLES_FK on VACANTES (
   CARGO_ID ASC
)
/

/*==============================================================*/
/* Table: VENDEDORES                                            */
/*==============================================================*/
create table VENDEDORES  (
   VENDEDOR_ID          NUMBER GENERATED ALWAYS AS IDENTITY,
   SUCURSAL_ID          INTEGER                             null,
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
   digitador VARCHAR(15) default USER                    not null,
   fecha DATE default sysdate                            not null,
   constraint PK_VENDEDORES primary key (VENDEDOR_ID)
)
/

/*==============================================================*/
/* Index: ATENDIDA_POR_FK                                       */
/*==============================================================*/
create index ATENDIDA_POR_FK on VENDEDORES (
   SUCURSAL_ID ASC
)
/


/*==============================================================*/
/* Table: REGISTRO_HISTORICO                                    */
/*==============================================================*/
create table REGISTRO_HISTORICO_USUARIO(
   REGISTRO_HISTORICO_USUARIO VARCHAR(15) default USER   not null,
   REGISTRO_HISTORICO_FECHA  DATE default sysdate not null,
   REGISTRO_HISTORICO_MENSAJE VARCHAR(100) NOT NULL
)

/

alter table ASISTENCIA_CAPACITACIONES
   add constraint FK_ASISTENC_CONTROL_A_CAPACITA foreign key (CAPACITACION_ID)
      references CAPACITACIONES (CAPACITACION_ID)
/

alter table BODEGAS
   add constraint FK_BODEGAS_TIENEN_SUCURSAL foreign key (SUCURSAL_ID)
      references SUCURSALES (SUCURSAL_ID)
/

alter table CANDIDATOS
   add constraint FK_CANDIDAT_TIENE_CAN_VACANTES foreign key (VACANTE_ID)
      references VACANTES (VACANTE_ID)
/

alter table CAPACITACIONES
   add constraint FK_CAPACITA_RECIBEN_C_EMPLEADO foreign key (EMPLEADO_ID)
      references EMPLEADOS (EMPLEADO_ID)
/

alter table CARGOS
   add constraint FK_CARGOS_DIVIDE_EN_DEPARTAM foreign key (DEPARTAMENTO_ID)
      references DEPARTAMENTOS (DEPARTAMENTO_ID)
/

alter table CIUDADES
   add constraint FK_CIUDADES_CONTIENE__PAISES foreign key (PAIS_ID)
      references PAISES (PAIS_ID)
/

alter table CLIENTE_GERENTE
   add constraint FK_CLIENTE__REPRESENT_CLIENTES foreign key (CLIENTE_ID)
      references CLIENTES (CLIENTE_ID)
/

alter table DEPARTAMENTOS
   add constraint FK_DEPARTAM_DIRIGE_DE_DIRECTOR foreign key (DIRECTOR_DEPARTAMENTO_ID)
      references DIRECTOR_DEPARTAMENTO (DIRECTOR_DEPARTAMENTO_ID)
/

alter table DEPARTAMENTOS
   add constraint FK_DEPARTAM_DIVIDE_EN_SUCURSAL foreign key (SUCURSAL_ID)
      references SUCURSALES (SUCURSAL_ID)
/

alter table DIRECTOR_DEPARTAMENTO
   add constraint FK_DIRECTOR_JEFE_DIR__DIRECTOR foreign key (DIRECTOR_SUCURSAL_ID)
      references DIRECTOR_SUCURSAL (DIRECTOR_SUCURSAL_ID)
/

alter table DIRECTOR_SUCURSAL
   add constraint FK_DIRECTOR_JEFE_DIRE_EMPRESA_ foreign key (EMPRESA_SUBGERENTE_ID)
      references EMPRESA_SUBGERENTE (EMPRESA_SUBGERENTE_ID)
/

alter table EMPLEADOS
   add constraint FK_EMPLEADO_OCUPADOS__CARGOS foreign key (CARGO_ID)
      references CARGOS (CARGO_ID)
/

alter table EMPRESA_GERENTE
   add constraint FK_EMPRESA__DIRIGIDA__EMPRESA foreign key (EMPRESA_ID)
      references EMPRESA (EMPRESA_ID)
/

alter table EMPRESA_SUBGERENTE
   add constraint FK_EMPRESA__JEFE_SUBG_EMPRESA_ foreign key (EMPRESA_GERENTE_ID)
      references EMPRESA_GERENTE (EMPRESA_GERENTE_ID)
/

alter table EMPRESA_SUBGERENTE
   add constraint FK_EMPRESA__REEMPLAZO_EMPRESA foreign key (EMPRESA_ID)
      references EMPRESA (EMPRESA_ID)
/

alter table ORDENES
   add constraint FK_ORDENES_GENERA_VENDEDOR foreign key (VENDEDOR_ID)
      references VENDEDORES (VENDEDOR_ID)
/

alter table ORDENES
   add constraint FK_ORDENES_LUGAR_VEN_SUCURSAL foreign key (SUCURSAL_ID)
      references SUCURSALES (SUCURSAL_ID)
/

alter table ORDENES
   add constraint FK_ORDENES_PIDEN_CLIENTES foreign key (CLIENTE_ID)
      references CLIENTES (CLIENTE_ID)
/

alter table ORDENES_ITEMS
   add constraint FK_ORDENES__PASO_ORDE_ORDENES foreign key (ORDEN_ID)
      references ORDENES (ORDEN_ID)
/

alter table ORDENES_ITEMS
   add constraint FK_ORDENES__RELACIONA_PRODUCTO foreign key (PRODUCTO_ID)
      references PRODUCTOS (PRODUCTO_ID)
/

alter table PAISES
   add constraint FK_PAISES_ESTA_PRES_EMPRESA foreign key (EMPRESA_ID)
      references EMPRESA (EMPRESA_ID)
/

alter table PRODUCTOS
   add constraint FK_PRODUCTO_ALMACENA_BODEGAS foreign key (BODEGA_ID)
      references BODEGAS (BODEGA_ID)
/

alter table PRODUCTOS
   add constraint FK_PRODUCTO_PROVEE_PR_PROVEEDO foreign key (PROVEEDOR_ID)
      references PROVEEDORES (PROVEEDOR_ID)
/

alter table PROVEEDOR_GERENTE
   add constraint FK_PROVEEDO_REPRESENT_PROVEEDO foreign key (PROVEEDOR_ID)
      references PROVEEDORES (PROVEEDOR_ID)
/

alter table SUCURSALES
   add constraint FK_SUCURSAL_CONTIENE__CIUDADES foreign key (CIUDAD_ID)
      references CIUDADES (CIUDAD_ID)
/

alter table SUCURSALES
   add constraint FK_SUCURSAL_DIRIGE_SU_DIRECTOR foreign key (DIRECTOR_SUCURSAL_ID)
      references DIRECTOR_SUCURSAL (DIRECTOR_SUCURSAL_ID)
/

alter table VACANTES
   add constraint FK_VACANTES_CARGOS_DI_CARGOS foreign key (CARGO_ID)
      references CARGOS (CARGO_ID)
/

alter table VENDEDORES
   add constraint FK_VENDEDOR_ATENDIDA__SUCURSAL foreign key (SUCURSAL_ID)
      references SUCURSALES (SUCURSAL_ID)
/


create trigger TIB_ASISTENCIA_CAPACITACIONES before insert
on ASISTENCIA_CAPACITACIONES for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "ASISTENCIA_CAPACITACIONES_ID" uses sequence SECUENCIA_ASISTENCIA_CAPACITAC
    select SECUENCIA_ASISTENCIA_CAPACITAC.NEXTVAL INTO :new.ASISTENCIA_CAPACITACIONES_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_BODEGAS before insert
on BODEGAS for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "BODEGA_ID" uses sequence SECUENCIA_BODEGAS
    select SECUENCIA_BODEGAS.NEXTVAL INTO :new.BODEGA_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_CANDIDATOS before insert
on CANDIDATOS for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "CANDIDATO_ID" uses sequence SECUENCIA_CANDIDATOS
    select SECUENCIA_CANDIDATOS.NEXTVAL INTO :new.CANDIDATO_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_CAPACITACIONES before insert
on CAPACITACIONES for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "CAPACITACION_ID" uses sequence SECUENCIA_CAPACITACION
    select SECUENCIA_CAPACITACION.NEXTVAL INTO :new.CAPACITACION_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_CARGOS before insert
on CARGOS for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "CARGO_ID" uses sequence SECUENCIA_CARGOS
    select SECUENCIA_CARGOS.NEXTVAL INTO :new.CARGO_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_CIUDADES before insert
on CIUDADES for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "CIUDAD_ID" uses sequence SECUENCIA_CIUDADES
    select SECUENCIA_CIUDADES.NEXTVAL INTO :new.CIUDAD_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_CLIENTES before insert
on CLIENTES for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "CLIENTE_ID" uses sequence SECUENCIA_CLIENTES
    select SECUENCIA_CLIENTES.NEXTVAL INTO :new.CLIENTE_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_CLIENTE_GERENTE before insert
on CLIENTE_GERENTE for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "CLIENTE_GERENTE_ID" uses sequence SECUENCIA_CLIENTE_GERENTE
    select SECUENCIA_CLIENTE_GERENTE.NEXTVAL INTO :new.CLIENTE_GERENTE_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_DEPARTAMENTOS before insert
on DEPARTAMENTOS for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "DEPARTAMENTO_ID" uses sequence SECUENCIA_DEPARTAMENTOS
    select SECUENCIA_DEPARTAMENTOS.NEXTVAL INTO :new.DEPARTAMENTO_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_DIRECTOR_DEPARTAMENTO before insert
on DIRECTOR_DEPARTAMENTO for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "DIRECTOR_DEPARTAMENTO_ID" uses sequence SECUENCIA_DIRECTOR_DEPARTAMENT
    select SECUENCIA_DIRECTOR_DEPARTAMENT.NEXTVAL INTO :new.DIRECTOR_DEPARTAMENTO_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_DIRECTOR_SUCURSAL before insert
on DIRECTOR_SUCURSAL for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "DIRECTOR_SUCURSAL_ID" uses sequence SECUENCIA_DIRECTOR_SUCURSAL
    select SECUENCIA_DIRECTOR_SUCURSAL.NEXTVAL INTO :new.DIRECTOR_SUCURSAL_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_EMPLEADOS before insert
on EMPLEADOS for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "EMPLEADO_ID" uses sequence SECUENCIA_EMPLEADOS
    select SECUENCIA_EMPLEADOS.NEXTVAL INTO :new.EMPLEADO_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_EMPRESA before insert
on EMPRESA for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "EMPRESA_ID" uses sequence SECUENCIA_EMPRESA
    select SECUENCIA_EMPRESA.NEXTVAL INTO :new.EMPRESA_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_EMPRESA_GERENTE before insert
on EMPRESA_GERENTE for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "EMPRESA_GERENTE_ID" uses sequence SECUENCIA_EMPRESA_GERENTE
    select SECUENCIA_EMPRESA_GERENTE.NEXTVAL INTO :new.EMPRESA_GERENTE_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_EMPRESA_SUBGERENTE before insert
on EMPRESA_SUBGERENTE for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "EMPRESA_SUBGERENTE_ID" uses sequence SECUENCIA_EMPRESA_SUBGERENTE
    select SECUENCIA_EMPRESA_SUBGERENTE.NEXTVAL INTO :new.EMPRESA_SUBGERENTE_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_HISTORIAL_TRABAJADORES before insert
on HISTORIAL_TRABAJADORES for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "HISTORIA_TRABAJADORES_ID" uses sequence SECUENCIA_HISTORIA_TRABAJADORE
    select SECUENCIA_HISTORIA_TRABAJADORE.NEXTVAL INTO :new.HISTORIA_TRABAJADORES_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_ORDENES before insert
on ORDENES for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "ORDEN_ID" uses sequence SECUENCIA_ORDENES
    select SECUENCIA_ORDENES.NEXTVAL INTO :new.ORDEN_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_ORDENES_ITEMS before insert
on ORDENES_ITEMS for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "ORDEN_ITEM_ID" uses sequence SECUENCIA_ORDEN_ITEM
    select SECUENCIA_ORDEN_ITEM.NEXTVAL INTO :new.ORDEN_ITEM_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_PAISES before insert
on PAISES for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "PAIS_ID" uses sequence SECUENCIA_PAISES
    select SECUENCIA_PAISES.NEXTVAL INTO :new.PAIS_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_PREMIOS before insert
on PREMIOS for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "PREMIO_ID" uses sequence SECUENCIA_PREMIOS
    select SECUENCIA_PREMIOS.NEXTVAL INTO :new.PREMIO_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_PRODUCTOS before insert
on PRODUCTOS for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "PRODUCTO_ID" uses sequence SECUENCIA_PRODUCTOS
    select SECUENCIA_PRODUCTOS.NEXTVAL INTO :new.PRODUCTO_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_PROVEEDORES before insert
on PROVEEDORES for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "PROVEEDOR_ID" uses sequence SECUENCIA_PROVEEDORES
    select SECUENCIA_PROVEEDORES.NEXTVAL INTO :new.PROVEEDOR_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_PROVEEDOR_GERENTE before insert
on PROVEEDOR_GERENTE for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "PROVEEDOR_GERENTE_ID" uses sequence SECUENCIA_PROVEEDOR_GERENTE
    select SECUENCIA_PROVEEDOR_GERENTE.NEXTVAL INTO :new.PROVEEDOR_GERENTE_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_SUCURSALES before insert
on SUCURSALES for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "SUCURSAL_ID" uses sequence SECUENCIA_SUCURSALES
    select SECUENCIA_SUCURSALES.NEXTVAL INTO :new.SUCURSAL_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_VACANTES before insert
on VACANTES for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "VACANTE_ID" uses sequence SECUENCIA_VACANTES
    select SECUENCIA_VACANTES.NEXTVAL INTO :new.VACANTE_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_VENDEDORES before insert
on VENDEDORES for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;

begin
    --  Column "VENDEDOR_ID" uses sequence SECUENCIA_VENDEDORES
    select SECUENCIA_VENDEDORES.NEXTVAL INTO :new.VENDEDOR_ID from dual;

--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/





