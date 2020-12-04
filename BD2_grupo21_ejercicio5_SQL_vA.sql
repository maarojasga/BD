if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ADQUISICION') and o.name = 'FK_ADQUISIC_ADQUISICI_PRODUCTO')
alter table ADQUISICION
   drop constraint FK_ADQUISIC_ADQUISICI_PRODUCTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ADQUISICION') and o.name = 'FK_ADQUISIC_ADQUISICI_CLIENTE')
alter table ADQUISICION
   drop constraint FK_ADQUISIC_ADQUISICI_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CARGO') and o.name = 'FK_CARGO_DEPENDENC_DEPARTAM')
alter table CARGO
   drop constraint FK_CARGO_DEPENDENC_DEPARTAM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CIUDAD') and o.name = 'FK_CIUDAD_UBICACION_SUCURSAL')
alter table CIUDAD
   drop constraint FK_CIUDAD_UBICACION_SUCURSAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CLIENTE') and o.name = 'FK_CLIENTE_ENCARGADO_EMPLEADO')
alter table CLIENTE
   drop constraint FK_CLIENTE_ENCARGADO_EMPLEADO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CLIENTE') and o.name = 'FK_CLIENTE_LUGARVENT_SUCURSAL')
alter table CLIENTE
   drop constraint FK_CLIENTE_LUGARVENT_SUCURSAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CLIENTE') and o.name = 'FK_CLIENTE_REPRESENT_GERENTE_')
alter table CLIENTE
   drop constraint FK_CLIENTE_REPRESENT_GERENTE_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EMPLEADO') and o.name = 'FK_EMPLEADO_CONTRATO_SUCURSAL')
alter table EMPLEADO
   drop constraint FK_EMPLEADO_CONTRATO_SUCURSAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EMPLEADO') and o.name = 'FK_EMPLEADO_PERTENECE_CARGO')
alter table EMPLEADO
   drop constraint FK_EMPLEADO_PERTENECE_CARGO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EMPLEADO_VENDEDOR') and o.name = 'FK_EMPLEADO_CONTRATOV_SUCURSAL')
alter table EMPLEADO_VENDEDOR
   drop constraint FK_EMPLEADO_CONTRATOV_SUCURSAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GERENTE_CLIENTE') and o.name = 'FK_GERENTE__REPRESENT_CLIENTE')
alter table GERENTE_CLIENTE
   drop constraint FK_GERENTE__REPRESENT_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GERENTE_PROVEEDOR') and o.name = 'FK_GERENTE__REPRESENT_PROVEEDO')
alter table GERENTE_PROVEEDOR
   drop constraint FK_GERENTE__REPRESENT_PROVEEDO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRODUCTO') and o.name = 'FK_PRODUCTO_PROVEER_PROVEEDO')
alter table PRODUCTO
   drop constraint FK_PRODUCTO_PROVEER_PROVEEDO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PROVEEDOR') and o.name = 'FK_PROVEEDO_NN_SUCURSAL')
alter table PROVEEDOR
   drop constraint FK_PROVEEDO_NN_SUCURSAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PROVEEDOR') and o.name = 'FK_PROVEEDO_REPRESENT_GERENTE_')
alter table PROVEEDOR
   drop constraint FK_PROVEEDO_REPRESENT_GERENTE_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SUCURSAL') and o.name = 'FK_SUCURSAL_UBICACION_CIUDAD')
alter table SUCURSAL
   drop constraint FK_SUCURSAL_UBICACION_CIUDAD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VENDER') and o.name = 'FK_VENDER_VENDER_PRODUCTO')
alter table VENDER
   drop constraint FK_VENDER_VENDER_PRODUCTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VENDER') and o.name = 'FK_VENDER_VENDER2_EMPLEADO')
alter table VENDER
   drop constraint FK_VENDER_VENDER2_EMPLEADO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ADQUISICION')
            and   name  = 'ADQUISICION_FK'
            and   indid > 0
            and   indid < 255)
   drop index ADQUISICION.ADQUISICION_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ADQUISICION')
            and   name  = 'ADQUISICION2_FK'
            and   indid > 0
            and   indid < 255)
   drop index ADQUISICION.ADQUISICION2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ADQUISICION')
            and   type = 'U')
   drop table ADQUISICION
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CARGO')
            and   name  = 'DEPENDENCIA_FK'
            and   indid > 0
            and   indid < 255)
   drop index CARGO.DEPENDENCIA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CARGO')
            and   type = 'U')
   drop table CARGO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CIUDAD')
            and   name  = 'UBICACION_FK'
            and   indid > 0
            and   indid < 255)
   drop index CIUDAD.UBICACION_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CIUDAD')
            and   type = 'U')
   drop table CIUDAD
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CLIENTE')
            and   name  = 'ENCARGADO_FK'
            and   indid > 0
            and   indid < 255)
   drop index CLIENTE.ENCARGADO_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CLIENTE')
            and   name  = 'LUGARVENTA_FK'
            and   indid > 0
            and   indid < 255)
   drop index CLIENTE.LUGARVENTA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CLIENTE')
            and   name  = 'REPRESENTANTE2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CLIENTE.REPRESENTANTE2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CLIENTE')
            and   type = 'U')
   drop table CLIENTE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DEPARTAMENTO')
            and   type = 'U')
   drop table DEPARTAMENTO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EMPLEADO')
            and   name  = 'CONTRATO_FK'
            and   indid > 0
            and   indid < 255)
   drop index EMPLEADO.CONTRATO_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EMPLEADO')
            and   name  = 'PERTENECE_FK'
            and   indid > 0
            and   indid < 255)
   drop index EMPLEADO.PERTENECE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EMPLEADO')
            and   type = 'U')
   drop table EMPLEADO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EMPLEADO_VENDEDOR')
            and   name  = 'CONTRATOVENDEDOR_FK'
            and   indid > 0
            and   indid < 255)
   drop index EMPLEADO_VENDEDOR.CONTRATOVENDEDOR_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EMPLEADO_VENDEDOR')
            and   type = 'U')
   drop table EMPLEADO_VENDEDOR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GERENTE_CLIENTE')
            and   name  = 'REPRESENTANTE_FK'
            and   indid > 0
            and   indid < 255)
   drop index GERENTE_CLIENTE.REPRESENTANTE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GERENTE_CLIENTE')
            and   type = 'U')
   drop table GERENTE_CLIENTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GERENTE_PROVEEDOR')
            and   name  = 'REPRESENTAR2_FK'
            and   indid > 0
            and   indid < 255)
   drop index GERENTE_PROVEEDOR.REPRESENTAR2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GERENTE_PROVEEDOR')
            and   type = 'U')
   drop table GERENTE_PROVEEDOR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PRODUCTO')
            and   name  = 'PROVEER_FK'
            and   indid > 0
            and   indid < 255)
   drop index PRODUCTO.PROVEER_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRODUCTO')
            and   type = 'U')
   drop table PRODUCTO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PROVEEDOR')
            and   name  = 'NN_FK'
            and   indid > 0
            and   indid < 255)
   drop index PROVEEDOR.NN_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PROVEEDOR')
            and   name  = 'REPRESENTAR_FK'
            and   indid > 0
            and   indid < 255)
   drop index PROVEEDOR.REPRESENTAR_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PROVEEDOR')
            and   type = 'U')
   drop table PROVEEDOR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SUCURSAL')
            and   name  = 'UBICACION2_FK'
            and   indid > 0
            and   indid < 255)
   drop index SUCURSAL.UBICACION2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SUCURSAL')
            and   type = 'U')
   drop table SUCURSAL
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VENDER')
            and   name  = 'VENDER_FK'
            and   indid > 0
            and   indid < 255)
   drop index VENDER.VENDER_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VENDER')
            and   name  = 'VENDER2_FK'
            and   indid > 0
            and   indid < 255)
   drop index VENDER.VENDER2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VENDER')
            and   type = 'U')
   drop table VENDER
go

/*==============================================================*/
/* Table: ADQUISICION                                           */
/*==============================================================*/
create table ADQUISICION (
   PRODUCTOID           int                  not null,
   CLIENTEID            int                  not null,
   constraint PK_ADQUISICION primary key nonclustered (PRODUCTOID, CLIENTEID)
)
go

/*==============================================================*/
/* Index: ADQUISICION2_FK                                       */
/*==============================================================*/
create index ADQUISICION2_FK on ADQUISICION (
CLIENTEID ASC
)
go

/*==============================================================*/
/* Index: ADQUISICION_FK                                        */
/*==============================================================*/
create index ADQUISICION_FK on ADQUISICION (
PRODUCTOID ASC
)
go

/*==============================================================*/
/* Table: CARGO                                                 */
/*==============================================================*/
create table CARGO (
   CARGOID              int      identity(1,1)            not null,
   DEPARTAMENTOID       int                  not null,
   CARGO_NOMBRE         varchar(100)         not null,
   SALARIOMENSUAL       bigint               not null,
   digitador VARCHAR(15) default user_name() NOT NULL,
   fecha DATETIME default getdate () NOT NULL,
   constraint PK_CARGO primary key nonclustered (CARGOID)
)
go

/*==============================================================*/
/* Index: DEPENDENCIA_FK                                        */
/*==============================================================*/
create index DEPENDENCIA_FK on CARGO (
DEPARTAMENTOID ASC
)
go

/*==============================================================*/
/* Table: CIUDAD                                                */
/*==============================================================*/
create table CIUDAD (
   CIUDADID             int     identity(1,1)              not null,
   SUCURSALID           int                  null,
   CIUDAD_NOMBRE        varchar(100)         not null,
   digitador VARCHAR(15) default user_name() NOT NULL,
   fecha DATETIME default getdate () NOT NULL,
   constraint PK_CIUDAD primary key nonclustered (CIUDADID)
)
go

/*==============================================================*/
/* Index: UBICACION_FK                                          */
/*==============================================================*/
create index UBICACION_FK on CIUDAD (
SUCURSALID ASC
)
go

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   CLIENTEID            int       identity(1,1)            not null,
   GERENTE_CLIENTEID    int                  not null,
   SUCURSALID           int                  not null,
   EMPLEADO_VENDEDORID  int                  not null,
   CLIENTE_NOMBRE       varchar(100)         not null,
   CLIENTE_NIT          bigint               not null,
   CLIENTE_DIRECCION    varchar(100)         not null,
   CLIENTE_CORREO       varchar(100)         not null,
   CLIENTE_TELEFONOMOVIL bigint               not null,
   digitador VARCHAR(15) default user_name() NOT NULL,
   fecha DATETIME default getdate () NOT NULL,
   constraint PK_CLIENTE primary key nonclustered (CLIENTEID)
)
go

/*==============================================================*/
/* Index: REPRESENTANTE2_FK                                     */
/*==============================================================*/
create index REPRESENTANTE2_FK on CLIENTE (
GERENTE_CLIENTEID ASC
)
go

/*==============================================================*/
/* Index: LUGARVENTA_FK                                         */
/*==============================================================*/
create index LUGARVENTA_FK on CLIENTE (
SUCURSALID ASC
)
go

/*==============================================================*/
/* Index: ENCARGADO_FK                                          */
/*==============================================================*/
create index ENCARGADO_FK on CLIENTE (
EMPLEADO_VENDEDORID ASC
)
go

/*==============================================================*/
/* Table: DEPARTAMENTO                                          */
/*==============================================================*/
create table DEPARTAMENTO (
   DEPARTAMENTOID       int      identity(1,1)             not null,
   DEPARTAMENTO_NOMBRE  varchar(100)         not null,
   digitador VARCHAR(15) default user_name() NOT NULL,
   fecha DATETIME default getdate () NOT NULL,
   constraint PK_DEPARTAMENTO primary key nonclustered (DEPARTAMENTOID)
)
go

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   EMPLEADOID           int           identity(1,1)        not null,
   CARGOID              int                  not null,
   SUCURSALID           int                  not null,
   EMPLEADO_NOMBRE      varchar(100)         not null,
   EMPLEADO_APELLIDO    varchar(100)         not null,
   EMPLEADO_TELEFONOMOVIL bigint               not null,
   EMPLEADO_DIRECCION   varchar(100)         not null,
   EMPLEADO_GENERO      varchar(100)         null,
   EMPLEADO_CORREO      varchar(100)         not null,
   EMPLEADO_FECHAINGRESO datetime             not null,
   EMPLEADO_SALARIOMENSUAL bigint               not null,
   digitador VARCHAR(15) default user_name() NOT NULL,
   fecha DATETIME default getdate () NOT NULL,
   constraint PK_EMPLEADO primary key nonclustered (EMPLEADOID)
)
go

/*==============================================================*/
/* Index: PERTENECE_FK                                          */
/*==============================================================*/
create index PERTENECE_FK on EMPLEADO (
CARGOID ASC
)
go

/*==============================================================*/
/* Index: CONTRATO_FK                                           */
/*==============================================================*/
create index CONTRATO_FK on EMPLEADO (
SUCURSALID ASC
)
go

/*==============================================================*/
/* Table: EMPLEADO_VENDEDOR                                     */
/*==============================================================*/
create table EMPLEADO_VENDEDOR (
   EMPLEADO_VENDEDORID  int         identity(1,1)          not null,
   SUCURSALID           int                  not null,
   EMPLEADOVENDEDOR_NOMBRE varchar(100)         not null,
   EMPLEADOVENDEDOR_APELLIDO varchar(100)         not null,
   EMPLEADOVENDEDOR_TELEFONOMOVIL bigint               not null,
   EMPLEADOVENDEDOR_DIRECCION varchar(100)         not null,
   EMPLEADOVENDEDOR_GENERO varchar(100)         null,
   EMPLEADOVENDEDOR_CORREO varchar(100)         not null,
   EMPLEADOVENDEDOR_FECHAINGRESO datetime             not null,
   EMPLEADOVENDEDOR_SALARIOMENSUAL bigint               not null,
   COMISION             bigint               not null,
   digitador VARCHAR(15) default user_name() NOT NULL,
   fecha DATETIME default getdate () NOT NULL,
   constraint PK_EMPLEADO_VENDEDOR primary key nonclustered (EMPLEADO_VENDEDORID)
)
go

/*==============================================================*/
/* Index: CONTRATOVENDEDOR_FK                                   */
/*==============================================================*/
create index CONTRATOVENDEDOR_FK on EMPLEADO_VENDEDOR (
SUCURSALID ASC
)
go

/*==============================================================*/
/* Table: GERENTE_CLIENTE                                       */
/*==============================================================*/
create table GERENTE_CLIENTE (
   GERENTE_CLIENTEID    int        identity(1,1)           not null,
   CLIENTEID            int                  null,
   GERENTECLIENTE_NOMBRE varchar(100)         not null,
   GERENTECLIENTE_DOCUMENTO bigint               not null,
   GERENTECLIENTE_TELEFONOMOVIL bigint               not null,
   digitador VARCHAR(15) default user_name() NOT NULL,
   fecha DATETIME default getdate () NOT NULL,
   constraint PK_GERENTE_CLIENTE primary key nonclustered (GERENTE_CLIENTEID)
)
go

/*==============================================================*/
/* Index: REPRESENTANTE_FK                                      */
/*==============================================================*/
create index REPRESENTANTE_FK on GERENTE_CLIENTE (
CLIENTEID ASC
)
go

/*==============================================================*/
/* Table: GERENTE_PROVEEDOR                                     */
/*==============================================================*/
create table GERENTE_PROVEEDOR (
   GERENTE_PROVEEDORID  int         identity(1,1)          not null,
   PROVEEDORID          int                  null,
   GERENTEPROVEEDOR_NOMBRE varchar(100)         not null,
   GERENTEPROVEEDOR_DOCUMENTO bigint               not null,
   GERENTEPROVEEDOR_TELEFONO bigint               not null,
   digitador VARCHAR(15) default user_name() NOT NULL,
   fecha DATETIME default getdate () NOT NULL,
   constraint PK_GERENTE_PROVEEDOR primary key nonclustered (GERENTE_PROVEEDORID)
)
go

/*==============================================================*/
/* Index: REPRESENTAR2_FK                                       */
/*==============================================================*/
create index REPRESENTAR2_FK on GERENTE_PROVEEDOR (
PROVEEDORID ASC
)
go

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO (
   PRODUCTOID           int         identity(1,1)          not null,
   PROVEEDORID          int                  not null,
   PRODUCTO_NOMBRE      varchar(100)         not null,
   PRODUCTO_PRECIOCOMPRA bigint               not null,
   PRODUCTO_PRECIOVENTA bigint               not null,
   PRODUCTO_FECHAADQUISICION datetime             not null,
   digitador VARCHAR(15) default user_name() NOT NULL,
   fecha DATETIME default getdate () NOT NULL,
   constraint PK_PRODUCTO primary key nonclustered (PRODUCTOID)
)
go

/*==============================================================*/
/* Index: PROVEER_FK                                            */
/*==============================================================*/
create index PROVEER_FK on PRODUCTO (
PROVEEDORID ASC
)
go

/*==============================================================*/
/* Table: PROVEEDOR                                             */
/*==============================================================*/
create table PROVEEDOR (
   PROVEEDORID          int        identity(1,1)           not null,
   GERENTE_PROVEEDORID  int                  not null,
   SUCURSALID           int                  not null,
   PROVEEDOR_NOMBRE     varchar(100)         not null,
   PROVEEDOR_NIT        bigint               not null,
   PROVEEDOR_NUMEROCENTROLLAMADAS bigint               not null,
   PROVEEDOR_DIRECCION  varchar(100)         not null,
   digitador VARCHAR(15) default user_name() NOT NULL,
   fecha DATETIME default getdate () NOT NULL,
   constraint PK_PROVEEDOR primary key nonclustered (PROVEEDORID)
)
go

/*==============================================================*/
/* Index: REPRESENTAR_FK                                        */
/*==============================================================*/
create index REPRESENTAR_FK on PROVEEDOR (
GERENTE_PROVEEDORID ASC
)
go

/*==============================================================*/
/* Index: NN_FK                                                 */
/*==============================================================*/
create index NN_FK on PROVEEDOR (
SUCURSALID ASC
)
go

/*==============================================================*/
/* Table: SUCURSAL                                              */
/*==============================================================*/
create table SUCURSAL (
   SUCURSALID           int       identity(1,1)            not null,
   CIUDADID             int                  not null,
   SUCURSAL_NOMBRE      varchar(100)         not null,
   digitador VARCHAR(15) default user_name() NOT NULL,
   fecha DATETIME default getdate () NOT NULL,
   constraint PK_SUCURSAL primary key nonclustered (SUCURSALID)
)
go

/*==============================================================*/
/* Index: UBICACION2_FK                                         */
/*==============================================================*/
create index UBICACION2_FK on SUCURSAL (
CIUDADID ASC
)
go

/*==============================================================*/
/* Table: VENDER                                                */
/*==============================================================*/
create table VENDER (
   PRODUCTOID           int                  not null,
   EMPLEADO_VENDEDORID  int                  not null,
   constraint PK_VENDER primary key nonclustered (PRODUCTOID, EMPLEADO_VENDEDORID)
)
go

/*==============================================================*/
/* Index: VENDER2_FK                                            */
/*==============================================================*/
create index VENDER2_FK on VENDER (
EMPLEADO_VENDEDORID ASC
)
go

/*==============================================================*/
/* Index: VENDER_FK                                             */
/*==============================================================*/
create index VENDER_FK on VENDER (
PRODUCTOID ASC
)
go

alter table ADQUISICION
   add constraint FK_ADQUISIC_ADQUISICI_PRODUCTO foreign key (PRODUCTOID)
      references PRODUCTO (PRODUCTOID)
go

alter table ADQUISICION
   add constraint FK_ADQUISIC_ADQUISICI_CLIENTE foreign key (CLIENTEID)
      references CLIENTE (CLIENTEID)
go

alter table CARGO
   add constraint FK_CARGO_DEPENDENC_DEPARTAM foreign key (DEPARTAMENTOID)
      references DEPARTAMENTO (DEPARTAMENTOID)
go

alter table CIUDAD
   add constraint FK_CIUDAD_UBICACION_SUCURSAL foreign key (SUCURSALID)
      references SUCURSAL (SUCURSALID)
go

alter table CLIENTE
   add constraint FK_CLIENTE_ENCARGADO_EMPLEADO foreign key (EMPLEADO_VENDEDORID)
      references EMPLEADO_VENDEDOR (EMPLEADO_VENDEDORID)
go

alter table CLIENTE
   add constraint FK_CLIENTE_LUGARVENT_SUCURSAL foreign key (SUCURSALID)
      references SUCURSAL (SUCURSALID)
go

alter table CLIENTE
   add constraint FK_CLIENTE_REPRESENT_GERENTE_ foreign key (GERENTE_CLIENTEID)
      references GERENTE_CLIENTE (GERENTE_CLIENTEID)
go

alter table EMPLEADO
   add constraint FK_EMPLEADO_CONTRATO_SUCURSAL foreign key (SUCURSALID)
      references SUCURSAL (SUCURSALID)
go

alter table EMPLEADO
   add constraint FK_EMPLEADO_PERTENECE_CARGO foreign key (CARGOID)
      references CARGO (CARGOID)
go

alter table EMPLEADO_VENDEDOR
   add constraint FK_EMPLEADO_CONTRATOV_SUCURSAL foreign key (SUCURSALID)
      references SUCURSAL (SUCURSALID)
go

alter table GERENTE_CLIENTE
   add constraint FK_GERENTE__REPRESENT_CLIENTE foreign key (CLIENTEID)
      references CLIENTE (CLIENTEID)
go

alter table GERENTE_PROVEEDOR
   add constraint FK_GERENTE__REPRESENT_PROVEEDO foreign key (PROVEEDORID)
      references PROVEEDOR (PROVEEDORID)
go

alter table PRODUCTO
   add constraint FK_PRODUCTO_PROVEER_PROVEEDO foreign key (PROVEEDORID)
      references PROVEEDOR (PROVEEDORID)
go

alter table PROVEEDOR
   add constraint FK_PROVEEDO_NN_SUCURSAL foreign key (SUCURSALID)
      references SUCURSAL (SUCURSALID)
go

alter table PROVEEDOR
   add constraint FK_PROVEEDO_REPRESENT_GERENTE_ foreign key (GERENTE_PROVEEDORID)
      references GERENTE_PROVEEDOR (GERENTE_PROVEEDORID)
go

alter table SUCURSAL
   add constraint FK_SUCURSAL_UBICACION_CIUDAD foreign key (CIUDADID)
      references CIUDAD (CIUDADID)
go

alter table VENDER
   add constraint FK_VENDER_VENDER_PRODUCTO foreign key (PRODUCTOID)
      references PRODUCTO (PRODUCTOID)
go

alter table VENDER
   add constraint FK_VENDER_VENDER2_EMPLEADO foreign key (EMPLEADO_VENDEDORID)
      references EMPLEADO_VENDEDOR (EMPLEADO_VENDEDORID)
go



CREATE VIEW VISTA_CARGO_EDIT
AS
    SELECT
        CARGOID,
        DEPARTAMENTOID,
        CARGO_NOMBRE,
        SALARIOMENSUAL
    FROM CARGO

CREATE VIEW VISTA_CARGO_VIEW
AS
    SELECT *
    FROM CARGO
    WHERE digitador = user_name()

	CREATE VIEW VISTA_CIUDAD_EDIT
AS
    SELECT
        CIUDADID,
        SUCURSALID,
        CIUDAD_NOMBRE
    FROM CIUDAD

CREATE VIEW VISTA_CIUDAD_VIEW
AS
    SELECT *
    FROM CIUDAD
    WHERE digitador = user_name()

	CREATE VIEW VISTA_CLIENTE_EDIT
AS
    SELECT
        CLIENTEID,
        GERENTE_CLIENTEID,
        SUCURSALID,
		EMPLEADO_VENDEDORID,
		CLIENTE_NOMBRE,
		CLIENTE_NIT,
		CLIENTE_DIRECCION,
		CLIENTE_CORREO,
		CLIENTE_TELEFONOMOVIL
    FROM CLIENTE

CREATE VIEW VISTA_CLIENTE_VIEW
AS
    SELECT *
    FROM CLIENTE
    WHERE digitador = user_name()

	CREATE VIEW VISTA_DEPARTAMENTO_EDIT
AS
    SELECT
        DEPARTAMENTOID,
        DEPARTAMENTO_NOMBRE
    FROM DEPARTAMENTO

CREATE VIEW VISTA_DEPARTAMENTO_VIEW
AS
    SELECT *
    FROM DEPARTAMENTO
    WHERE digitador = user_name()

CREATE VIEW VISTA_EMPLEADO_EDIT
AS
    SELECT
        EMPLEADOID,
        CARGOID,
        SUCURSALID,
		EMPLEADO_NOMBRE,
		EMPLEADO_APELLIDO,
		EMPLEADO_TELEFONOMOVIL,
		EMPLEADO_DIRECCION,
		EMPLEADO_GENERO,
		EMPLEADO_CORREO
		EMPLEADO_FECHAINGRESO,
		EMPLEADO_SALARIOMENSUAL
    FROM EMPLEADO

CREATE VIEW VISTA_EMPLEADO_VIEW
AS
    SELECT *
    FROM EMPLEADO
    WHERE digitador = user_name()

CREATE VIEW VISTA_EMPLEADO_VENDEDOR_EDIT
AS
    SELECT
        EMPLEADO_VENDEDORID,
        SUCURSALID,
        EMPLEADOVENDEDOR_NOMBRE,
		EMPLEADOVENDEDOR_APELLIDO,
		EMPLEADOVENDEDOR_TELEFONOMOVIL,
		EMPLEADOVENDEDOR_DIRECCION,
		EMPLEADOVENDEDOR_GENERO,
		EMPLEADOVENDEDOR_CORREO,
		EMPLEADOVENDEDOR_FECHAINGRESO
		EMPLEADOVENDEDOR_SALARIOMENSUAL,
		COMISION
    FROM EMPLEADO_VENDEDOR

CREATE VIEW VISTA_EMPLEADO_VENDEDOR_VIEW
AS
    SELECT *
    FROM EMPLEADO_VENDEDOR
    WHERE digitador = user_name()

CREATE VIEW VISTA_GERENTE_CLIENTE_EDIT
AS
    SELECT
        GERENTE_CLIENTEID,
        CLIENTEID,
        GERENTECLIENTE_NOMBRE,
		GERENTECLIENTE_DOCUMENTO,
		GERENTECLIENTE_TELEFONOMOVIL
    FROM GERENTE_CLIENTE

CREATE VIEW VISTA_GERENTE_CLIENTE_VIEW
AS
    SELECT *
    FROM GERENTE_CLIENTE
    WHERE digitador = user_name()

CREATE VIEW VISTA_GERENTE_PROVEEDOR_EDIT
AS
    SELECT
        GERENTE_PROVEEDORID,
        PROVEEDORID,
        GERENTEPROVEEDOR_NOMBRE,
		GERENTEPROVEEDOR_DOCUMENTO,
		GERENTEPROVEEDOR_TELEFONO
    FROM GERENTE_PROVEEDOR

CREATE VIEW VISTA_GERENTE_PROVEEDOR_VIEW
AS
    SELECT *
    FROM GERENTE_PROVEEDOR
    WHERE digitador = user_name()


CREATE VIEW VISTA_GERENTE_PROVEEDOR_EDIT
AS
    SELECT
        GERENTE_PROVEEDORID,
        PROVEEDORID,
        GERENTEPROVEEDOR_NOMBRE,
		GERENTEPROVEEDOR_DOCUMENTO,
		GERENTEPROVEEDOR_TELEFONO
    FROM GERENTE_PROVEEDOR

CREATE VIEW VISTA_GERENTE_PROVEEDOR_VIEW
AS
    SELECT *
    FROM GERENTE_PROVEEDOR
    WHERE digitador = user_name()

CREATE VIEW VISTA_PRODUCTO_EDIT
AS
    SELECT
        PRODUCTOID,
        PROVEEDORID,
        PRODUCTO_NOMBRE,
		PRODUCTO_PRECIOCOMPRA,
		PRODUCTO_PRECIOVENTA,
		PRODUCTO_FECHAADQUISICION
    FROM PRODUCTO

CREATE VIEW VISTA_PRODUCTO_VIEW
AS
    SELECT *
    FROM PRODUCTO
    WHERE digitador = user_name()

CREATE VIEW VISTA_PRODUCTO_EDIT
AS
    SELECT
        PRODUCTOID,
        PROVEEDORID,
        PRODUCTO_NOMBRE,
		PRODUCTO_PRECIOCOMPRA,
		PRODUCTO_PRECIOVENTA,
		PRODUCTO_FECHAADQUISICION
    FROM PRODUCTO

CREATE VIEW VISTA_PRODUCTO_VIEW
AS
    SELECT *
    FROM PRODUCTO
    WHERE digitador = user_name()

CREATE VIEW VISTA_PROVEEDOR_EDIT
AS
    SELECT
        PROVEEDORID,
        GERENTE_PROVEEDORID,
        SUCURSALID,
		PROVEEDOR_NOMBRE,
		PROVEEDOR_NIT,
		PROVEEDOR_NUMEROCENTROLLAMADAS,
		PROVEEDOR_DIRECCION
    FROM PROVEEDOR

CREATE VIEW VISTA_PROVEEDOR_VIEW
AS
    SELECT *
    FROM PROVEEDOR
    WHERE digitador = user_name()

CREATE VIEW VISTA_SUCURSAL_EDIT
AS
    SELECT
        SUCURSALID,
        CIUDADID,
        SUCURSAL_NOMBRE
    FROM SUCURSAL

CREATE VIEW VISTA_SUCURSAL_VIEW
AS
    SELECT *
    FROM SUCURSAL
    WHERE digitador = user_name()

GRANT SELECT ON VISTA_Producto_VIEW TO maarojasga
GRANT SELECT ON VISTA_Producto_VIEW TO negarzonc
GRANT SELECT ON VISTA_Producto_VIEW TO dabonilla
GRANT INSERT ON VISTA_Producto_EDIT TO maarojasga
GRANT INSERT ON VISTA_Producto_EDIT TO negarzonc
GRANT INSERT ON VISTA_Producto_EDIT TO dabonilla

GRANT SELECT ON VISTA_Proveedor_VIEW TO maarojasga
GRANT SELECT ON VISTA_Proveedor_VIEW TO negarzonc
GRANT SELECT ON VISTA_Proveedor_VIEW TO dabonilla
GRANT INSERT ON VISTA_Proveedor_EDIT TO maarojasga
GRANT INSERT ON VISTA_Proveedor_EDIT TO negarzonc
GRANT INSERT ON VISTA_Proveedor_EDIT TO dabonilla

GRANT SELECT ON VISTA_sucursal_VIEW TO maarojasga
GRANT SELECT ON VISTA_sucursal_VIEW TO negarzonc
GRANT SELECT ON VISTA_sucursal_VIEW TO dabonilla
GRANT INSERT ON VISTA_sucursal_EDIT TO maarojasga
GRANT INSERT ON VISTA_sucursal_EDIT TO negarzonc
GRANT INSERT ON VISTA_sucursal_EDIT TO dabonilla

GRANT SELECT ON VISTA_GERENTE_PROVEEDOR_VIEW TO maarojasga
GRANT SELECT ON VISTA_GERENTE_PROVEEDOR_VIEW TO negarzonc
GRANT SELECT ON VISTA_GERENTE_PROVEEDOR_VIEW TO dabonilla
GRANT INSERT ON VISTA_GERENTE_PROVEEDOR_EDIT TO maarojasga
GRANT INSERT ON VISTA_GERENTE_PROVEEDOR_EDIT TO negarzonc
GRANT INSERT ON VISTA_GERENTE_PROVEEDOR_EDIT TO dabonilla

GRANT SELECT ON VISTA_GERENTE_PROVEEDOR_VIEW TO maarojasga
GRANT SELECT ON VISTA_GERENTE_PROVEEDOR_VIEW TO negarzonc
GRANT SELECT ON VISTA_GERENTE_PROVEEDOR_VIEW TO dabonilla
GRANT INSERT ON VISTA_GERENTE_PROVEEDOR_EDIT TO maarojasga
GRANT INSERT ON VISTA_GERENTE_PROVEEDOR_EDIT TO negarzonc
GRANT INSERT ON VISTA_GERENTE_PROVEEDOR_EDIT TO dabonilla

GRANT SELECT ON VISTA_DEPARTAMENTO_VIEW TO maarojasga
GRANT SELECT ON VISTA_DEPARTAMENTO_VIEW TO negarzonc
GRANT SELECT ON VISTA_DEPARTAMENTO_VIEW TO dabonilla
GRANT INSERT ON VISTA_DEPARTAMENTO_EDIT TO maarojasga
GRANT INSERT ON VISTA_DEPARTAMENTO_EDIT TO negarzonc
GRANT INSERT ON VISTA_DEPARTAMENTO_EDIT TO dabonilla

GRANT SELECT ON VISTA_DEPARTAMENTO_VIEW TO maarojasga
GRANT SELECT ON VISTA_DEPARTAMENTO_VIEW TO negarzonc
GRANT SELECT ON VISTA_DEPARTAMENTO_VIEW TO dabonilla
GRANT INSERT ON VISTA_DEPARTAMENTO_EDIT TO maarojasga
GRANT INSERT ON VISTA_DEPARTAMENTO_EDIT TO negarzonc
GRANT INSERT ON VISTA_DEPARTAMENTO_EDIT TO dabonilla

GRANT SELECT ON VISTA_CLIENTE_VIEW TO maarojasga
GRANT SELECT ON VISTA_CLIENTE_VIEW TO negarzonc
GRANT SELECT ON VISTA_CLIENTE_VIEW TO dabonilla
GRANT INSERT ON VISTA_CLIENTE_EDIT TO maarojasga
GRANT INSERT ON VISTA_CLIENTE_EDIT TO negarzonc
GRANT INSERT ON VISTA_CLIENTE_EDIT TO dabonilla

GRANT SELECT ON VISTA_EMPLEADO_VENDEDOR_VIEW TO maarojasga
GRANT SELECT ON VISTA_EMPLEADO_VENDEDOR_VIEW TO negarzonc
GRANT SELECT ON VISTA_EMPLEADO_VENDEDOR_VIEW TO dabonilla
GRANT INSERT ON VISTA_EMPLEADO_VENDEDOR_EDIT TO maarojasga
GRANT INSERT ON VISTA_EMPLEADO_VENDEDOR_EDIT TO negarzonc
GRANT INSERT ON VISTA_EMPLEADO_VENDEDOR_EDIT TO dabonilla

GRANT SELECT ON VISTA_EMPLEADO_VIEW TO maarojasga
GRANT SELECT ON VISTA_EMPLEADO_VIEW TO negarzonc
GRANT SELECT ON VISTA_EMPLEADO_VIEW TO dabonilla
GRANT INSERT ON VISTA_EMPLEADO_EDIT TO maarojasga
GRANT INSERT ON VISTA_EMPLEADO_EDIT TO negarzonc
GRANT INSERT ON VISTA_EMPLEADO_EDIT TO dabonilla

GRANT SELECT ON VISTA_GERENTE_CLIENTE_VIEW TO maarojasga
GRANT SELECT ON VISTA_GERENTE_CLIENTE_VIEW TO negarzonc
GRANT SELECT ON VISTA_GERENTE_CLIENTE_VIEW TO dabonilla
GRANT INSERT ON VISTA_GERENTE_CLIENTE_EDIT TO maarojasga
GRANT INSERT ON VISTA_GERENTE_CLIENTE_EDIT TO negarzonc
GRANT INSERT ON VISTA_GERENTE_CLIENTE_EDIT TO dabonilla

GRANT SELECT ON VISTA_CIUDAD_VIEW TO maarojasga
GRANT SELECT ON VISTA_CIUDAD_VIEW TO negarzonc
GRANT SELECT ON VISTA_CIUDAD_VIEW TO dabonilla
GRANT INSERT ON VISTA_CIUDAD_EDIT TO maarojasga
GRANT INSERT ON VISTA_CIUDAD_EDIT TO negarzonc
GRANT INSERT ON VISTA_CIUDAD_EDIT TO dabonilla

GRANT SELECT ON VISTA_CARGO_VIEW TO maarojasga
GRANT SELECT ON VISTA_CARGO_VIEW TO negarzonc
GRANT SELECT ON VISTA_CARGO_VIEW TO dabonilla
GRANT INSERT ON VISTA_CARGO_EDIT TO maarojasga
GRANT INSERT ON VISTA_CARGO_EDIT TO negarzonc
GRANT INSERT ON VISTA_CARGO_EDIT TO dabonilla


