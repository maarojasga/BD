/*==============================================================*/
/* DBMS name:      ORACLE Version 10g                           */
/* Created on:     4/11/2020 6:08:00 p. m.                      */
/*==============================================================*/


alter table ADQUISICION
   drop constraint FK_ADQUISIC_ADQUISICI_PRODUCTO;

alter table ADQUISICION
   drop constraint FK_ADQUISIC_ADQUISICI_CLIENTE;

alter table CARGO
   drop constraint FK_CARGO_DEPENDENC_DEPARTAM;

alter table CIUDAD
   drop constraint FK_CIUDAD_UBICACION_SUCURSAL;

alter table CLIENTE
   drop constraint FK_CLIENTE_ENCARGADO_EMPLEADO;

alter table CLIENTE
   drop constraint FK_CLIENTE_LUGARVENT_SUCURSAL;

alter table CLIENTE
   drop constraint FK_CLIENTE_REPRESENT_GERENTE_;

alter table EMPLEADO
   drop constraint FK_EMPLEADO_CONTRATO_SUCURSAL;

alter table EMPLEADO
   drop constraint FK_EMPLEADO_PERTENECE_CARGO;

alter table EMPLEADO_VENDEDOR
   drop constraint FK_EMPLEADO_CONTRATOV_SUCURSAL;

alter table GERENTE_CLIENTE
   drop constraint FK_GERENTE__REPRESENT_CLIENTE;

alter table GERENTE_PROVEEDOR
   drop constraint FK_GERENTE__REPRESENT_PROVEEDO;

alter table PRODUCTO
   drop constraint FK_PRODUCTO_PROVEER_PROVEEDO;

alter table PROVEEDOR
   drop constraint FK_PROVEEDO_NN_SUCURSAL;

alter table PROVEEDOR
   drop constraint FK_PROVEEDO_REPRESENT_GERENTE_;

alter table SUCURSAL
   drop constraint FK_SUCURSAL_UBICACION_CIUDAD;

alter table VENDER
   drop constraint FK_VENDER_VENDER_PRODUCTO;

alter table VENDER
   drop constraint FK_VENDER_VENDER2_EMPLEADO;

drop index ADQUISICION_FK;

drop index ADQUISICION2_FK;

drop table ADQUISICION cascade constraints;

drop index DEPENDENCIA_FK;

drop table CARGO cascade constraints;

drop index UBICACION_FK;

drop table CIUDAD cascade constraints;

drop index ENCARGADO_FK;

drop index LUGARVENTA_FK;

drop index REPRESENTANTE2_FK;

drop table CLIENTE cascade constraints;

drop table DEPARTAMENTO cascade constraints;

drop index CONTRATO_FK;

drop index PERTENECE_FK;

drop table EMPLEADO cascade constraints;

drop index CONTRATOVENDEDOR_FK;

drop table EMPLEADO_VENDEDOR cascade constraints;

drop index REPRESENTANTE_FK;

drop table GERENTE_CLIENTE cascade constraints;

drop index REPRESENTAR2_FK;

drop table GERENTE_PROVEEDOR cascade constraints;

drop index PROVEER_FK;

drop table PRODUCTO cascade constraints;

drop index NN_FK;

drop index REPRESENTAR_FK;

drop table PROVEEDOR cascade constraints;

drop index UBICACION2_FK;

drop table SUCURSAL cascade constraints;

drop index VENDER_FK;

drop index VENDER2_FK;

drop table VENDER cascade constraints;

/*==============================================================*/
/* Table: ADQUISICION                                           */
/*==============================================================*/
create table ADQUISICION  (
   PRODUCTOID           INTEGER                         not null,
   CLIENTEID            INTEGER                         not null,
   constraint PK_ADQUISICION primary key (PRODUCTOID, CLIENTEID)
);

/*==============================================================*/
/* Index: ADQUISICION2_FK                                       */
/*==============================================================*/
create index ADQUISICION2_FK on ADQUISICION (
   CLIENTEID ASC
);

/*==============================================================*/
/* Index: ADQUISICION_FK                                        */
/*==============================================================*/
create index ADQUISICION_FK on ADQUISICION (
   PRODUCTOID ASC
);

/*==============================================================*/
/* Table: CARGO                                                 */
/*==============================================================*/
create table CARGO  (
   CARGOID              INTEGER                         not null,
   DEPARTAMENTOID       INTEGER                         not null,
   CARGO_NOMBRE         VARCHAR2(100)                   not null,
   SALARIOMENSUAL       INTEGER                         not null,
   constraint PK_CARGO primary key (CARGOID)
);

/*==============================================================*/
/* Index: DEPENDENCIA_FK                                        */
/*==============================================================*/
create index DEPENDENCIA_FK on CARGO (
   DEPARTAMENTOID ASC
);

/*==============================================================*/
/* Table: CIUDAD                                                */
/*==============================================================*/
create table CIUDAD  (
   CIUDADID             INTEGER                         not null,
   SUCURSALID           INTEGER,
   CIUDAD_NOMBRE        VARCHAR2(100)                   not null,
   constraint PK_CIUDAD primary key (CIUDADID)
);

/*==============================================================*/
/* Index: UBICACION_FK                                          */
/*==============================================================*/
create index UBICACION_FK on CIUDAD (
   SUCURSALID ASC
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE  (
   CLIENTEID            INTEGER                         not null,
   GERENTE_CLIENTEID    INTEGER                         not null,
   SUCURSALID           INTEGER                         not null,
   EMPLEADO_VENDEDORID  INTEGER                         not null,
   CLIENTE_NOMBRE       VARCHAR2(100)                   not null,
   CLIENTE_NIT          INTEGER                         not null,
   CLIENTE_DIRECCION    VARCHAR2(100)                   not null,
   CLIENTE_CORREO       VARCHAR2(100)                   not null,
   CLIENTE_TELEFONOMOVIL INTEGER                         not null,
   constraint PK_CLIENTE primary key (CLIENTEID)
);

/*==============================================================*/
/* Index: REPRESENTANTE2_FK                                     */
/*==============================================================*/
create index REPRESENTANTE2_FK on CLIENTE (
   GERENTE_CLIENTEID ASC
);

/*==============================================================*/
/* Index: LUGARVENTA_FK                                         */
/*==============================================================*/
create index LUGARVENTA_FK on CLIENTE (
   SUCURSALID ASC
);

/*==============================================================*/
/* Index: ENCARGADO_FK                                          */
/*==============================================================*/
create index ENCARGADO_FK on CLIENTE (
   EMPLEADO_VENDEDORID ASC
);

/*==============================================================*/
/* Table: DEPARTAMENTO                                          */
/*==============================================================*/
create table DEPARTAMENTO  (
   DEPARTAMENTOID       INTEGER                         not null,
   DEPARTAMENTO_NOMBRE  VARCHAR2(100)                   not null,
   constraint PK_DEPARTAMENTO primary key (DEPARTAMENTOID)
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO  (
   EMPLEADOID           INTEGER                         not null,
   CARGOID              INTEGER                         not null,
   SUCURSALID           INTEGER                         not null,
   EMPLEADO_NOMBRE      VARCHAR2(100)                   not null,
   EMPLEADO_APELLIDO    VARCHAR2(100)                   not null,
   EMPLEADO_TELEFONOMOVIL INTEGER                         not null,
   EMPLEADO_DIRECCION   VARCHAR2(100)                   not null,
   EMPLEADO_GENERO      VARCHAR2(100),
   EMPLEADO_CORREO      VARCHAR2(100)                   not null,
   EMPLEADO_FECHAINGRESO DATE                            not null,
   constraint PK_EMPLEADO primary key (EMPLEADOID)
);

/*==============================================================*/
/* Index: PERTENECE_FK                                          */
/*==============================================================*/
create index PERTENECE_FK on EMPLEADO (
   CARGOID ASC
);

/*==============================================================*/
/* Index: CONTRATO_FK                                           */
/*==============================================================*/
create index CONTRATO_FK on EMPLEADO (
   SUCURSALID ASC
);

/*==============================================================*/
/* Table: EMPLEADO_VENDEDOR                                     */
/*==============================================================*/
create table EMPLEADO_VENDEDOR  (
   EMPLEADO_VENDEDORID  INTEGER                         not null,
   SUCURSALID           INTEGER                         not null,
   EMPLEADOVENDEDOR_NOMBRE VARCHAR2(100)                   not null,
   EMPLEADOVENDEDOR_APELLIDO VARCHAR2(100)                   not null,
   EMPLEADOVENDEDOR_TELEFONOMOVIL INTEGER                         not null,
   EMPLEADOVENDEDOR_DIRECCION VARCHAR2(100)                   not null,
   EMPLEADOVENDEDOR_GENERO VARCHAR2(100),
   EMPLEADOVENDEDOR_CORREO VARCHAR2(100)                   not null,
   EMPLEADOVENDEDOR_FECHAINGRESO DATE                            not null,
   COMISION             INTEGER                         not null,
   constraint PK_EMPLEADO_VENDEDOR primary key (EMPLEADO_VENDEDORID)
);

/*==============================================================*/
/* Index: CONTRATOVENDEDOR_FK                                   */
/*==============================================================*/
create index CONTRATOVENDEDOR_FK on EMPLEADO_VENDEDOR (
   SUCURSALID ASC
);

/*==============================================================*/
/* Table: GERENTE_CLIENTE                                       */
/*==============================================================*/
create table GERENTE_CLIENTE  (
   GERENTE_CLIENTEID    INTEGER                         not null,
   CLIENTEID            INTEGER,
   GERENTECLIENTE_NOMBRE VARCHAR2(100)                   not null,
   GERENTECLIENTE_DOCUMENTO INTEGER                         not null,
   GERENTECLIENTE_TELEFONOMOVIL INTEGER                         not null,
   constraint PK_GERENTE_CLIENTE primary key (GERENTE_CLIENTEID)
);

/*==============================================================*/
/* Index: REPRESENTANTE_FK                                      */
/*==============================================================*/
create index REPRESENTANTE_FK on GERENTE_CLIENTE (
   CLIENTEID ASC
);

/*==============================================================*/
/* Table: GERENTE_PROVEEDOR                                     */
/*==============================================================*/
create table GERENTE_PROVEEDOR  (
   GERENTE_PROVEEDORID  INTEGER                         not null,
   PROVEEDORID          INTEGER,
   GERENTEPROVEEDOR_NOMBRE VARCHAR2(100)                   not null,
   GERENTEPROVEEDOR_DOCUMENTO INTEGER                         not null,
   GERENTEPROVEEDOR_TELEFONO INTEGER                         not null,
   constraint PK_GERENTE_PROVEEDOR primary key (GERENTE_PROVEEDORID)
);

/*==============================================================*/
/* Index: REPRESENTAR2_FK                                       */
/*==============================================================*/
create index REPRESENTAR2_FK on GERENTE_PROVEEDOR (
   PROVEEDORID ASC
);

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO  (
   PRODUCTOID           INTEGER                         not null,
   PROVEEDORID          INTEGER                         not null,
   PRODUCTO_NOMBRE      VARCHAR2(100)                   not null,
   PRODUCTO_PRECIOCOMPRA INTEGER                         not null,
   PRODUCTO_PRECIOVENTA INTEGER                         not null,
   PRODUCTO_FECHAADQUISICION DATE                            not null,
   constraint PK_PRODUCTO primary key (PRODUCTOID)
);

/*==============================================================*/
/* Index: PROVEER_FK                                            */
/*==============================================================*/
create index PROVEER_FK on PRODUCTO (
   PROVEEDORID ASC
);

/*==============================================================*/
/* Table: PROVEEDOR                                             */
/*==============================================================*/
create table PROVEEDOR  (
   PROVEEDORID          INTEGER                         not null,
   GERENTE_PROVEEDORID  INTEGER                         not null,
   SUCURSALID           INTEGER                         not null,
   PROVEEDOR_NOMBRE     VARCHAR2(100)                   not null,
   PROVEEDOR_NIT        INTEGER                         not null,
   PROVEEDOR_NUMEROCENTROLLAMADAS INTEGER                         not null,
   PROVEEDOR_DIRECCION  VARCHAR2(100)                   not null,
   constraint PK_PROVEEDOR primary key (PROVEEDORID)
);

/*==============================================================*/
/* Index: REPRESENTAR_FK                                        */
/*==============================================================*/
create index REPRESENTAR_FK on PROVEEDOR (
   GERENTE_PROVEEDORID ASC
);

/*==============================================================*/
/* Index: NN_FK                                                 */
/*==============================================================*/
create index NN_FK on PROVEEDOR (
   SUCURSALID ASC
);

/*==============================================================*/
/* Table: SUCURSAL                                              */
/*==============================================================*/
create table SUCURSAL  (
   SUCURSALID           INTEGER                         not null,
   CIUDADID             INTEGER                         not null,
   SUCURSAL_NOMBRE      VARCHAR2(100)                   not null,
   constraint PK_SUCURSAL primary key (SUCURSALID)
);

/*==============================================================*/
/* Index: UBICACION2_FK                                         */
/*==============================================================*/
create index UBICACION2_FK on SUCURSAL (
   CIUDADID ASC
);

/*==============================================================*/
/* Table: VENDER                                                */
/*==============================================================*/
create table VENDER  (
   PRODUCTOID           INTEGER                         not null,
   EMPLEADO_VENDEDORID  INTEGER                         not null,
   constraint PK_VENDER primary key (PRODUCTOID, EMPLEADO_VENDEDORID)
);

/*==============================================================*/
/* Index: VENDER2_FK                                            */
/*==============================================================*/
create index VENDER2_FK on VENDER (
   EMPLEADO_VENDEDORID ASC
);

/*==============================================================*/
/* Index: VENDER_FK                                             */
/*==============================================================*/
create index VENDER_FK on VENDER (
   PRODUCTOID ASC
);

alter table ADQUISICION
   add constraint FK_ADQUISIC_ADQUISICI_PRODUCTO foreign key (PRODUCTOID)
      references PRODUCTO (PRODUCTOID);

alter table ADQUISICION
   add constraint FK_ADQUISIC_ADQUISICI_CLIENTE foreign key (CLIENTEID)
      references CLIENTE (CLIENTEID);

alter table CARGO
   add constraint FK_CARGO_DEPENDENC_DEPARTAM foreign key (DEPARTAMENTOID)
      references DEPARTAMENTO (DEPARTAMENTOID);

alter table CIUDAD
   add constraint FK_CIUDAD_UBICACION_SUCURSAL foreign key (SUCURSALID)
      references SUCURSAL (SUCURSALID);

alter table CLIENTE
   add constraint FK_CLIENTE_ENCARGADO_EMPLEADO foreign key (EMPLEADO_VENDEDORID)
      references EMPLEADO_VENDEDOR (EMPLEADO_VENDEDORID);

alter table CLIENTE
   add constraint FK_CLIENTE_LUGARVENT_SUCURSAL foreign key (SUCURSALID)
      references SUCURSAL (SUCURSALID);

alter table CLIENTE
   add constraint FK_CLIENTE_REPRESENT_GERENTE_ foreign key (GERENTE_CLIENTEID)
      references GERENTE_CLIENTE (GERENTE_CLIENTEID);

alter table EMPLEADO
   add constraint FK_EMPLEADO_CONTRATO_SUCURSAL foreign key (SUCURSALID)
      references SUCURSAL (SUCURSALID);

alter table EMPLEADO
   add constraint FK_EMPLEADO_PERTENECE_CARGO foreign key (CARGOID)
      references CARGO (CARGOID);

alter table EMPLEADO_VENDEDOR
   add constraint FK_EMPLEADO_CONTRATOV_SUCURSAL foreign key (SUCURSALID)
      references SUCURSAL (SUCURSALID);

alter table GERENTE_CLIENTE
   add constraint FK_GERENTE__REPRESENT_CLIENTE foreign key (CLIENTEID)
      references CLIENTE (CLIENTEID);

alter table GERENTE_PROVEEDOR
   add constraint FK_GERENTE__REPRESENT_PROVEEDO foreign key (PROVEEDORID)
      references PROVEEDOR (PROVEEDORID);

alter table PRODUCTO
   add constraint FK_PRODUCTO_PROVEER_PROVEEDO foreign key (PROVEEDORID)
      references PROVEEDOR (PROVEEDORID);

alter table PROVEEDOR
   add constraint FK_PROVEEDO_NN_SUCURSAL foreign key (SUCURSALID)
      references SUCURSAL (SUCURSALID);

alter table PROVEEDOR
   add constraint FK_PROVEEDO_REPRESENT_GERENTE_ foreign key (GERENTE_PROVEEDORID)
      references GERENTE_PROVEEDOR (GERENTE_PROVEEDORID);

alter table SUCURSAL
   add constraint FK_SUCURSAL_UBICACION_CIUDAD foreign key (CIUDADID)
      references CIUDAD (CIUDADID);

alter table VENDER
   add constraint FK_VENDER_VENDER_PRODUCTO foreign key (PRODUCTOID)
      references PRODUCTO (PRODUCTOID);

alter table VENDER
   add constraint FK_VENDER_VENDER2_EMPLEADO foreign key (EMPLEADO_VENDEDORID)
      references EMPLEADO_VENDEDOR (EMPLEADO_VENDEDORID);

