/*==============================================================*/
/* DBMS name:      Sybase AS Enterprise 15.7                    */
/* Created on:     19/11/2020 10:16:33 a.�m.                    */
/*==============================================================*/


if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('ADQUISICION'))
            where name = 'FK_ADQUISIC_ADQUISICI_CLIENTE' and type = 'RI')
   alter table ADQUISICION
      drop constraint FK_ADQUISIC_ADQUISICI_CLIENTE
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('ADQUISICION'))
            where name = 'FK_ADQUISIC_ADQUISICI_PRODUCTO' and type = 'RI')
   alter table ADQUISICION
      drop constraint FK_ADQUISIC_ADQUISICI_PRODUCTO
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('CARGO'))
            where name = 'FK_CARGO_DEFINIR_S_RANGO' and type = 'RI')
   alter table CARGO
      drop constraint FK_CARGO_DEFINIR_S_RANGO
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('CIUDAD'))
            where name = 'FK_CIUDAD_UBICACION_SUCURSAL' and type = 'RI')
   alter table CIUDAD
      drop constraint FK_CIUDAD_UBICACION_SUCURSAL
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('CLIENTE'))
            where name = 'FK_CLIENTE_ENCARGADO_EMPLEADO' and type = 'RI')
   alter table CLIENTE
      drop constraint FK_CLIENTE_ENCARGADO_EMPLEADO
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('CLIENTE'))
            where name = 'FK_CLIENTE_LUGARVENT_SUCURSAL' and type = 'RI')
   alter table CLIENTE
      drop constraint FK_CLIENTE_LUGARVENT_SUCURSAL
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('CLIENTE'))
            where name = 'FK_CLIENTE_REPRESENT_GERENTE_' and type = 'RI')
   alter table CLIENTE
      drop constraint FK_CLIENTE_REPRESENT_GERENTE_
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('EMPLEADO'))
            where name = 'FK_EMPLEADO_CONTRATO_SUCURSAL' and type = 'RI')
   alter table EMPLEADO
      drop constraint FK_EMPLEADO_CONTRATO_SUCURSAL
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('EMPLEADO'))
            where name = 'FK_EMPLEADO_PERTENECE_CARGO' and type = 'RI')
   alter table EMPLEADO
      drop constraint FK_EMPLEADO_PERTENECE_CARGO
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('EMPLEADO_VENDEDOR'))
            where name = 'FK_EMPLEADO_CONTRATOV_SUCURSAL' and type = 'RI')
   alter table EMPLEADO_VENDEDOR
      drop constraint FK_EMPLEADO_CONTRATOV_SUCURSAL
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('GERENTE_CLIENTE'))
            where name = 'FK_GERENTE__REPRESENT_CLIENTE' and type = 'RI')
   alter table GERENTE_CLIENTE
      drop constraint FK_GERENTE__REPRESENT_CLIENTE
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('GERENTE_PROVEEDOR'))
            where name = 'FK_GERENTE__REPRESENT_PROVEEDO' and type = 'RI')
   alter table GERENTE_PROVEEDOR
      drop constraint FK_GERENTE__REPRESENT_PROVEEDO
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('INVENTARIO'))
            where name = 'FK_INVENTAR_RELATIONS_PRE_COMP' and type = 'RI')
   alter table INVENTARIO
      drop constraint FK_INVENTAR_RELATIONS_PRE_COMP
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('INVENTARIO'))
            where name = 'FK_INVENTAR_RELATIONS_POS_COMP' and type = 'RI')
   alter table INVENTARIO
      drop constraint FK_INVENTAR_RELATIONS_POS_COMP
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('LISTA_CANDIDATOS'))
            where name = 'FK_LISTA_CA_SELECCION_DEPARTAM' and type = 'RI')
   alter table LISTA_CANDIDATOS
      drop constraint FK_LISTA_CA_SELECCION_DEPARTAM
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('LISTA_CANDIDATOS'))
            where name = 'FK_LISTA_CA_VACANTES_CARGO' and type = 'RI')
   alter table LISTA_CANDIDATOS
      drop constraint FK_LISTA_CA_VACANTES_CARGO
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('POS_COMPRA'))
            where name = 'FK_POS_COMP_RECIBE_CLIENTE' and type = 'RI')
   alter table POS_COMPRA
      drop constraint FK_POS_COMP_RECIBE_CLIENTE
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('PRE_COMPRA'))
            where name = 'FK_PRE_COMP_RELATIONS_CLIENTE' and type = 'RI')
   alter table PRE_COMPRA
      drop constraint FK_PRE_COMP_RELATIONS_CLIENTE
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('PRODUCTO'))
            where name = 'FK_PRODUCTO_EXISTENCI_INVENTAR' and type = 'RI')
   alter table PRODUCTO
      drop constraint FK_PRODUCTO_EXISTENCI_INVENTAR
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('PRODUCTO'))
            where name = 'FK_PRODUCTO_PROVEER_PROVEEDO' and type = 'RI')
   alter table PRODUCTO
      drop constraint FK_PRODUCTO_PROVEER_PROVEEDO
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('PROVEEDOR'))
            where name = 'FK_PROVEEDO_NN_SUCURSAL' and type = 'RI')
   alter table PROVEEDOR
      drop constraint FK_PROVEEDO_NN_SUCURSAL
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('PROVEEDOR'))
            where name = 'FK_PROVEEDO_REPRESENT_GERENTE_' and type = 'RI')
   alter table PROVEEDOR
      drop constraint FK_PROVEEDO_REPRESENT_GERENTE_
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('SUCURSAL'))
            where name = 'FK_SUCURSAL_DEP1_DEPARTAM' and type = 'RI')
   alter table SUCURSAL
      drop constraint FK_SUCURSAL_DEP1_DEPARTAM
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('SUCURSAL'))
            where name = 'FK_SUCURSAL_DEP2_DEPARTAM' and type = 'RI')
   alter table SUCURSAL
      drop constraint FK_SUCURSAL_DEP2_DEPARTAM
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('SUCURSAL'))
            where name = 'FK_SUCURSAL_DEP3_DEPARTAM' and type = 'RI')
   alter table SUCURSAL
      drop constraint FK_SUCURSAL_DEP3_DEPARTAM
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('SUCURSAL'))
            where name = 'FK_SUCURSAL_DEP4_DEPARTAM' and type = 'RI')
   alter table SUCURSAL
      drop constraint FK_SUCURSAL_DEP4_DEPARTAM
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('SUCURSAL'))
            where name = 'FK_SUCURSAL_DEP5_DEPARTAM' and type = 'RI')
   alter table SUCURSAL
      drop constraint FK_SUCURSAL_DEP5_DEPARTAM
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('SUCURSAL'))
            where name = 'FK_SUCURSAL_DEP6_DEPARTAM' and type = 'RI')
   alter table SUCURSAL
      drop constraint FK_SUCURSAL_DEP6_DEPARTAM
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('SUCURSAL'))
            where name = 'FK_SUCURSAL_RELATIONS_INVENTAR' and type = 'RI')
   alter table SUCURSAL
      drop constraint FK_SUCURSAL_RELATIONS_INVENTAR
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('SUCURSAL'))
            where name = 'FK_SUCURSAL_TIENE_EMPRESA' and type = 'RI')
   alter table SUCURSAL
      drop constraint FK_SUCURSAL_TIENE_EMPRESA
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('SUCURSAL'))
            where name = 'FK_SUCURSAL_UBICACION_CIUDAD' and type = 'RI')
   alter table SUCURSAL
      drop constraint FK_SUCURSAL_UBICACION_CIUDAD
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('VENDER'))
            where name = 'FK_VENDER_VENDER_EMPLEADO' and type = 'RI')
   alter table VENDER
      drop constraint FK_VENDER_VENDER_EMPLEADO
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('VENDER'))
            where name = 'FK_VENDER_VENDER2_PRODUCTO' and type = 'RI')
   alter table VENDER
      drop constraint FK_VENDER_VENDER2_PRODUCTO
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
            from  sysindexes
           where  id    = object_id('ADQUISICION')
            and   name  = 'ADQUISICION_FK'
            and   indid > 0
            and   indid < 255)
   drop index ADQUISICION.ADQUISICION_FK
go

if exists (select 1
            from  sysobjects
            where id = object_id('ADQUISICION')
            and   type = 'U')
   drop table ADQUISICION
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CARGO')
            and   name  = 'DEFINIR_SALARIO_FK'
            and   indid > 0
            and   indid < 255)
   drop index CARGO.DEFINIR_SALARIO_FK
go

if exists (select 1
            from  sysobjects
            where id = object_id('CARGO')
            and   type = 'U')
   drop table CARGO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CIUDAD')
            and   name  = 'UBICACION2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CIUDAD.UBICACION2_FK
go

if exists (select 1
            from  sysobjects
            where id = object_id('CIUDAD')
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
            and   name  = 'REPRESENTANTE3_FK'
            and   indid > 0
            and   indid < 255)
   drop index CLIENTE.REPRESENTANTE3_FK
go

if exists (select 1
            from  sysobjects
            where id = object_id('CLIENTE')
            and   type = 'U')
   drop table CLIENTE
go

if exists (select 1
            from  sysobjects
            where id = object_id('DEPARTAMENTO_CONTABILIDAD')
            and   type = 'U')
   drop table DEPARTAMENTO_CONTABILIDAD
go

if exists (select 1
            from  sysobjects
            where id = object_id('DEPARTAMENTO_JURIDICO')
            and   type = 'U')
   drop table DEPARTAMENTO_JURIDICO
go

if exists (select 1
            from  sysobjects
            where id = object_id('DEPARTAMENTO_MERCADEO')
            and   type = 'U')
   drop table DEPARTAMENTO_MERCADEO
go

if exists (select 1
            from  sysobjects
            where id = object_id('DEPARTAMENTO_RECURSOSHUMANOS')
            and   type = 'U')
   drop table DEPARTAMENTO_RECURSOSHUMANOS
go

if exists (select 1
            from  sysobjects
            where id = object_id('DEPARTAMENTO_SISTEMAS')
            and   type = 'U')
   drop table DEPARTAMENTO_SISTEMAS
go

if exists (select 1
            from  sysobjects
            where id = object_id('DEPARTAMENTO_VENTAS')
            and   type = 'U')
   drop table DEPARTAMENTO_VENTAS
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
            where id = object_id('EMPLEADO')
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
            where id = object_id('EMPLEADO_VENDEDOR')
            and   type = 'U')
   drop table EMPLEADO_VENDEDOR
go

if exists (select 1
            from  sysobjects
            where id = object_id('EMPRESA')
            and   type = 'U')
   drop table EMPRESA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GERENTE_CLIENTE')
            and   name  = 'REPRESENTANTE2_FK'
            and   indid > 0
            and   indid < 255)
   drop index GERENTE_CLIENTE.REPRESENTANTE2_FK
go

if exists (select 1
            from  sysobjects
            where id = object_id('GERENTE_CLIENTE')
            and   type = 'U')
   drop table GERENTE_CLIENTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GERENTE_PROVEEDOR')
            and   name  = 'REPRESENTAR3_FK'
            and   indid > 0
            and   indid < 255)
   drop index GERENTE_PROVEEDOR.REPRESENTAR3_FK
go

if exists (select 1
            from  sysobjects
            where id = object_id('GERENTE_PROVEEDOR')
            and   type = 'U')
   drop table GERENTE_PROVEEDOR
go

if exists (select 1
            from  sysobjects
            where id = object_id('HISTORIAEMPLEADO')
            and   type = 'U')
   drop table HISTORIAEMPLEADO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('INVENTARIO')
            and   name  = 'RELATIONSHIP_26_FK'
            and   indid > 0
            and   indid < 255)
   drop index INVENTARIO.RELATIONSHIP_26_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('INVENTARIO')
            and   name  = 'RELATIONSHIP_23_FK'
            and   indid > 0
            and   indid < 255)
   drop index INVENTARIO.RELATIONSHIP_23_FK
go

if exists (select 1
            from  sysobjects
            where id = object_id('INVENTARIO')
            and   type = 'U')
   drop table INVENTARIO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LISTA_CANDIDATOS')
            and   name  = 'VACANTES_FK'
            and   indid > 0
            and   indid < 255)
   drop index LISTA_CANDIDATOS.VACANTES_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LISTA_CANDIDATOS')
            and   name  = 'SELECCION_FK'
            and   indid > 0
            and   indid < 255)
   drop index LISTA_CANDIDATOS.SELECCION_FK
go

if exists (select 1
            from  sysobjects
            where id = object_id('LISTA_CANDIDATOS')
            and   type = 'U')
   drop table LISTA_CANDIDATOS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('POS_COMPRA')
            and   name  = 'RECIBE_FK'
            and   indid > 0
            and   indid < 255)
   drop index POS_COMPRA.RECIBE_FK
go

if exists (select 1
            from  sysobjects
            where id = object_id('POS_COMPRA')
            and   type = 'U')
   drop table POS_COMPRA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PRE_COMPRA')
            and   name  = 'RELATIONSHIP_24_FK'
            and   indid > 0
            and   indid < 255)
   drop index PRE_COMPRA.RELATIONSHIP_24_FK
go

if exists (select 1
            from  sysobjects
            where id = object_id('PRE_COMPRA')
            and   type = 'U')
   drop table PRE_COMPRA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PRODUCTO')
            and   name  = 'EXISTENCIA_FK'
            and   indid > 0
            and   indid < 255)
   drop index PRODUCTO.EXISTENCIA_FK
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
            where id = object_id('PRODUCTO')
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
            and   name  = 'REPRESENTAR2_FK'
            and   indid > 0
            and   indid < 255)
   drop index PROVEEDOR.REPRESENTAR2_FK
go

if exists (select 1
            from  sysobjects
            where id = object_id('PROVEEDOR')
            and   type = 'U')
   drop table PROVEEDOR
go

if exists (select 1
            from  sysobjects
            where id = object_id('RANGO')
            and   type = 'U')
   drop table RANGO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SUCURSAL')
            and   name  = 'RELATIONSHIP_27_FK'
            and   indid > 0
            and   indid < 255)
   drop index SUCURSAL.RELATIONSHIP_27_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SUCURSAL')
            and   name  = 'DEP6_FK'
            and   indid > 0
            and   indid < 255)
   drop index SUCURSAL.DEP6_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SUCURSAL')
            and   name  = 'DEP5_FK'
            and   indid > 0
            and   indid < 255)
   drop index SUCURSAL.DEP5_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SUCURSAL')
            and   name  = 'DEP4_FK'
            and   indid > 0
            and   indid < 255)
   drop index SUCURSAL.DEP4_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SUCURSAL')
            and   name  = 'DEP3_FK'
            and   indid > 0
            and   indid < 255)
   drop index SUCURSAL.DEP3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SUCURSAL')
            and   name  = 'DEP2_FK'
            and   indid > 0
            and   indid < 255)
   drop index SUCURSAL.DEP2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SUCURSAL')
            and   name  = 'DEP1_FK'
            and   indid > 0
            and   indid < 255)
   drop index SUCURSAL.DEP1_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SUCURSAL')
            and   name  = 'TIENE_FK'
            and   indid > 0
            and   indid < 255)
   drop index SUCURSAL.TIENE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SUCURSAL')
            and   name  = 'UBICACION3_FK'
            and   indid > 0
            and   indid < 255)
   drop index SUCURSAL.UBICACION3_FK
go

if exists (select 1
            from  sysobjects
            where id = object_id('SUCURSAL')
            and   type = 'U')
   drop table SUCURSAL
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
            from  sysindexes
           where  id    = object_id('VENDER')
            and   name  = 'VENDER_FK'
            and   indid > 0
            and   indid < 255)
   drop index VENDER.VENDER_FK
go

if exists (select 1
            from  sysobjects
            where id = object_id('VENDER')
            and   type = 'U')
   drop table VENDER
go

/*==============================================================*/
/* Table: ADQUISICION                                           */
/*==============================================================*/
create table ADQUISICION (
   CLIENTEID            int                            not null,
   PRODUCTOID           int                            not null,
   constraint PK_ADQUISICION primary key (CLIENTEID, PRODUCTOID)
)
go

/*==============================================================*/
/* Index: ADQUISICION_FK                                        */
/*==============================================================*/
create index ADQUISICION_FK on ADQUISICION (
CLIENTEID ASC
)
go

/*==============================================================*/
/* Index: ADQUISICION2_FK                                       */
/*==============================================================*/
create index ADQUISICION2_FK on ADQUISICION (
PRODUCTOID ASC
)
go

/*==============================================================*/
/* Table: CARGO                                                 */
/*==============================================================*/
create table CARGO (
   CARGOID              int                            not null,
   MAX_SALARIO          bigint                         not null,
   CARGO_NOMBRE         varchar(100)                   not null,
   SALARIOMENSUAL       bigint                         not null,
   constraint PK_CARGO primary key (CARGOID)
)
go

/*==============================================================*/
/* Index: DEFINIR_SALARIO_FK                                    */
/*==============================================================*/
create index DEFINIR_SALARIO_FK on CARGO (
MAX_SALARIO ASC
)
go

/*==============================================================*/
/* Table: CIUDAD                                                */
/*==============================================================*/
create table CIUDAD (
   CIUDADID             int                            not null,
   SUCURSALID           int                            null,
   CIUDAD_NOMBRE        varchar(100)                   not null,
   constraint PK_CIUDAD primary key (CIUDADID)
)
go

/*==============================================================*/
/* Index: UBICACION2_FK                                         */
/*==============================================================*/
create index UBICACION2_FK on CIUDAD (
SUCURSALID ASC
)
go

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   CLIENTEID            int                            not null,
   SUCURSALID           int                            not null,
   EMPLEADO_VENDEDORID  int                            not null,
   GERENTE_CLIENTEID    int                            not null,
   CLIENTE_NOMBRE       varchar(100)                   not null,
   CLIENTE_NIT          bigint                         not null,
   CLIENTE_DIRECCION    varchar(100)                   not null,
   CLIENTE_CORREO       varchar(100)                   not null,
   CLIENTE_TELEFONOMOVIL bigint                         not null,
   constraint PK_CLIENTE primary key (CLIENTEID)
)
go

/*==============================================================*/
/* Index: REPRESENTANTE3_FK                                     */
/*==============================================================*/
create index REPRESENTANTE3_FK on CLIENTE (
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
/* Table: DEPARTAMENTO_CONTABILIDAD                             */
/*==============================================================*/
create table DEPARTAMENTO_CONTABILIDAD (
   CONTABILIDAD_ID      int                            not null,
   CONTABILIDAD_NOMBREDIRECTOR varchar(100)                   not null,
   CONTABILIDAD_DOCUMENTODIRECTOR bigint                         not null,
   CONTABILIDAD_SALARIO bigint                         not null
      constraint CKC_CONTABILIDAD_SALA_DEPARTAM check (CONTABILIDAD_SALARIO between 3500000 and 4000000),
   constraint PK_DEPARTAMENTO_CONTABILIDAD primary key (CONTABILIDAD_ID)
)
go

/*==============================================================*/
/* Table: DEPARTAMENTO_JURIDICO                                 */
/*==============================================================*/
create table DEPARTAMENTO_JURIDICO (
   JURIDICO_ID          bigint                         not null,
   JURIDICO_NOMBREDIRECTOR varchar(100)                   not null,
   JURIDICO_DOCUMENTODIRECTOR bigint                         not null,
   JURIDICO_SALARIO     bigint                         not null
      constraint CKC_JURIDICO_SALARIO_DEPARTAM check (JURIDICO_SALARIO between 3500000 and 4000000),
   constraint PK_DEPARTAMENTO_JURIDICO primary key (JURIDICO_ID)
)
go

/*==============================================================*/
/* Table: DEPARTAMENTO_MERCADEO                                 */
/*==============================================================*/
create table DEPARTAMENTO_MERCADEO (
   MERCADEO_ID          int                            not null,
   MERCADEO_NOMBREDIRECTOR varchar(100)                   not null,
   MERCADEO_DOCUMENTODIRECTOR bigint                         not null,
   MERCADEO_SALARIO     bigint                         not null
      constraint CKC_MERCADEO_SALARIO_DEPARTAM check (MERCADEO_SALARIO between 3500000 and 4000000),
   constraint PK_DEPARTAMENTO_MERCADEO primary key (MERCADEO_ID)
)
go

/*==============================================================*/
/* Table: DEPARTAMENTO_RECURSOSHUMANOS                          */
/*==============================================================*/
create table DEPARTAMENTO_RECURSOSHUMANOS (
   RECURSOSHUMANOS_ID   int                            not null,
   RECURSOSHUMANOS_NOMBREDIRECTOR varchar(100)                   not null,
   RECURSOSHUMANOS_DOCUMENTODIRECTOR bigint                         not null,
   RECURSOSHUMANOS_SALARIO bigint                         not null
      constraint CKC_RECURSOSHUMANOS_S_DEPARTAM check (RECURSOSHUMANOS_SALARIO between 3500000 and 4000000),
   constraint PK_DEPARTAMENTO_RECURSOSHUMANO primary key (RECURSOSHUMANOS_ID)
)
go

/*==============================================================*/
/* Table: DEPARTAMENTO_SISTEMAS                                 */
/*==============================================================*/
create table DEPARTAMENTO_SISTEMAS (
   SISTEMAS_ID          int                            not null,
   SISTEMAS_NOMBREDIRECTOR varchar(100)                   not null,
   SISTEMAS_DOCUMENTODIRECTOR bigint                         not null,
   SISTEMAS_SALARIO     bigint                         not null
      constraint CKC_SISTEMAS_SALARIO_DEPARTAM check (SISTEMAS_SALARIO between 3500000 and 4000000),
   constraint PK_DEPARTAMENTO_SISTEMAS primary key (SISTEMAS_ID)
)
go

/*==============================================================*/
/* Table: DEPARTAMENTO_VENTAS                                   */
/*==============================================================*/
create table DEPARTAMENTO_VENTAS (
   VENTAS_ID            int                            not null,
   VENTAS_NOMBREDIRECTOR varchar(100)                   not null,
   VENTAS_DOCUMENTODIRECTOR bigint                         not null,
   VENTAS_SALARIO       bigint                         not null,
   constraint PK_DEPARTAMENTO_VENTAS primary key (VENTAS_ID)
)
go

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   EMPLEADOID           int                            not null,
   SUCURSALID           int                            not null,
   CARGOID              int                            not null,
   EMPLEADO_NOMBRE      varchar(100)                   not null,
   EMPLEADO_APELLIDO    varchar(100)                   not null,
   EMPLEADO_TELEFONOMOVIL bigint                         not null,
   EMPLEADO_DIRECCION   varchar(100)                   not null,
   EMPLEADO_GENERO      varchar(100)                   null,
   EMPLEADO_CORREO      varchar(100)                   not null,
   EMPLEADO_FECHAINGRESO date                           not null,
   constraint PK_EMPLEADO primary key (EMPLEADOID)
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
   EMPLEADO_VENDEDORID  int                            not null,
   SUCURSALID           int                            not null,
   EMPLEADOVENDEDOR_NOMBRE varchar(100)                   not null,
   EMPLEADOVENDEDOR_APELLIDO varchar(100)                   not null,
   EMPLEADOVENDEDOR_TELEFONOMOVIL bigint                         not null,
   EMPLEADOVENDEDOR_DIRECCION varchar(100)                   not null,
   EMPLEADOVENDEDOR_GENERO varchar(100)                   null,
   EMPLEADOVENDEDOR_CORREO varchar(100)                   not null,
   EMPLEADOVENDEDOR_FECHAINGRESO date                           not null,
   EMPLEADOVENDEDOR_SALARIOMENSUAL bigint                         not null,
   COMISION             bigint                         not null,
   constraint PK_EMPLEADO_VENDEDOR primary key (EMPLEADO_VENDEDORID)
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
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
   EMPRESA_NOMBRE       varchar(100)                   not null,
   EMPRESA_NOMBREGERENTE varchar(100)                   not null,
   EMPRESA_NOMBRESUBGERENTE varchar(100)                   not null,
   EMPRESA_NIT          bigint                         not null,
   constraint PK_EMPRESA primary key (EMPRESA_NOMBRE)
)
go

/*==============================================================*/
/* Table: GERENTE_CLIENTE                                       */
/*==============================================================*/
create table GERENTE_CLIENTE (
   GERENTE_CLIENTEID    int                            not null,
   CLIENTEID            int                            null,
   GERENTECLIENTE_NOMBRE varchar(100)                   not null,
   GERENTECLIENTE_DOCUMENTO bigint                         not null,
   GERENTECLIENTE_TELEFONOMOVIL bigint                         not null,
   constraint PK_GERENTE_CLIENTE primary key (GERENTE_CLIENTEID)
)
go

/*==============================================================*/
/* Index: REPRESENTANTE2_FK                                     */
/*==============================================================*/
create index REPRESENTANTE2_FK on GERENTE_CLIENTE (
CLIENTEID ASC
)
go

/*==============================================================*/
/* Table: GERENTE_PROVEEDOR                                     */
/*==============================================================*/
create table GERENTE_PROVEEDOR (
   GERENTE_PROVEEDORID  int                            not null,
   PROVEEDORID          int                            null,
   GERENTEPROVEEDOR_NOMBRE varchar(100)                   not null,
   GERENTEPROVEEDOR_DOCUMENTO bigint                         not null,
   GERENTEPROVEEDOR_TELEFONO bigint                         not null,
   constraint PK_GERENTE_PROVEEDOR primary key (GERENTE_PROVEEDORID)
)
go

/*==============================================================*/
/* Index: REPRESENTAR3_FK                                       */
/*==============================================================*/
create index REPRESENTAR3_FK on GERENTE_PROVEEDOR (
PROVEEDORID ASC
)
go

/*==============================================================*/
/* Table: HISTORIAEMPLEADO                                      */
/*==============================================================*/
create table HISTORIAEMPLEADO (
   HISTORIA_ID          int                            not null,
   HISTORIA_FECHAINGRESO date                           not null,
   HISTORIA_FECHARETIRO date                           not null,
   HISTORIA_ID_EMPLEADO int                            null,
   HISTORIA_ID_EMPLEADOVENDEDOR int                            null,
   HISTORIA_DOCUMENTOEMPLEADO bigint                         not null,
   HISTORIA_NOMBREEMPLEADO varchar(100)                   not null,
   HISTORIA_CARGOEMPLEADO varchar(100)                   not null,
   HISTORIA_FECHACAMBIOCARGO date                           not null,
   constraint PK_HISTORIAEMPLEADO primary key (HISTORIA_ID)
)
go

/*==============================================================*/
/* Table: INVENTARIO                                            */
/*==============================================================*/
create table INVENTARIO (
   INVENTARIO_ID        int                            not null,
   POSCOMPRA_ID         int                            null,
   PRECOMPRA_ID         int                            null,
   INVENTARIO_CANTIDAD  bigint                         not null,
   constraint PK_INVENTARIO primary key (INVENTARIO_ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_23_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_23_FK on INVENTARIO (
PRECOMPRA_ID ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_26_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_26_FK on INVENTARIO (
POSCOMPRA_ID ASC
)
go

/*==============================================================*/
/* Table: LISTA_CANDIDATOS                                      */
/*==============================================================*/
create table LISTA_CANDIDATOS (
   CANDIDATOS_ID        int                            not null,
   RECURSOSHUMANOS_ID   int                            null,
   CARGOID              int                            null,
   CANDIDATOS_NOMBRE    varchar(100)                   not null,
   CANDIDATOS_DOCUMENTO bigint                         not null,
   CANDIDATOS_CELULAR   bigint                         not null,
   CANDIDATOS_DIRECCION varchar(100)                   not null,
   CANDIDATOS_CORREO    varchar(100)                   not null,
   CANDIDATOS_GENERO    varchar(100)                   null,
   CANDIDATOS_PORCENTAJEAPTITUD int                            not null
      constraint CKC_CANDIDATOS_PORCEN_LISTA_CA check (CANDIDATOS_PORCENTAJEAPTITUD between 0 and 100),
   constraint PK_LISTA_CANDIDATOS primary key (CANDIDATOS_ID)
)
go

/*==============================================================*/
/* Index: SELECCION_FK                                          */
/*==============================================================*/
create index SELECCION_FK on LISTA_CANDIDATOS (
RECURSOSHUMANOS_ID ASC
)
go

/*==============================================================*/
/* Index: VACANTES_FK                                           */
/*==============================================================*/
create index VACANTES_FK on LISTA_CANDIDATOS (
CARGOID ASC
)
go

/*==============================================================*/
/* Table: POS_COMPRA                                            */
/*==============================================================*/
create table POS_COMPRA (
   POSCOMPRA_ID         int                            not null,
   CLIENTEID            int                            null,
   POSCOMPRA_FECHA      date                           not null,
   constraint PK_POS_COMPRA primary key (POSCOMPRA_ID)
)
go

/*==============================================================*/
/* Index: RECIBE_FK                                             */
/*==============================================================*/
create index RECIBE_FK on POS_COMPRA (
CLIENTEID ASC
)
go

/*==============================================================*/
/* Table: PRE_COMPRA                                            */
/*==============================================================*/
create table PRE_COMPRA (
   PRECOMPRA_ID         int                            not null,
   CLIENTEID            int                            null,
   PRECOMPRA_FECHA      date                           not null,
   constraint PK_PRE_COMPRA primary key (PRECOMPRA_ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_24_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_24_FK on PRE_COMPRA (
CLIENTEID ASC
)
go

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO (
   PRODUCTOID           int                            not null,
   INVENTARIO_ID        int                            null,
   PROVEEDORID          int                            not null,
   PRODUCTO_NOMBRE      varchar(100)                   not null,
   PRODUCTO_PRECIOCOMPRA bigint                         not null,
   PRODUCTO_PRECIOVENTA bigint                         not null,
   PRODUCTO_FECHAADQUISICION date                           not null,
   constraint PK_PRODUCTO primary key (PRODUCTOID)
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
/* Index: EXISTENCIA_FK                                         */
/*==============================================================*/
create index EXISTENCIA_FK on PRODUCTO (
INVENTARIO_ID ASC
)
go

/*==============================================================*/
/* Table: PROVEEDOR                                             */
/*==============================================================*/
create table PROVEEDOR (
   PROVEEDORID          int                            not null,
   GERENTE_PROVEEDORID  int                            not null,
   SUCURSALID           int                            not null,
   PROVEEDOR_NOMBRE     varchar(100)                   not null,
   PROVEEDOR_NIT        bigint                         not null,
   PROVEEDOR_NUMEROCENTROLLAMADAS bigint                         not null,
   PROVEEDOR_DIRECCION  varchar(100)                   not null,
   constraint PK_PROVEEDOR primary key (PROVEEDORID)
)
go

/*==============================================================*/
/* Index: REPRESENTAR2_FK                                       */
/*==============================================================*/
create index REPRESENTAR2_FK on PROVEEDOR (
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
/* Table: RANGO                                                 */
/*==============================================================*/
create table RANGO (
   MAX_SALARIO          bigint                         not null,
   MIN_SALARIO          bigint                         not null,
   RANGOID              int                            not null,
   constraint PK_RANGO primary key (MAX_SALARIO)
)
go

/*==============================================================*/
/* Table: SUCURSAL                                              */
/*==============================================================*/
create table SUCURSAL (
   SUCURSALID           int                            not null,
   RECURSOSHUMANOS_ID   int                            not null,
   SISTEMAS_ID          int                            not null,
   CIUDADID             int                            not null,
   MERCADEO_ID          int                            not null,
   CONTABILIDAD_ID      int                            not null,
   VENTAS_ID            int                            not null,
   EMPRESA_NOMBRE       varchar(100)                   null,
   INVENTARIO_ID        int                            null,
   JURIDICO_ID          bigint                         not null,
   SUCURSAL_NOMBRE      varchar(100)                   not null,
   constraint PK_SUCURSAL primary key (SUCURSALID)
)
go

/*==============================================================*/
/* Index: UBICACION3_FK                                         */
/*==============================================================*/
create index UBICACION3_FK on SUCURSAL (
CIUDADID ASC
)
go

/*==============================================================*/
/* Index: TIENE_FK                                              */
/*==============================================================*/
create index TIENE_FK on SUCURSAL (
EMPRESA_NOMBRE ASC
)
go

/*==============================================================*/
/* Index: DEP1_FK                                               */
/*==============================================================*/
create index DEP1_FK on SUCURSAL (
SISTEMAS_ID ASC
)
go

/*==============================================================*/
/* Index: DEP2_FK                                               */
/*==============================================================*/
create index DEP2_FK on SUCURSAL (
JURIDICO_ID ASC
)
go

/*==============================================================*/
/* Index: DEP3_FK                                               */
/*==============================================================*/
create index DEP3_FK on SUCURSAL (
CONTABILIDAD_ID ASC
)
go

/*==============================================================*/
/* Index: DEP4_FK                                               */
/*==============================================================*/
create index DEP4_FK on SUCURSAL (
VENTAS_ID ASC
)
go

/*==============================================================*/
/* Index: DEP5_FK                                               */
/*==============================================================*/
create index DEP5_FK on SUCURSAL (
MERCADEO_ID ASC
)
go

/*==============================================================*/
/* Index: DEP6_FK                                               */
/*==============================================================*/
create index DEP6_FK on SUCURSAL (
RECURSOSHUMANOS_ID ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_27_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_27_FK on SUCURSAL (
INVENTARIO_ID ASC
)
go

/*==============================================================*/
/* Table: VENDER                                                */
/*==============================================================*/
create table VENDER (
   EMPLEADO_VENDEDORID  int                            not null,
   PRODUCTOID           int                            not null,
   constraint PK_VENDER primary key (EMPLEADO_VENDEDORID, PRODUCTOID)
)
go

/*==============================================================*/
/* Index: VENDER_FK                                             */
/*==============================================================*/
create index VENDER_FK on VENDER (
EMPLEADO_VENDEDORID ASC
)
go

/*==============================================================*/
/* Index: VENDER2_FK                                            */
/*==============================================================*/
create index VENDER2_FK on VENDER (
PRODUCTOID ASC
)
go

alter table ADQUISICION
   add constraint FK_ADQUISIC_ADQUISICI_CLIENTE foreign key (CLIENTEID)
      references CLIENTE (CLIENTEID)
go

alter table ADQUISICION
   add constraint FK_ADQUISIC_ADQUISICI_PRODUCTO foreign key (PRODUCTOID)
      references PRODUCTO (PRODUCTOID)
go

alter table CARGO
   add constraint FK_CARGO_DEFINIR_S_RANGO foreign key (MAX_SALARIO)
      references RANGO (MAX_SALARIO)
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

alter table INVENTARIO
   add constraint FK_INVENTAR_RELATIONS_PRE_COMP foreign key (PRECOMPRA_ID)
      references PRE_COMPRA (PRECOMPRA_ID)
go

alter table INVENTARIO
   add constraint FK_INVENTAR_RELATIONS_POS_COMP foreign key (POSCOMPRA_ID)
      references POS_COMPRA (POSCOMPRA_ID)
go

alter table LISTA_CANDIDATOS
   add constraint FK_LISTA_CA_SELECCION_DEPARTAM foreign key (RECURSOSHUMANOS_ID)
      references DEPARTAMENTO_RECURSOSHUMANOS (RECURSOSHUMANOS_ID)
go

alter table LISTA_CANDIDATOS
   add constraint FK_LISTA_CA_VACANTES_CARGO foreign key (CARGOID)
      references CARGO (CARGOID)
go

alter table POS_COMPRA
   add constraint FK_POS_COMP_RECIBE_CLIENTE foreign key (CLIENTEID)
      references CLIENTE (CLIENTEID)
go

alter table PRE_COMPRA
   add constraint FK_PRE_COMP_RELATIONS_CLIENTE foreign key (CLIENTEID)
      references CLIENTE (CLIENTEID)
go

alter table PRODUCTO
   add constraint FK_PRODUCTO_EXISTENCI_INVENTAR foreign key (INVENTARIO_ID)
      references INVENTARIO (INVENTARIO_ID)
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
   add constraint FK_SUCURSAL_DEP1_DEPARTAM foreign key (SISTEMAS_ID)
      references DEPARTAMENTO_SISTEMAS (SISTEMAS_ID)
go

alter table SUCURSAL
   add constraint FK_SUCURSAL_DEP2_DEPARTAM foreign key (JURIDICO_ID)
      references DEPARTAMENTO_JURIDICO (JURIDICO_ID)
go

alter table SUCURSAL
   add constraint FK_SUCURSAL_DEP3_DEPARTAM foreign key (CONTABILIDAD_ID)
      references DEPARTAMENTO_CONTABILIDAD (CONTABILIDAD_ID)
go

alter table SUCURSAL
   add constraint FK_SUCURSAL_DEP4_DEPARTAM foreign key (VENTAS_ID)
      references DEPARTAMENTO_VENTAS (VENTAS_ID)
go

alter table SUCURSAL
   add constraint FK_SUCURSAL_DEP5_DEPARTAM foreign key (MERCADEO_ID)
      references DEPARTAMENTO_MERCADEO (MERCADEO_ID)
go

alter table SUCURSAL
   add constraint FK_SUCURSAL_DEP6_DEPARTAM foreign key (RECURSOSHUMANOS_ID)
      references DEPARTAMENTO_RECURSOSHUMANOS (RECURSOSHUMANOS_ID)
go

alter table SUCURSAL
   add constraint FK_SUCURSAL_RELATIONS_INVENTAR foreign key (INVENTARIO_ID)
      references INVENTARIO (INVENTARIO_ID)
go

alter table SUCURSAL
   add constraint FK_SUCURSAL_TIENE_EMPRESA foreign key (EMPRESA_NOMBRE)
      references EMPRESA (EMPRESA_NOMBRE)
go

alter table SUCURSAL
   add constraint FK_SUCURSAL_UBICACION_CIUDAD foreign key (CIUDADID)
      references CIUDAD (CIUDADID)
go

alter table VENDER
   add constraint FK_VENDER_VENDER_EMPLEADO foreign key (EMPLEADO_VENDEDORID)
      references EMPLEADO_VENDEDOR (EMPLEADO_VENDEDORID)
go

alter table VENDER
   add constraint FK_VENDER_VENDER2_PRODUCTO foreign key (PRODUCTOID)
      references PRODUCTO (PRODUCTOID)
go

