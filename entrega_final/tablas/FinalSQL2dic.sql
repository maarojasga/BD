/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2014                    */
/* Created on:     3/12/2020 1:39:15 a.�m.                      */
/*==============================================================*/


if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('ASISTENCIA_CAPACITACIONES') and o.name = 'FK_ASISTENC_CONTROL_A_CAPACITA')
alter table ASISTENCIA_CAPACITACIONES
   drop constraint FK_ASISTENC_CONTROL_A_CAPACITA
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('BODEGAS') and o.name = 'FK_BODEGAS_TIENEN_SUCURSAL')
alter table BODEGAS
   drop constraint FK_BODEGAS_TIENEN_SUCURSAL
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('CANDIDATOS') and o.name = 'FK_CANDIDAT_TIENE_CAN_VACANTES')
alter table CANDIDATOS
   drop constraint FK_CANDIDAT_TIENE_CAN_VACANTES
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('CAPACITACIONES') and o.name = 'FK_CAPACITA_RECIBEN_C_EMPLEADO')
alter table CAPACITACIONES
   drop constraint FK_CAPACITA_RECIBEN_C_EMPLEADO
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('CARGOS') and o.name = 'FK_CARGOS_DIVIDE_EN_DEPARTAM')
alter table CARGOS
   drop constraint FK_CARGOS_DIVIDE_EN_DEPARTAM
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('CIUDADES') and o.name = 'FK_CIUDADES_CONTIENE__PAISES')
alter table CIUDADES
   drop constraint FK_CIUDADES_CONTIENE__PAISES
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('CLIENTE_GERENTE') and o.name = 'FK_CLIENTE__REPRESENT_CLIENTES')
alter table CLIENTE_GERENTE
   drop constraint FK_CLIENTE__REPRESENT_CLIENTES
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('DEPARTAMENTOS') and o.name = 'FK_DEPARTAM_DIRIGE_DE_DIRECTOR')
alter table DEPARTAMENTOS
   drop constraint FK_DEPARTAM_DIRIGE_DE_DIRECTOR
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('DEPARTAMENTOS') and o.name = 'FK_DEPARTAM_DIVIDE_EN_SUCURSAL')
alter table DEPARTAMENTOS
   drop constraint FK_DEPARTAM_DIVIDE_EN_SUCURSAL
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('DIRECTOR_DEPARTAMENTO') and o.name = 'FK_DIRECTOR_JEFE_DIR__DIRECTOR')
alter table DIRECTOR_DEPARTAMENTO
   drop constraint FK_DIRECTOR_JEFE_DIR__DIRECTOR
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('DIRECTOR_SUCURSAL') and o.name = 'FK_DIRECTOR_JEFE_DIRE_EMPRESA_')
alter table DIRECTOR_SUCURSAL
   drop constraint FK_DIRECTOR_JEFE_DIRE_EMPRESA_
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('EMPLEADOS') and o.name = 'FK_EMPLEADO_OCUPADOS__CARGOS')
alter table EMPLEADOS
   drop constraint FK_EMPLEADO_OCUPADOS__CARGOS
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('EMPRESA_GERENTE') and o.name = 'FK_EMPRESA__DIRIGIDA__EMPRESA')
alter table EMPRESA_GERENTE
   drop constraint FK_EMPRESA__DIRIGIDA__EMPRESA
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('EMPRESA_SUBGERENTE') and o.name = 'FK_EMPRESA__JEFE_SUBG_EMPRESA_')
alter table EMPRESA_SUBGERENTE
   drop constraint FK_EMPRESA__JEFE_SUBG_EMPRESA_
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('EMPRESA_SUBGERENTE') and o.name = 'FK_EMPRESA__REEMPLAZO_EMPRESA')
alter table EMPRESA_SUBGERENTE
   drop constraint FK_EMPRESA__REEMPLAZO_EMPRESA
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('ORDENES') and o.name = 'FK_ORDENES_GENERA_VENDEDOR')
alter table ORDENES
   drop constraint FK_ORDENES_GENERA_VENDEDOR
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('ORDENES') and o.name = 'FK_ORDENES_LUGAR_VEN_SUCURSAL')
alter table ORDENES
   drop constraint FK_ORDENES_LUGAR_VEN_SUCURSAL
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('ORDENES') and o.name = 'FK_ORDENES_PIDEN_CLIENTES')
alter table ORDENES
   drop constraint FK_ORDENES_PIDEN_CLIENTES
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('ORDENES_ITEMS') and o.name = 'FK_ORDENES__PASO_ORDE_ORDENES')
alter table ORDENES_ITEMS
   drop constraint FK_ORDENES__PASO_ORDE_ORDENES
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('ORDENES_ITEMS') and o.name = 'FK_ORDENES__RELACIONA_PRODUCTO')
alter table ORDENES_ITEMS
   drop constraint FK_ORDENES__RELACIONA_PRODUCTO
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('PAISES') and o.name = 'FK_PAISES_ESTA_PRES_EMPRESA')
alter table PAISES
   drop constraint FK_PAISES_ESTA_PRES_EMPRESA
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('PRODUCTOS') and o.name = 'FK_PRODUCTO_ALMACENA_BODEGAS')
alter table PRODUCTOS
   drop constraint FK_PRODUCTO_ALMACENA_BODEGAS
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('PRODUCTOS') and o.name = 'FK_PRODUCTO_PROVEE_PR_PROVEEDO')
alter table PRODUCTOS
   drop constraint FK_PRODUCTO_PROVEE_PR_PROVEEDO
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('PROVEEDOR_GERENTE') and o.name = 'FK_PROVEEDO_REPRESENT_PROVEEDO')
alter table PROVEEDOR_GERENTE
   drop constraint FK_PROVEEDO_REPRESENT_PROVEEDO
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('SUCURSALES') and o.name = 'FK_SUCURSAL_CONTIENE__CIUDADES')
alter table SUCURSALES
   drop constraint FK_SUCURSAL_CONTIENE__CIUDADES
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('SUCURSALES') and o.name = 'FK_SUCURSAL_DIRIGE_SU_DIRECTOR')
alter table SUCURSALES
   drop constraint FK_SUCURSAL_DIRIGE_SU_DIRECTOR
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('SUCURSALES') and o.name = 'FK_SUCURSAL_UBICACION_CLIENTES')
alter table SUCURSALES
   drop constraint FK_SUCURSAL_UBICACION_CLIENTES
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('SUCURSALES') and o.name = 'FK_SUCURSAL_UBICACION_PROVEEDO')
alter table SUCURSALES
   drop constraint FK_SUCURSAL_UBICACION_PROVEEDO
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('VACANTES') and o.name = 'FK_VACANTES_CARGOS_DI_CARGOS')
alter table VACANTES
   drop constraint FK_VACANTES_CARGOS_DI_CARGOS
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('VENDEDORES') and o.name = 'FK_VENDEDOR_ATENDIDA__SUCURSAL')
alter table VENDEDORES
   drop constraint FK_VENDEDOR_ATENDIDA__SUCURSAL
go

if exists (select 1
from sysindexes
where  id    = object_id('ASISTENCIA_CAPACITACIONES')
   and name  = 'CONTROL_ASISTENCIA_FK'
   and indid > 0
   and indid < 255)
   drop index ASISTENCIA_CAPACITACIONES.CONTROL_ASISTENCIA_FK
go

if exists (select 1
from sysobjects
where  id = object_id('ASISTENCIA_CAPACITACIONES')
   and type = 'U')
   drop table ASISTENCIA_CAPACITACIONES
go

if exists (select 1
from sysindexes
where  id    = object_id('BODEGAS')
   and name  = 'TIENEN_FK'
   and indid > 0
   and indid < 255)
   drop index BODEGAS.TIENEN_FK
go

if exists (select 1
from sysobjects
where  id = object_id('BODEGAS')
   and type = 'U')
   drop table BODEGAS
go

if exists (select 1
from sysindexes
where  id    = object_id('CANDIDATOS')
   and name  = 'TIENE_CANDIDATOS_FK'
   and indid > 0
   and indid < 255)
   drop index CANDIDATOS.TIENE_CANDIDATOS_FK
go

if exists (select 1
from sysobjects
where  id = object_id('CANDIDATOS')
   and type = 'U')
   drop table CANDIDATOS
go

if exists (select 1
from sysindexes
where  id    = object_id('CAPACITACIONES')
   and name  = 'RECIBEN_CAPACITACIONES_FK'
   and indid > 0
   and indid < 255)
   drop index CAPACITACIONES.RECIBEN_CAPACITACIONES_FK
go

if exists (select 1
from sysobjects
where  id = object_id('CAPACITACIONES')
   and type = 'U')
   drop table CAPACITACIONES
go

if exists (select 1
from sysindexes
where  id    = object_id('CARGOS')
   and name  = 'DIVIDE_EN_CARGOS_FK'
   and indid > 0
   and indid < 255)
   drop index CARGOS.DIVIDE_EN_CARGOS_FK
go

if exists (select 1
from sysobjects
where  id = object_id('CARGOS')
   and type = 'U')
   drop table CARGOS
go

if exists (select 1
from sysindexes
where  id    = object_id('CIUDADES')
   and name  = 'CONTIENE_CIUDADES_FK'
   and indid > 0
   and indid < 255)
   drop index CIUDADES.CONTIENE_CIUDADES_FK
go

if exists (select 1
from sysobjects
where  id = object_id('CIUDADES')
   and type = 'U')
   drop table CIUDADES
go

if exists (select 1
from sysobjects
where  id = object_id('CLIENTES')
   and type = 'U')
   drop table CLIENTES
go

if exists (select 1
from sysindexes
where  id    = object_id('CLIENTE_GERENTE')
   and name  = 'REPRESENTA_CLIENTE_FK'
   and indid > 0
   and indid < 255)
   drop index CLIENTE_GERENTE.REPRESENTA_CLIENTE_FK
go

if exists (select 1
from sysobjects
where  id = object_id('CLIENTE_GERENTE')
   and type = 'U')
   drop table CLIENTE_GERENTE
go

if exists (select 1
from sysindexes
where  id    = object_id('DEPARTAMENTOS')
   and name  = 'DIRIGE_DEPARTAMENTO_FK'
   and indid > 0
   and indid < 255)
   drop index DEPARTAMENTOS.DIRIGE_DEPARTAMENTO_FK
go

if exists (select 1
from sysindexes
where  id    = object_id('DEPARTAMENTOS')
   and name  = 'DIVIDE_EN_DEPARTAMENTOS_FK'
   and indid > 0
   and indid < 255)
   drop index DEPARTAMENTOS.DIVIDE_EN_DEPARTAMENTOS_FK
go

if exists (select 1
from sysobjects
where  id = object_id('DEPARTAMENTOS')
   and type = 'U')
   drop table DEPARTAMENTOS
go

if exists (select 1
from sysindexes
where  id    = object_id('DIRECTOR_DEPARTAMENTO')
   and name  = 'JEFE_DIR_DEPARTAMENTO_FK'
   and indid > 0
   and indid < 255)
   drop index DIRECTOR_DEPARTAMENTO.JEFE_DIR_DEPARTAMENTO_FK
go

if exists (select 1
from sysobjects
where  id = object_id('DIRECTOR_DEPARTAMENTO')
   and type = 'U')
   drop table DIRECTOR_DEPARTAMENTO
go

if exists (select 1
from sysindexes
where  id    = object_id('DIRECTOR_SUCURSAL')
   and name  = 'JEFE_DIRECTOR_SUCURSAL_FK'
   and indid > 0
   and indid < 255)
   drop index DIRECTOR_SUCURSAL.JEFE_DIRECTOR_SUCURSAL_FK
go

if exists (select 1
from sysobjects
where  id = object_id('DIRECTOR_SUCURSAL')
   and type = 'U')
   drop table DIRECTOR_SUCURSAL
go

if exists (select 1
from sysindexes
where  id    = object_id('EMPLEADOS')
   and name  = 'OCUPADOS_POR_FK'
   and indid > 0
   and indid < 255)
   drop index EMPLEADOS.OCUPADOS_POR_FK
go

if exists (select 1
from sysobjects
where  id = object_id('EMPLEADOS')
   and type = 'U')
   drop table EMPLEADOS
go

if exists (select 1
from sysobjects
where  id = object_id('EMPRESA')
   and type = 'U')
   drop table EMPRESA
go

if exists (select 1
from sysindexes
where  id    = object_id('EMPRESA_GERENTE')
   and name  = 'DIRIGIDA_POR_FK'
   and indid > 0
   and indid < 255)
   drop index EMPRESA_GERENTE.DIRIGIDA_POR_FK
go

if exists (select 1
from sysobjects
where  id = object_id('EMPRESA_GERENTE')
   and type = 'U')
   drop table EMPRESA_GERENTE
go

if exists (select 1
from sysindexes
where  id    = object_id('EMPRESA_SUBGERENTE')
   and name  = 'REEMPLAZO_GERENTE_FK'
   and indid > 0
   and indid < 255)
   drop index EMPRESA_SUBGERENTE.REEMPLAZO_GERENTE_FK
go

if exists (select 1
from sysindexes
where  id    = object_id('EMPRESA_SUBGERENTE')
   and name  = 'JEFE_SUBGERENTE_FK'
   and indid > 0
   and indid < 255)
   drop index EMPRESA_SUBGERENTE.JEFE_SUBGERENTE_FK
go

if exists (select 1
from sysobjects
where  id = object_id('EMPRESA_SUBGERENTE')
   and type = 'U')
   drop table EMPRESA_SUBGERENTE
go

if exists (select 1
from sysobjects
where  id = object_id('HISTORIAL_TRABAJADORES')
   and type = 'U')
   drop table HISTORIAL_TRABAJADORES
go

if exists (select 1
from sysindexes
where  id    = object_id('ORDENES')
   and name  = 'PIDEN_FK'
   and indid > 0
   and indid < 255)
   drop index ORDENES.PIDEN_FK
go

if exists (select 1
from sysindexes
where  id    = object_id('ORDENES')
   and name  = 'GENERA_FK'
   and indid > 0
   and indid < 255)
   drop index ORDENES.GENERA_FK
go

if exists (select 1
from sysindexes
where  id    = object_id('ORDENES')
   and name  = 'LUGAR_VENTA_FK'
   and indid > 0
   and indid < 255)
   drop index ORDENES.LUGAR_VENTA_FK
go

if exists (select 1
from sysobjects
where  id = object_id('ORDENES')
   and type = 'U')
   drop table ORDENES
go

if exists (select 1
from sysindexes
where  id    = object_id('ORDENES_ITEMS')
   and name  = 'RELACIONAN_PRODUCTOS_FK'
   and indid > 0
   and indid < 255)
   drop index ORDENES_ITEMS.RELACIONAN_PRODUCTOS_FK
go

if exists (select 1
from sysindexes
where  id    = object_id('ORDENES_ITEMS')
   and name  = 'PASO_ORDENES_ITEMS_FK'
   and indid > 0
   and indid < 255)
   drop index ORDENES_ITEMS.PASO_ORDENES_ITEMS_FK
go

if exists (select 1
from sysobjects
where  id = object_id('ORDENES_ITEMS')
   and type = 'U')
   drop table ORDENES_ITEMS
go

if exists (select 1
from sysindexes
where  id    = object_id('PAISES')
   and name  = 'ESTA_PRESENTE_FK'
   and indid > 0
   and indid < 255)
   drop index PAISES.ESTA_PRESENTE_FK
go

if exists (select 1
from sysobjects
where  id = object_id('PAISES')
   and type = 'U')
   drop table PAISES
go

if exists (select 1
from sysobjects
where  id = object_id('PREMIOS')
   and type = 'U')
   drop table PREMIOS
go

if exists (select 1
from sysindexes
where  id    = object_id('PRODUCTOS')
   and name  = 'PROVEE_PRODUCTOS_FK'
   and indid > 0
   and indid < 255)
   drop index PRODUCTOS.PROVEE_PRODUCTOS_FK
go

if exists (select 1
from sysindexes
where  id    = object_id('PRODUCTOS')
   and name  = 'ALMACENA_FK'
   and indid > 0
   and indid < 255)
   drop index PRODUCTOS.ALMACENA_FK
go

if exists (select 1
from sysobjects
where  id = object_id('PRODUCTOS')
   and type = 'U')
   drop table PRODUCTOS
go

if exists (select 1
from sysobjects
where  id = object_id('PROVEEDORES')
   and type = 'U')
   drop table PROVEEDORES
go

if exists (select 1
from sysindexes
where  id    = object_id('PROVEEDOR_GERENTE')
   and name  = 'REPRESENTA_PROVEEDOR_FK'
   and indid > 0
   and indid < 255)
   drop index PROVEEDOR_GERENTE.REPRESENTA_PROVEEDOR_FK
go

if exists (select 1
from sysobjects
where  id = object_id('PROVEEDOR_GERENTE')
   and type = 'U')
   drop table PROVEEDOR_GERENTE
go

if exists (select 1
from sysindexes
where  id    = object_id('SUCURSALES')
   and name  = 'DIRIGE_SUCURSAL_FK'
   and indid > 0
   and indid < 255)
   drop index SUCURSALES.DIRIGE_SUCURSAL_FK
go

if exists (select 1
from sysindexes
where  id    = object_id('SUCURSALES')
   and name  = 'CONTIENE_SUCURSALES_FK'
   and indid > 0
   and indid < 255)
   drop index SUCURSALES.CONTIENE_SUCURSALES_FK
go

if exists (select 1
from sysobjects
where  id = object_id('SUCURSALES')
   and type = 'U')
   drop table SUCURSALES
go

if exists (select 1
from sysindexes
where  id    = object_id('VACANTES')
   and name  = 'CARGOS_DISPONIBLES_FK'
   and indid > 0
   and indid < 255)
   drop index VACANTES.CARGOS_DISPONIBLES_FK
go

if exists (select 1
from sysobjects
where  id = object_id('VACANTES')
   and type = 'U')
   drop table VACANTES
go

if exists (select 1
from sysindexes
where  id    = object_id('VENDEDORES')
   and name  = 'ATENDIDA_POR_FK'
   and indid > 0
   and indid < 255)
   drop index VENDEDORES.ATENDIDA_POR_FK
go

if exists (select 1
from sysobjects
where  id = object_id('VENDEDORES')
   and type = 'U')
   drop table VENDEDORES
go

/*==============================================================*/
/* Table: ASISTENCIA_CAPACITACIONES                             */
/*==============================================================*/
create table ASISTENCIA_CAPACITACIONES
(
   ASISTENCIA_CAPACITACIONES_ID bigint not null identity(1,1),
   CAPACITACION_ID bigint null,
   ASISTENCIA_CAPACITACIONES_SI_NO_BOOL bit not null,
   ASISTENCIA_CAPACITACIONES_digitador VARCHAR(15) default user_name() NOT NULL,
   ASISTENCIA_CAPACITACIONES_fecha DATETIME default getdate () NOT NULL,
   constraint PK_ASISTENCIA_CAPACITACIONES primary key (ASISTENCIA_CAPACITACIONES_ID)
)
go

/*==============================================================*/
/* Index: CONTROL_ASISTENCIA_FK                                 */
/*==============================================================*/




create nonclustered index CONTROL_ASISTENCIA_FK on ASISTENCIA_CAPACITACIONES (CAPACITACION_ID ASC)
go

/*==============================================================*/
/* Table: BODEGAS                                               */
/*==============================================================*/
create table BODEGAS
(
   BODEGA_ID bigint not null,
   SUCURSAL_ID bigint not null,
   SUCURSAL_NOMBRE VARCHAR(100) NOT NULL,
   PRODUCTO_ID BIGINT NOT NULL,
   BODEGA_CANTIDAD bigint not null,
   BODEGA_digitador VARCHAR(15) default user_name() NOT NULL,
   BODEGA_fecha DATETIME default getdate () NOT NULL,
   constraint PK_BODEGAS primary key (BODEGA_ID)
)
go

/*==============================================================*/
/* Index: TIENEN_FK                                             */
/*==============================================================*/


create nonclustered index TIENEN_FK on BODEGAS (SUCURSAL_ID ASC)
go

/*==============================================================*/
/* Index: ALMACENA_FK                                             */
/*==============================================================*/
create nonclustered index ALMACENA_FK on BODEGAS (
PRODUCTO_ID ASC
)
go

/*==============================================================*/
/* Table: CANDIDATOS                                            */
/*==============================================================*/
create table CANDIDATOS
(
   CANDIDATO_ID bigint not null identity(1,1),
   VACANTE_ID bigint null,
   CANDIDATO_NOMBRE varchar(100) not null,
   CANDIDATO_DOCUMENTO bigint not null,
   CANDIDATO_CORREO varchar(100) not null,
   CANDIDATO_CELULAR bigint not null,
   CANDIDATO_EDAD bigint not null
      constraint CKC_CANDIDATO_EDAD_CANDIDAT check (CANDIDATO_EDAD between 18 and 99),
   CANDIDATO_GENERO varchar(100) null,
   CANDIDATO_PORCENTAJE_VALORACION int not null
      constraint CKC_CANDIDATO_PORCENT_CANDIDAT check (CANDIDATO_PORCENTAJE_VALORACION between 0 and 100),
	CANDIDATO_digitador VARCHAR(15) default user_name() NOT NULL,
   CANDIDATO_fecha DATETIME default getdate () NOT NULL,
   constraint PK_CANDIDATOS primary key (CANDIDATO_ID)
)
go

/*==============================================================*/
/* Index: TIENE_CANDIDATOS_FK                                   */
/*==============================================================*/


create nonclustered index TIENE_CANDIDATOS_FK on CANDIDATOS (VACANTE_ID ASC)
go

/*==============================================================*/
/* Table: CAPACITACIONES                                        */
/*==============================================================*/
create table CAPACITACIONES
(
   CAPACITACION_ID bigint not null identity(1,1),
   EMPLEADO_ID bigint null,
   CAPACITACION_NOMBRE_TIPO varchar(100) not null,
   CAPACITACION_FECHA datetime not null,
   CAPACITACION_DESCRIPCION varchar(1000) not null,
   CAPACITACIONES_digitador VARCHAR(15) default user_name() NOT NULL,
   CAPACITACIONES_fecha DATETIME default getdate () NOT NULL,
   constraint PK_CAPACITACIONES primary key (CAPACITACION_ID)
)
go

/*==============================================================*/
/* Index: RECIBEN_CAPACITACIONES_FK                             */
/*==============================================================*/


create nonclustered index RECIBEN_CAPACITACIONES_FK on CAPACITACIONES (EMPLEADO_ID ASC)
go

/*==============================================================*/
/* Table: CARGOS                                                */
/*==============================================================*/
create table CARGOS
(
   CARGO_ID bigint not null identity(1,1),
   DEPARTAMENTO_ID bigint null,
   CARGO_NOMBRE varchar(100) not null,
   CARGO_SALARIO_MAX bigint not null,
   CARGO_SALARIO_MIN bigint not null,
   CARGO_JEFE_INMEDIATO_ID    bigint not null,
   CARGO_digitador VARCHAR(15) default user_name() NOT NULL,
    CARGO_fecha DATETIME default getdate () NOT NULL,
   constraint PK_CARGOS primary key (CARGO_ID)
)
go

/*==============================================================*/
/* Index: DIVIDE_EN_CARGOS_FK                                   */
/*==============================================================*/




create nonclustered index DIVIDE_EN_CARGOS_FK on CARGOS (DEPARTAMENTO_ID ASC)
go

/*==============================================================*/
/* Table: CIUDADES                                              */
/*==============================================================*/
create table CIUDADES
(
   CIUDAD_ID bigint not null identity(1,1),
   PAIS_ID bigint null,
   CIUDAD_NOMBRE varchar(100) not null,
   CIUDAD_digitador VARCHAR(15) default user_name() NOT NULL,
   CIUDAD_fecha DATETIME default getdate () NOT NULL,
   constraint PK_CIUDADES primary key (CIUDAD_ID)
)
go

/*==============================================================*/
/* Index: CONTIENE_CIUDADES_FK                                  */
/*==============================================================*/




create nonclustered index CONTIENE_CIUDADES_FK on CIUDADES (PAIS_ID ASC)
go

/*==============================================================*/
/* Table: CLIENTES                                              */
/*==============================================================*/
create table CLIENTES
(
   CLIENTE_ID bigint not null identity(1,1),
   SUCURSAL_ID    bigint not null,
   CLIENTE_NIT bigint not null,
   CLIENTE_NOMBRE varchar(100) not null,
   CLIENTE_CENTRO_LLAMADAS bigint not null,
   CLIENTE_DIRECCION varchar(100) not null,
   CLIENTE_NORMAS_BOOL bit not null,
   CLIENTE_CORREO varchar(100) not null,
   CLIENTE_digitador VARCHAR(15) default user_name() NOT NULL,
   CLIENTE_fecha DATETIME default getdate () NOT NULL,
   constraint PK_CLIENTES primary key (CLIENTE_ID)
)
go
/*==============================================================*/
/* Index: UBICACION_CLIENTE_FK                                  */
/*==============================================================*/
/*create nonclustered index UBICACION_CLIENTE_FK on CLIENTES (
SUCURSAL_ID ASC
)
go*/

/*==============================================================*/
/* Table: CLIENTE_GERENTE                                       */
/*==============================================================*/
create table CLIENTE_GERENTE
(
   CLIENTE_GERENTE_ID bigint not null identity(1,1),
   CLIENTE_ID bigint null,
   CLIENTE_GERENTE_NOMBRE varchar(100) not null,
   CLIENTE_GERENTE_DOCUMENTO bigint not null,
   CLIENTE_GERENTE_CELULAR bigint not null,
   CLIENTE_GERENTE_CORREO varchar(100) not null,
   CLIENTE_GERENTE_digitador VARCHAR(15) default user_name() NOT NULL,
   CLIENTE_GERENTE_fecha DATETIME default getdate () NOT NULL,
   constraint PK_CLIENTE_GERENTE primary key (CLIENTE_GERENTE_ID)
)
go

/*==============================================================*/
/* Index: REPRESENTA_CLIENTE_FK                                 */
/*==============================================================*/




create nonclustered index REPRESENTA_CLIENTE_FK on CLIENTE_GERENTE (CLIENTE_ID ASC)
go

/*==============================================================*/
/* Table: DEPARTAMENTOS                                         */
/*==============================================================*/
create table DEPARTAMENTOS
(
   DEPARTAMENTO_ID bigint not null identity(1,1),
   SUCURSAL_ID bigint null,
   DIRECTOR_DEPARTAMENTO_ID bigint null,
   DEPARTAMENTO_NOMBRE varchar(100) not null,
   DEPARTAMENTO_digitador VARCHAR(15) default user_name() NOT NULL,
   DEPARTAMENTO_fecha DATETIME default getdate () NOT NULL,
   constraint PK_DEPARTAMENTOS primary key (DEPARTAMENTO_ID)
)
go

/*==============================================================*/
/* Index: DIVIDE_EN_DEPARTAMENTOS_FK                            */
/*==============================================================*/




create nonclustered index DIVIDE_EN_DEPARTAMENTOS_FK on DEPARTAMENTOS (SUCURSAL_ID ASC)
go

/*==============================================================*/
/* Index: DIRIGE_DEPARTAMENTO_FK                                */
/*==============================================================*/




create nonclustered index DIRIGE_DEPARTAMENTO_FK on DEPARTAMENTOS (DIRECTOR_DEPARTAMENTO_ID ASC)
go

/*==============================================================*/
/* Table: DIRECTOR_DEPARTAMENTO                                 */
/*==============================================================*/
create table DIRECTOR_DEPARTAMENTO
(
   DIRECTOR_DEPARTAMENTO_ID bigint not null identity(1,1),
   DIRECTOR_SUCURSAL_ID bigint null,
   DIRECTOR_DEPARTAMENTO_NOMBRE varchar(100) not null,
   DIRECTOR_DEPARTAMENTO_DOCUMENTO bigint not null,
   DIRECTOR_DEPARTAMENTO_CELULAR bigint not null,
   DIRECTOR_DEPARTAMENTO_CORREO varchar(100) not null,
   DIRECTOR_DEPARTAMENTO_GENERO varchar(100) null,
   DIRECTOR_DEPARTAMENTO_EDAD int not null
      constraint CKC_DIRECTOR_DEPARTAM_DIRECTOR2 check (DIRECTOR_DEPARTAMENTO_EDAD between 18 and 99),
   DIRECTOR_DEPARTAMENTO_SEGURIDAD_SOCIAL_BOOL bit not null,
   DIRECTOR_DEPARTAMENTO_POLIZA_VIGENTE_BOOL bit not null,
   DIRECTOR_DEPARTAMENTO_SALARIO_FIJO bigint not null
      constraint CKC_DIRECTOR_DEPARTAM_DIRECTOR check (DIRECTOR_DEPARTAMENTO_SALARIO_FIJO between 3500000 and 3999999),
   DIRECTOR_DEPARTAMENTO_CONTRATO_INDEFINIDO_BOOL bit not null,
   DIRECTOR_DEPARTAMENTO_REINGRESO_BOOL bit not null,
   DIRECTOR_DEPARTAMENTO_digitador VARCHAR(15) default user_name() NOT NULL,
   DIRECTOR_DEPARTAMENTO_fecha DATETIME default getdate () NOT NULL,
   constraint PK_DIRECTOR_DEPARTAMENTO primary key (DIRECTOR_DEPARTAMENTO_ID)
)
go

/*==============================================================*/
/* Index: JEFE_DIR_DEPARTAMENTO_FK                              */
/*==============================================================*/




create nonclustered index JEFE_DIR_DEPARTAMENTO_FK on DIRECTOR_DEPARTAMENTO (DIRECTOR_SUCURSAL_ID ASC)
go

/*==============================================================*/
/* Table: DIRECTOR_SUCURSAL                                     */
/*==============================================================*/
create table DIRECTOR_SUCURSAL
(
   DIRECTOR_SUCURSAL_ID bigint not null identity(1,1),
   EMPRESA_SUBGERENTE_ID bigint null,
   DIRECTOR_SUCURSAL_NOMBRE varchar(100) not null,
   DIRECTOR_SUCURSAL_DOCUMENTO bigint not null,
   DIRECTOR_SUCURSAL_CELULAR bigint not null,
   DIRECTOR_SUCURSAL_CORREO varchar(100) not null,
   DIRECTOR_SUCURSAL_GENERO varchar(100) null,
   DIRECTOR_SUCURSAL_EDAD int not null
      constraint CKC_DIRECTOR_SUCURSAL_DIRECTOR2 check (DIRECTOR_SUCURSAL_EDAD between 18 and 99),
   DIRECTOR_SUCURSAL_SEGURIDAD_SOCIAL_BOOL bit not null,
   DIRECTOR_SUCURSAL_POLIZA_VIGENTE_BOOL bit not null,
   DIRECTOR_SUCURSAL_SALARIO_FIJO bigint not null
      constraint CKC_DIRECTOR_SUCURSAL_DIRECTOR check (DIRECTOR_SUCURSAL_SALARIO_FIJO between 4000000 and 4999999),
   DIRECTOR_SUCURSAL_CONTRATO_INDEFINIDO_BOOL bit not null,
   DIRECTOR_SUCURSAL_REINGRESO_BOOL bit not null,
   DIRECTOR_SUCURSAL_digitador VARCHAR(15) default user_name() NOT NULL,
    DIRECTOR_SUCURSAL_fecha DATETIME default getdate () NOT NULL,
   constraint PK_DIRECTOR_SUCURSAL primary key (DIRECTOR_SUCURSAL_ID)
)
go

/*==============================================================*/
/* Index: JEFE_DIRECTOR_SUCURSAL_FK                             */
/*==============================================================*/




create nonclustered index JEFE_DIRECTOR_SUCURSAL_FK on DIRECTOR_SUCURSAL (EMPRESA_SUBGERENTE_ID ASC)
go

/*==============================================================*/
/* Table: EMPLEADOS                                             */
/*==============================================================*/
create table EMPLEADOS
(
   EMPLEADO_ID bigint not null identity(1,1),
   CARGO_ID bigint null,
   EMPLEADO_DOCUMENTO bigint not null,
   EMPLEADO_NOMBRE varchar(100) not null,
   EMPLEADO_CELULAR bigint not null,
   EMPLEADO_CORREO varchar(100) not null,
   EMPLEADO_GENERO varchar(100) null,
   EMPLEADO_EDAD int not null
      constraint CKC_EMPLEADO_EDAD_EMPLEADO check (EMPLEADO_EDAD between 18 and 99),
   EMPLEADO_SEGURIDAD_SOCIAL_BOOL bit not null,
   EMPLEADO_POLIZA_VIGENTE_BOOL bit not null,
   EMPLEADO_CARGO bigint not null,
   EMPLEADO_SALARIO_FIJO bigint not null,
   EMPLEADO_CONTRATO_INDEFINIDO_BOOL bit not null,
   EMPLEADO_DEPARTAMENTO_ID  bigint                      not null,
   EMPLEADO_REINGRESO_BOOL bit not null,
	EMPLEADO_digitador VARCHAR(15) default user_name() NOT NULL,
   EMPLEADO_fecha DATETIME default getdate () NOT NULL,
   constraint PK_EMPLEADOS primary key (EMPLEADO_ID)
)
go

/*==============================================================*/
/* Index: OCUPADOS_POR_FK                                       */
/*==============================================================*/




create nonclustered index OCUPADOS_POR_FK on EMPLEADOS (CARGO_ID ASC)
go

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA
(
   EMPRESA_ID bigint not null identity(1,1),
   EMPRESA_NOMBRE varchar(100) not null,
   EMPRESA_DIRECCION varchar(100) not null,
   EMPRESA_CENTRO_LLAMADAS bigint not null,
   EMPRESA_digitador VARCHAR(15) default user_name() NOT NULL,
    EMPRESA_fecha DATETIME default getdate () NOT NULL,
   constraint PK_EMPRESA primary key (EMPRESA_ID)
)
go

/*==============================================================*/
/* Table: EMPRESA_GERENTE                                       */
/*==============================================================*/
create table EMPRESA_GERENTE
(
   EMPRESA_GERENTE_ID bigint not null identity(1,1),
   EMPRESA_ID bigint null,
   EMPRESA_GERENTE_NOMBRE varchar(100) not null,
   EMPRESA_GERENTE_DOCUMENTO bigint not null,
   EMPRESA_GERENTE_CELULAR bigint not null,
   EMPRESA_GERENTE_CORREO varchar(100) not null,
   EMPRESA_GERENTE_EDAD int not null
      constraint CKC_EMPRESA_GERENTE_E_EMPRESA_ check (EMPRESA_GERENTE_EDAD between 18 and 99),
   EMPRESA_GERENTE_GENERO varchar(100) null,
   EMPRESA_GERENTE_SEGURIDAD_SOCIAL_BOOL bit not null,
   EMPRESA_GERENTE_POLIZA_VIGENTE_BOOL bit not null,
   EMPRESA_GERENTE_CONTRATO_INDEFINIDO_BOOL bit not null,
   EMPRESA_GERENTE_SALARIO_FIJO bigint not null
      constraint CKC_EMPRESA_GERENTE_S_EMPRESA_ check (EMPRESA_GERENTE_SALARIO_FIJO between 6000000 and 8000000),
   EMPRESA_GERENTE_REINGRESO_BOOL bit not null,
   EMPRESA_GERENTE_digitador VARCHAR(15) default user_name() NOT NULL,
    EMPRESA_GERENTE_fecha DATETIME default getdate () NOT NULL,
   constraint PK_EMPRESA_GERENTE primary key (EMPRESA_GERENTE_ID)
)
go

/*==============================================================*/
/* Index: DIRIGIDA_POR_FK                                       */
/*==============================================================*/




create nonclustered index DIRIGIDA_POR_FK on EMPRESA_GERENTE (EMPRESA_ID ASC)
go

/*==============================================================*/
/* Table: EMPRESA_SUBGERENTE                                    */
/*==============================================================*/
create table EMPRESA_SUBGERENTE
(
   EMPRESA_SUBGERENTE_ID bigint not null identity(1,1),
   EMPRESA_GERENTE_ID bigint null,
   EMPRESA_ID bigint null,
   EMPRESA_SUBGERENTE_NOMBRE varchar(100) not null,
   EMPRESA_SUBGERENTE_DOCUMENTO bigint not null,
   EMPRESA_SUBGERENTE_CELULAR bigint not null,
   EMPRESA_SUBGERENTE_CORREO varchar(100) not null,
   EMPRESA_SUBGERENTE_EDAD int not null
      constraint CKC_EMPRESA_SUBGERENT_EMPRESA_2 check (EMPRESA_SUBGERENTE_EDAD between 18 and 99),
   EMPRESA_SUBGERENTE_GENERO varchar(100) null,
   EMPRESA_SUBGERENTE_SEGURIDAD_SOCIAL_BOOL bit not null,
   EMPRESA_SUBGERENTE_POLIZA_VIGENTE_BOOL bit not null,
   EMPRESA_SUBGERENTE_CONTRATO_INDEFINIDO_BOOL bit not null,
   EMPRESA_SUBGERENTE_SALARIO_FIJO bigint not null
      constraint CKC_EMPRESA_SUBGERENT_EMPRESA_ check (EMPRESA_SUBGERENTE_SALARIO_FIJO between 5000000 and 5999999),
   EMPRESA_SUBGERENTE_REINGRESO_BOOL bit not null,
   EMPRESA_SUBGERENTE_digitador VARCHAR(15) default user_name() NOT NULL,
    EMPRESA_SUBGERENTE_fecha DATETIME default getdate () NOT NULL,
   constraint PK_EMPRESA_SUBGERENTE primary key (EMPRESA_SUBGERENTE_ID)
)
go

/*==============================================================*/
/* Index: JEFE_SUBGERENTE_FK                                    */
/*==============================================================*/




create nonclustered index JEFE_SUBGERENTE_FK on EMPRESA_SUBGERENTE (EMPRESA_GERENTE_ID ASC)
go

/*==============================================================*/
/* Index: REEMPLAZO_GERENTE_FK                                  */
/*==============================================================*/




create nonclustered index REEMPLAZO_GERENTE_FK on EMPRESA_SUBGERENTE (EMPRESA_ID ASC)
go

/*==============================================================*/
/* Table: HISTORIAL_TRABAJADORES                                */
/*=============================================================*/
create table HISTORIAL_TRABAJADORES
(
   HISTORIA_TRABAJADORES_ID bigint identity(1,1),
   HISTORIA_TRABAJADORES_FECHA_INGRESO date   not null,
   HISTORIA_TRABAJADORES_FECHA_RETIRO date    not null,
   HISTORIA_TRABAJADORES_ID_EMPLEADO bigint   not null,
   HISTORIA_TRABAJADORES_ID_EMPLEADO_VENDEDOR bigint    not null,
   HISTORIA_TRABAJADORES_DOCUMENTO bigint           not null,
   HISTORIA_TRABAJADORES_NOMBRE varchar(100)  not null,
   HISTORIA_TRABAJADORES_CARGO varchar(100)     not null,
   HISTORIA_TRABAJADORES_FECHA_CAMBIO_CARGO date     not null,
   HISTORIA_TRABAJADORES_FECHA_REINGRESO date     not null,
   HISTORIA_TRABAJADORES_CORREO varchar(100)     not null,
   HISTORIA_TRABAJADORES_CELULAR bigint        not null,
   HISTORIA_TRABAJADORES_REINGRESO_BOOL bit    not null,
   HISTORIA_TRABAJADORES_RETIRO_BOOL bit    not null,
   digitador VARCHAR(15) default user_name() NOT NULL,
   fecha DATETIME default getdate () NOT NULL,
   constraint PK_HISTORIAL_TRABAJADORES primary key (HISTORIA_TRABAJADORES_ID)
)
go

/*==============================================================*/
/* Table: ORDENES                                               */
/*==============================================================*/
create table ORDENES
(
   ORDEN_ID bigint not null identity(1,1),
   SUCURSAL_ID bigint not null,
   VENDEDOR_ID bigint not null,
   CLIENTE_ID bigint null,
   ORDEN_ESTADO int not null
      constraint CKC_ORDEN_ESTADO_ORDENES check (ORDEN_ESTADO between 1 and 4),
   ORDEN_FECHA_SOLICITUD datetime not null,
   ORDEN_FECHA_ENTREGA datetime not null,
   ORDEN_digitador VARCHAR(15) default user_name() NOT NULL,
   ORDEN_fecha DATETIME default getdate () NOT NULL,
   constraint PK_ORDENES primary key (ORDEN_ID)
)
go

/*==============================================================*/
/* Index: LUGAR_VENTA_FK                                        */
/*==============================================================*/




create nonclustered index LUGAR_VENTA_FK on ORDENES (SUCURSAL_ID ASC)
go

/*==============================================================*/
/* Index: GENERA_FK                                             */
/*==============================================================*/




create nonclustered index GENERA_FK on ORDENES (VENDEDOR_ID ASC)
go

/*==============================================================*/
/* Index: PIDEN_FK                                              */
/*==============================================================*/




create nonclustered index PIDEN_FK on ORDENES (CLIENTE_ID ASC)
go

/*==============================================================*/
/* Table: ORDENES_ITEMS                                         */
/*==============================================================*/
create table ORDENES_ITEMS
(
   ORDEN_ITEM_ID bigint not null identity(1,1),
   ORDEN_ID bigint null,
   PRODUCTO_ID bigint null,
   ORDEN_ITEM_CANTIDAD bigint not null,
   ORDEN_ITEM_PRECIO_TOTAL bigint not null,
   ORDEN_ITEM_DESCUENTO_BOOL bit not null,
   ORDENES_ITEMS_digitador VARCHAR(15) default user_name() NOT NULL,
   ORDENES_ITEMS_fecha DATETIME default getdate () NOT NULL,
   constraint PK_ORDENES_ITEMS primary key (ORDEN_ITEM_ID)
)
go

/*==============================================================*/
/* Index: PASO_ORDENES_ITEMS_FK                                 */
/*==============================================================*/




create nonclustered index PASO_ORDENES_ITEMS_FK on ORDENES_ITEMS (ORDEN_ID ASC)
go

/*==============================================================*/
/* Index: RELACIONAN_PRODUCTOS_FK                               */
/*==============================================================*/




create nonclustered index RELACIONAN_PRODUCTOS_FK on ORDENES_ITEMS (PRODUCTO_ID ASC)
go

/*==============================================================*/
/* Table: PAISES                                                */
/*==============================================================*/
create table PAISES
(
   PAIS_ID bigint not null identity(1,1),
   EMPRESA_ID bigint null,
   PAIS_NOMBRE varchar(100) not null,
   PAIS_PREFIJO int not null,
   PAIS_digitador VARCHAR(15) default user_name() NOT NULL,
   PAIS_fecha DATETIME default getdate () NOT NULL,
   constraint PK_PAISES primary key (PAIS_ID)
)
go

/*==============================================================*/
/* Index: ESTA_PRESENTE_FK                                      */
/*==============================================================*/




create nonclustered index ESTA_PRESENTE_FK on PAISES (EMPRESA_ID ASC)
go

/*==============================================================*/
/* Table: PREMIOS                                               */
/*==============================================================*/
create table PREMIOS
(
   PREMIO_ID bigint not null identity(1,1),
   EMPLEADO_ID           bigint  null,
   VENDEDOR_ID           bigint  null,
   PREMIO_NOMBRE varchar(100) not null,
   PREMIO_VALOR bigint not null,
   PREMIO_digitador VARCHAR(15) default user_name() NOT NULL,
   PREMIO_fecha DATETIME default getdate () NOT NULL,
   constraint PK_PREMIOS primary key (PREMIO_ID)
)
go

/*==============================================================*/
/* Table: PRODUCTOS                                             */
/*==============================================================*/
create table PRODUCTOS
(
   PRODUCTO_ID bigint not null identity(1,1),
   BODEGA_ID bigint null,
   PROVEEDOR_ID bigint null,
   PRODUCTO_NOMBRE varchar(100) not null,
   PRODUCTO_PRECIO_ADQUISICION bigint not null,
   PRODUCTO_PRECIO_VENTA bigint not null,
   PRODUCTO_digitador VARCHAR(15) default user_name() NOT NULL,
   PRODUCTO_fecha DATETIME default getdate () NOT NULL,
   constraint PK_PRODUCTOS primary key (PRODUCTO_ID)
)
go

/*==============================================================*/
/* Index: ALMACENA_FK                                           */
/*==============================================================*/




create nonclustered index ALMACENA_FK on PRODUCTOS (BODEGA_ID ASC)
go

/*==============================================================*/
/* Index: PROVEE_PRODUCTOS_FK                                   */
/*==============================================================*/




create nonclustered index PROVEE_PRODUCTOS_FK on PRODUCTOS (PROVEEDOR_ID ASC)
go

/*==============================================================*/
/* Table: PROVEEDORES                                           */
/*==============================================================*/
create table PROVEEDORES
(
   PROVEEDOR_ID bigint not null identity(1,1),
   SUCURSAL_ID          bigint                         not null,
   PROVEEDOR_NIT bigint not null,
   PROVEEDOR_NOMBRE varchar(100) not null,
   PROVEEDOR_CENTRO_LLAMADAS bigint not null,
   PROVEEDOR_DIRECCION varchar(100) not null,
   PROVEEDOR_NORMAS_BOOL bit not null,
   PROVEEDOR_CORREO varchar(100) not null,
   PROVEEDOR_digitador VARCHAR(15) default user_name() NOT NULL,
   PROVEEDOR_fecha DATETIME default getdate () NOT NULL,
   constraint PK_PROVEEDORES primary key (PROVEEDOR_ID)
)
go
/*==============================================================*/
/* Index: UBICACION_PROVEEDOR_FK                                */
/*==============================================================*/
/*create nonclustered index UBICACION_PROVEEDOR_FK on PROVEEDORES (
SUCURSAL_ID ASC
)
go*/
/*foreign key*/   
/*==============================================================*/
/* Table: PROVEEDOR_GERENTE                                     */
/*==============================================================*/
create table PROVEEDOR_GERENTE
(
   PROVEEDOR_GERENTE_ID bigint not null identity(1,1),
   PROVEEDOR_ID bigint null,
   PROVEEDOR_GERENTE_NOMBRE varchar(100) not null,
   PROVEEDOR_GERENTE_DOCUMENTO bigint not null,
   PROVEEDOR_GERENTE_CELULAR bigint not null,
   PROVEEDOR_GERENTE_CORREO varchar(100) not null,
   PROVEEDOR_GERENTE_digitador VARCHAR(15) default user_name() NOT NULL,
   PROVEEDOR_GERENTE_fecha DATETIME default getdate () NOT NULL,
   constraint PK_PROVEEDOR_GERENTE primary key (PROVEEDOR_GERENTE_ID)
)
go

/*==============================================================*/
/* Index: REPRESENTA_PROVEEDOR_FK                               */
/*==============================================================*/




create nonclustered index REPRESENTA_PROVEEDOR_FK on PROVEEDOR_GERENTE (PROVEEDOR_ID ASC)
go

/*==============================================================*/
/* Table: SUCURSALES                                            */
/*==============================================================*/
create table SUCURSALES
(
   SUCURSAL_ID bigint not null identity(1,1),
   DIRECTOR_SUCURSAL_ID bigint null,
   CIUDAD_ID bigint null,
   SUCURSAL_NOMBRE varchar(100) not null,
   SUCURSAL_CENTRO_LLAMADAS bigint not null,
   SUCURSAL_DIRECCION varchar(100) not null,
   SUCURSAL_digitador VARCHAR(15) default user_name() NOT NULL,
   SUCURSAL_fecha DATETIME default getdate () NOT NULL,
   constraint PK_SUCURSALES primary key (SUCURSAL_ID)
)
go

/*==============================================================*/
/* Index: CONTIENE_SUCURSALES_FK                                */
/*==============================================================*/




create nonclustered index CONTIENE_SUCURSALES_FK on SUCURSALES (CIUDAD_ID ASC)
go

/*==============================================================*/
/* Index: DIRIGE_SUCURSAL_FK                                    */
/*==============================================================*/




create nonclustered index DIRIGE_SUCURSAL_FK on SUCURSALES (DIRECTOR_SUCURSAL_ID ASC)
go

/*==============================================================*/
/* Table: VACANTES                                              */
/*==============================================================*/
create table VACANTES
(
   VACANTE_ID bigint not null identity(1,1),
   CARGO_ID bigint null,
   VACANTE_NUMERO bigint not null,
   VACANTE_digitador VARCHAR(15) default user_name() NOT NULL,
   VACANTE_fecha DATETIME default getdate () NOT NULL,
   constraint PK_VACANTES primary key (VACANTE_ID)
)
go

/*==============================================================*/
/* Index: CARGOS_DISPONIBLES_FK                                 */
/*==============================================================*/




create nonclustered index CARGOS_DISPONIBLES_FK on VACANTES (CARGO_ID ASC)
go
/*==============================================================*/
/* Table: REGISTRO_HISTORICO                                           */
/*==============================================================*/
create table REGISTRO_HISTORICO
(
   REGISTRO_HISTORICO_USUARIO VARCHAR(15) default user_name() NOT NULL,
   REGISTRO_HISTORICO_FECHA DATETIME default getdate () NOT NULL,
   REGISTRO_HISTORICO_MENSAJE VARCHAR(100) NOT NULL
)
go
/*==============================================================*/
/* Table: VENDEDORES                                            */
/*==============================================================*/
create table VENDEDORES
(
   VENDEDOR_ID bigint not null identity(1,1),
   SUCURSAL_ID bigint null,
   VENDEDOR_DOCUMENTO bigint not null,
   VENDEDOR_NOMBRE varchar(100) not null,
   VENDEDOR_CELULAR bigint not null,
   VENDEDOR_CORREO varchar(100) not null,
   VENDEDOR_GENERO varchar(100) null,
   VENDEDOR_EDAD int not null
      constraint CKC_VENDEDOR_EDAD_VENDEDOR check (VENDEDOR_EDAD between 18 and 99),
   VENDEDOR_SEGURIDAD_SOCIAL_BOOL bit not null,
   VENDEDOR_POLIZA_VIGENTE_BOOL bit not null,
   VENDEDOR_SALARIO_FIJO bigint not null,
   VENDEDOR_CONTRATO_INDEFINIDO_BOOL bit not null,
   VENDEDOR_REINGRESO_BOOL bit not null,
   VENDEDOR_COMISION bigint not null,
   VENDEDOR_digitador VARCHAR(15) default user_name() NOT NULL,
   VENDEDOR_fecha DATETIME default getdate () NOT NULL,
   constraint PK_VENDEDORES primary key (VENDEDOR_ID)
)
go

/*==============================================================*/
/* Index: ATENDIDA_POR_FK                                       */
/*==============================================================*/


create nonclustered index ATENDIDA_POR_FK on VENDEDORES (SUCURSAL_ID ASC)
go



alter table ASISTENCIA_CAPACITACIONES
   add constraint FK_ASISTENC_CONTROL_A_CAPACITA foreign key (CAPACITACION_ID)
      references CAPACITACIONES (CAPACITACION_ID)
go

alter table BODEGAS
   add constraint FK_BODEGAS_TIENEN_SUCURSAL foreign key (SUCURSAL_ID)
      references SUCURSALES (SUCURSAL_ID)
go

alter table CANDIDATOS
   add constraint FK_CANDIDAT_TIENE_CAN_VACANTES foreign key (VACANTE_ID)
      references VACANTES (VACANTE_ID)
go

alter table CAPACITACIONES
   add constraint FK_CAPACITA_RECIBEN_C_EMPLEADO foreign key (EMPLEADO_ID)
      references EMPLEADOS (EMPLEADO_ID)
go

alter table CARGOS
   add constraint FK_CARGOS_DIVIDE_EN_DEPARTAM foreign key (DEPARTAMENTO_ID)
      references DEPARTAMENTOS (DEPARTAMENTO_ID)
go

alter table CIUDADES
   add constraint FK_CIUDADES_CONTIENE__PAISES foreign key (PAIS_ID)
      references PAISES (PAIS_ID)
go

alter table CLIENTE_GERENTE
   add constraint FK_CLIENTE__REPRESENT_CLIENTES foreign key (CLIENTE_ID)
      references CLIENTES (CLIENTE_ID)
go

alter table DEPARTAMENTOS
   add constraint FK_DEPARTAM_DIRIGE_DE_DIRECTOR foreign key (DIRECTOR_DEPARTAMENTO_ID)
      references DIRECTOR_DEPARTAMENTO (DIRECTOR_DEPARTAMENTO_ID)
go

alter table DEPARTAMENTOS
   add constraint FK_DEPARTAM_DIVIDE_EN_SUCURSAL foreign key (SUCURSAL_ID)
      references SUCURSALES (SUCURSAL_ID)
go

alter table DIRECTOR_DEPARTAMENTO
   add constraint FK_DIRECTOR_JEFE_DIR__DIRECTOR foreign key (DIRECTOR_SUCURSAL_ID)
      references DIRECTOR_SUCURSAL (DIRECTOR_SUCURSAL_ID)
go

alter table DIRECTOR_SUCURSAL
   add constraint FK_DIRECTOR_JEFE_DIRE_EMPRESA_ foreign key (EMPRESA_SUBGERENTE_ID)
      references EMPRESA_SUBGERENTE (EMPRESA_SUBGERENTE_ID)
go

alter table EMPLEADOS
   add constraint FK_EMPLEADO_OCUPADOS__CARGOS foreign key (CARGO_ID)
      references CARGOS (CARGO_ID)
go

alter table EMPRESA_GERENTE
   add constraint FK_EMPRESA__DIRIGIDA__EMPRESA foreign key (EMPRESA_ID)
      references EMPRESA (EMPRESA_ID)
go

alter table EMPRESA_SUBGERENTE
   add constraint FK_EMPRESA__JEFE_SUBG_EMPRESA_ foreign key (EMPRESA_GERENTE_ID)
      references EMPRESA_GERENTE (EMPRESA_GERENTE_ID)
go

alter table EMPRESA_SUBGERENTE
   add constraint FK_EMPRESA__REEMPLAZO_EMPRESA foreign key (EMPRESA_ID)
      references EMPRESA (EMPRESA_ID)
go

alter table ORDENES
   add constraint FK_ORDENES_GENERA_VENDEDOR foreign key (VENDEDOR_ID)
      references VENDEDORES (VENDEDOR_ID)
go

alter table ORDENES
   add constraint FK_ORDENES_LUGAR_VEN_SUCURSAL foreign key (SUCURSAL_ID)
      references SUCURSALES (SUCURSAL_ID)
go

alter table ORDENES
   add constraint FK_ORDENES_PIDEN_CLIENTES foreign key (CLIENTE_ID)
      references CLIENTES (CLIENTE_ID)
go

alter table ORDENES_ITEMS
   add constraint FK_ORDENES__PASO_ORDE_ORDENES foreign key (ORDEN_ID)
      references ORDENES (ORDEN_ID)
go

alter table ORDENES_ITEMS
   add constraint FK_ORDENES__RELACIONA_PRODUCTO foreign key (PRODUCTO_ID)
      references PRODUCTOS (PRODUCTO_ID)
go

alter table PAISES
   add constraint FK_PAISES_ESTA_PRES_EMPRESA foreign key (EMPRESA_ID)
      references EMPRESA (EMPRESA_ID)
go

alter table PRODUCTOS
   add constraint FK_PRODUCTO_ALMACENA_BODEGAS foreign key (BODEGA_ID)
      references BODEGAS (BODEGA_ID)
go

alter table PRODUCTOS
   add constraint FK_PRODUCTO_PROVEE_PR_PROVEEDO foreign key (PROVEEDOR_ID)
      references PROVEEDORES (PROVEEDOR_ID)
go

alter table PROVEEDOR_GERENTE
   add constraint FK_PROVEEDO_REPRESENT_PROVEEDO foreign key (PROVEEDOR_ID)
      references PROVEEDORES (PROVEEDOR_ID)
go

alter table SUCURSALES
   add constraint FK_SUCURSAL_CONTIENE__CIUDADES foreign key (CIUDAD_ID)
      references CIUDADES (CIUDAD_ID)
go

alter table SUCURSALES
   add constraint FK_SUCURSAL_DIRIGE_SU_DIRECTOR foreign key (DIRECTOR_SUCURSAL_ID)
      references DIRECTOR_SUCURSAL (DIRECTOR_SUCURSAL_ID)
go

/*alter table SUCURSALES
   add constraint FK_SUCURSAL_UBICACION_CLIENTES foreign key (CLIENTE_ID)
      references CLIENTES (CLIENTE_ID)
go*/

/*alter table SUCURSALES
   add constraint FK_SUCURSAL_UBICACION_PROVEEDO foreign key (PROVEEDOR_ID)
      references PROVEEDORES (PROVEEDOR_ID)
go*/

alter table VACANTES
   add constraint FK_VACANTES_CARGOS_DI_CARGOS foreign key (CARGO_ID)
      references CARGOS (CARGO_ID)
go

alter table VENDEDORES
   add constraint FK_VENDEDOR_ATENDIDA__SUCURSAL foreign key (SUCURSAL_ID)
      references SUCURSALES (SUCURSAL_ID)
go

/*foreign key*/
alter table CLIENTES
add foreign key (SUCURSAL_ID) references SUCURSALES(SUCURSAL_ID)
GO
/*alter table PROVEEDORES
add foreign key (SUCURSAL_ID) references SUCURSALES(SUCURSAL_ID)
GO*/
alter table PROVEEDORES
   add constraint FK_PROVEEDOR_UBICACION_DI_PRUEBA foreign key (SUCURSAL_ID)
      references SUCURSALES(SUCURSAL_ID)
GO