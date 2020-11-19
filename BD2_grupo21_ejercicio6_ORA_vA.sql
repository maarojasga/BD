/*==============================================================*/
/* DBMS name:      ORACLE Version 10g                           */
/* Created on:     19/11/2020 10:10:57 a. m.                    */
/*==============================================================*/


alter table ADQUISICION
   drop constraint FK_ADQUISIC_ADQUISICI_CLIENTE;

alter table ADQUISICION
   drop constraint FK_ADQUISIC_ADQUISICI_PRODUCTO;

alter table CARGO
   drop constraint FK_CARGO_DEFINIR_S_RANGO;

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

alter table INVENTARIO
   drop constraint FK_INVENTAR_RELATIONS_PRE_COMP;

alter table INVENTARIO
   drop constraint FK_INVENTAR_RELATIONS_POS_COMP;

alter table LISTA_CANDIDATOS
   drop constraint FK_LISTA_CA_SELECCION_DEPARTAM;

alter table LISTA_CANDIDATOS
   drop constraint FK_LISTA_CA_VACANTES_CARGO;

alter table POS_COMPRA
   drop constraint FK_POS_COMP_RECIBE_CLIENTE;

alter table PRE_COMPRA
   drop constraint FK_PRE_COMP_RELATIONS_CLIENTE;

alter table PRODUCTO
   drop constraint FK_PRODUCTO_EXISTENCI_INVENTAR;

alter table PRODUCTO
   drop constraint FK_PRODUCTO_PROVEER_PROVEEDO;

alter table PROVEEDOR
   drop constraint FK_PROVEEDO_NN_SUCURSAL;

alter table PROVEEDOR
   drop constraint FK_PROVEEDO_REPRESENT_GERENTE_;

alter table SUCURSAL
   drop constraint FK_SUCURSAL_DEP1_DEPARTAM;

alter table SUCURSAL
   drop constraint FK_SUCURSAL_DEP2_DEPARTAM;

alter table SUCURSAL
   drop constraint FK_SUCURSAL_DEP3_DEPARTAM;

alter table SUCURSAL
   drop constraint FK_SUCURSAL_DEP4_DEPARTAM;

alter table SUCURSAL
   drop constraint FK_SUCURSAL_DEP5_DEPARTAM;

alter table SUCURSAL
   drop constraint FK_SUCURSAL_DEP6_DEPARTAM;

alter table SUCURSAL
   drop constraint FK_SUCURSAL_RELATIONS_INVENTAR;

alter table SUCURSAL
   drop constraint FK_SUCURSAL_TIENE_EMPRESA;

alter table SUCURSAL
   drop constraint FK_SUCURSAL_UBICACION_CIUDAD;

alter table VENDER
   drop constraint FK_VENDER_VENDER_EMPLEADO;

alter table VENDER
   drop constraint FK_VENDER_VENDER2_PRODUCTO;

drop index ADQUISICION2_FK;

drop index ADQUISICION_FK;

drop table ADQUISICION cascade constraints;

drop index DEFINIR_SALARIO_FK;

drop table CARGO cascade constraints;

drop index UBICACION2_FK;

drop table CIUDAD cascade constraints;

drop index ENCARGADO_FK;

drop index LUGARVENTA_FK;

drop index REPRESENTANTE3_FK;

drop table CLIENTE cascade constraints;

drop table DEPARTAMENTO_CONTABILIDAD cascade constraints;

drop table DEPARTAMENTO_JURIDICO cascade constraints;

drop table DEPARTAMENTO_MERCADEO cascade constraints;

drop table DEPARTAMENTO_RECURSOSHUMANOS cascade constraints;

drop table DEPARTAMENTO_SISTEMAS cascade constraints;

drop table DEPARTAMENTO_VENTAS cascade constraints;

drop index CONTRATO_FK;

drop index PERTENECE_FK;

drop table EMPLEADO cascade constraints;

drop index CONTRATOVENDEDOR_FK;

drop table EMPLEADO_VENDEDOR cascade constraints;

drop table EMPRESA cascade constraints;

drop index REPRESENTANTE2_FK;

drop table GERENTE_CLIENTE cascade constraints;

drop index REPRESENTAR3_FK;

drop table GERENTE_PROVEEDOR cascade constraints;

drop table HISTORIAEMPLEADO cascade constraints;

drop index RELATIONSHIP_26_FK;

drop index RELATIONSHIP_23_FK;

drop table INVENTARIO cascade constraints;

drop index VACANTES_FK;

drop index SELECCION_FK;

drop table LISTA_CANDIDATOS cascade constraints;

drop index RECIBE_FK;

drop table POS_COMPRA cascade constraints;

drop index RELATIONSHIP_24_FK;

drop table PRE_COMPRA cascade constraints;

drop index EXISTENCIA_FK;

drop index PROVEER_FK;

drop table PRODUCTO cascade constraints;

drop index NN_FK;

drop index REPRESENTAR2_FK;

drop table PROVEEDOR cascade constraints;

drop table RANGO cascade constraints;

drop index RELATIONSHIP_27_FK;

drop index DEP6_FK;

drop index DEP5_FK;

drop index DEP4_FK;

drop index DEP3_FK;

drop index DEP2_FK;

drop index DEP1_FK;

drop index TIENE_FK;

drop index UBICACION3_FK;

drop table SUCURSAL cascade constraints;

drop index VENDER2_FK;

drop index VENDER_FK;

drop table VENDER cascade constraints;

/*==============================================================*/
/* Table: ADQUISICION                                           */
/*==============================================================*/
create table ADQUISICION  (
   CLIENTEID            INTEGER                         not null,
   PRODUCTOID           INTEGER                         not null,
   constraint PK_ADQUISICION primary key (CLIENTEID, PRODUCTOID)
);

/*==============================================================*/
/* Index: ADQUISICION_FK                                        */
/*==============================================================*/
create index ADQUISICION_FK on ADQUISICION (
   CLIENTEID ASC
);

/*==============================================================*/
/* Index: ADQUISICION2_FK                                       */
/*==============================================================*/
create index ADQUISICION2_FK on ADQUISICION (
   PRODUCTOID ASC
);

/*==============================================================*/
/* Table: CARGO                                                 */
/*==============================================================*/
create table CARGO  (
   CARGOID              INTEGER                         not null,
   MAX_SALARIO          INTEGER                         not null,
   CARGO_NOMBRE         VARCHAR2(100)                   not null,
   SALARIOMENSUAL       INTEGER                         not null,
   constraint PK_CARGO primary key (CARGOID)
);

/*==============================================================*/
/* Index: DEFINIR_SALARIO_FK                                    */
/*==============================================================*/
create index DEFINIR_SALARIO_FK on CARGO (
   MAX_SALARIO ASC
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
/* Index: UBICACION2_FK                                         */
/*==============================================================*/
create index UBICACION2_FK on CIUDAD (
   SUCURSALID ASC
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE  (
   CLIENTEID            INTEGER                         not null,
   SUCURSALID           INTEGER                         not null,
   EMPLEADO_VENDEDORID  INTEGER                         not null,
   GERENTE_CLIENTEID    INTEGER                         not null,
   CLIENTE_NOMBRE       VARCHAR2(100)                   not null,
   CLIENTE_NIT          INTEGER                         not null,
   CLIENTE_DIRECCION    VARCHAR2(100)                   not null,
   CLIENTE_CORREO       VARCHAR2(100)                   not null,
   CLIENTE_TELEFONOMOVIL INTEGER                         not null,
   constraint PK_CLIENTE primary key (CLIENTEID)
);

/*==============================================================*/
/* Index: REPRESENTANTE3_FK                                     */
/*==============================================================*/
create index REPRESENTANTE3_FK on CLIENTE (
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
/* Table: DEPARTAMENTO_CONTABILIDAD                             */
/*==============================================================*/
create table DEPARTAMENTO_CONTABILIDAD  (
   CONTABILIDAD_ID      INTEGER                         not null,
   CONTABILIDAD_NOMBREDIRECTOR VARCHAR2(100)                   not null,
   CONTABILIDAD_DOCUMENTODIRECTOR INTEGER                         not null,
   CONTABILIDAD_SALARIO INTEGER                         not null
      constraint CKC_CONTABILIDAD_SALA_DEPARTAM check (CONTABILIDAD_SALARIO between 3500000 and 4000000),
   constraint PK_DEPARTAMENTO_CONTABILIDAD primary key (CONTABILIDAD_ID)
);

/*==============================================================*/
/* Table: DEPARTAMENTO_JURIDICO                                 */
/*==============================================================*/
create table DEPARTAMENTO_JURIDICO  (
   JURIDICO_ID          INTEGER                         not null,
   JURIDICO_NOMBREDIRECTOR VARCHAR2(100)                   not null,
   JURIDICO_DOCUMENTODIRECTOR INTEGER                         not null,
   JURIDICO_SALARIO     INTEGER                         not null
      constraint CKC_JURIDICO_SALARIO_DEPARTAM check (JURIDICO_SALARIO between 3500000 and 4000000),
   constraint PK_DEPARTAMENTO_JURIDICO primary key (JURIDICO_ID)
);

/*==============================================================*/
/* Table: DEPARTAMENTO_MERCADEO                                 */
/*==============================================================*/
create table DEPARTAMENTO_MERCADEO  (
   MERCADEO_ID          INTEGER                         not null,
   MERCADEO_NOMBREDIRECTOR VARCHAR2(100)                   not null,
   MERCADEO_DOCUMENTODIRECTOR INTEGER                         not null,
   MERCADEO_SALARIO     INTEGER                         not null
      constraint CKC_MERCADEO_SALARIO_DEPARTAM check (MERCADEO_SALARIO between 3500000 and 4000000),
   constraint PK_DEPARTAMENTO_MERCADEO primary key (MERCADEO_ID)
);

/*==============================================================*/
/* Table: DEPARTAMENTO_RECURSOSHUMANOS                          */
/*==============================================================*/
create table DEPARTAMENTO_RECURSOSHUMANOS  (
   RECURSOSHUMANOS_ID   INTEGER                         not null,
   RECURSOSHUMANOS_NOMBREDIRECTOR VARCHAR2(100)                   not null,
   RECURSOSHUMANOS_DOCUMENTODIREC INTEGER                         not null,
   RECURSOSHUMANOS_SALARIO INTEGER                         not null
      constraint CKC_RECURSOSHUMANOS_S_DEPARTAM check (RECURSOSHUMANOS_SALARIO between 3500000 and 4000000),
   constraint PK_DEPARTAMENTO_RECURSOSHUMANO primary key (RECURSOSHUMANOS_ID)
);

/*==============================================================*/
/* Table: DEPARTAMENTO_SISTEMAS                                 */
/*==============================================================*/
create table DEPARTAMENTO_SISTEMAS  (
   SISTEMAS_ID          INTEGER                         not null,
   SISTEMAS_NOMBREDIRECTOR VARCHAR2(100)                   not null,
   SISTEMAS_DOCUMENTODIRECTOR INTEGER                         not null,
   SISTEMAS_SALARIO     INTEGER                         not null
      constraint CKC_SISTEMAS_SALARIO_DEPARTAM check (SISTEMAS_SALARIO between 3500000 and 4000000),
   constraint PK_DEPARTAMENTO_SISTEMAS primary key (SISTEMAS_ID)
);

/*==============================================================*/
/* Table: DEPARTAMENTO_VENTAS                                   */
/*==============================================================*/
create table DEPARTAMENTO_VENTAS  (
   VENTAS_ID            INTEGER                         not null,
   VENTAS_NOMBREDIRECTOR VARCHAR2(100)                   not null,
   VENTAS_DOCUMENTODIRECTOR INTEGER                         not null,
   VENTAS_SALARIO       INTEGER                         not null,
   constraint PK_DEPARTAMENTO_VENTAS primary key (VENTAS_ID)
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO  (
   EMPLEADOID           INTEGER                         not null,
   SUCURSALID           INTEGER                         not null,
   CARGOID              INTEGER                         not null,
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
   EMPLEADOVENDEDOR_SALARIOMENSUA INTEGER                         not null,
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
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA  (
   EMPRESA_NOMBRE       VARCHAR2(100)                   not null,
   EMPRESA_NOMBREGERENTE VARCHAR2(100)                   not null,
   EMPRESA_NOMBRESUBGERENTE VARCHAR2(100)                   not null,
   EMPRESA_NIT          INTEGER                         not null,
   constraint PK_EMPRESA primary key (EMPRESA_NOMBRE)
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
/* Index: REPRESENTANTE2_FK                                     */
/*==============================================================*/
create index REPRESENTANTE2_FK on GERENTE_CLIENTE (
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
/* Index: REPRESENTAR3_FK                                       */
/*==============================================================*/
create index REPRESENTAR3_FK on GERENTE_PROVEEDOR (
   PROVEEDORID ASC
);

/*==============================================================*/
/* Table: HISTORIAEMPLEADO                                      */
/*==============================================================*/
create table HISTORIAEMPLEADO  (
   HISTORIA_ID          INTEGER                         not null,
   HISTORIA_FECHAINGRESO DATE                            not null,
   HISTORIA_FECHARETIRO DATE                            not null,
   HISTORIA_ID_EMPLEADO INTEGER,
   HISTORIA_ID_EMPLEADOVENDEDOR INTEGER,
   HISTORIA_DOCUMENTOEMPLEADO INTEGER                         not null,
   HISTORIA_NOMBREEMPLEADO VARCHAR2(100)                   not null,
   HISTORIA_CARGOEMPLEADO VARCHAR2(100)                   not null,
   HISTORIA_FECHACAMBIOCARGO DATE                            not null,
   constraint PK_HISTORIAEMPLEADO primary key (HISTORIA_ID)
);

/*==============================================================*/
/* Table: INVENTARIO                                            */
/*==============================================================*/
create table INVENTARIO  (
   INVENTARIO_ID        INTEGER                         not null,
   POSCOMPRA_ID         INTEGER,
   PRECOMPRA_ID         INTEGER,
   INVENTARIO_CANTIDAD  INTEGER                         not null,
   constraint PK_INVENTARIO primary key (INVENTARIO_ID)
);

/*==============================================================*/
/* Index: RELATIONSHIP_23_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_23_FK on INVENTARIO (
   PRECOMPRA_ID ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_26_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_26_FK on INVENTARIO (
   POSCOMPRA_ID ASC
);

/*==============================================================*/
/* Table: LISTA_CANDIDATOS                                      */
/*==============================================================*/
create table LISTA_CANDIDATOS  (
   CANDIDATOS_ID        INTEGER                         not null,
   RECURSOSHUMANOS_ID   INTEGER,
   CARGOID              INTEGER,
   CANDIDATOS_NOMBRE    VARCHAR2(100)                   not null,
   CANDIDATOS_DOCUMENTO INTEGER                         not null,
   CANDIDATOS_CELULAR   INTEGER                         not null,
   CANDIDATOS_DIRECCION VARCHAR2(100)                   not null,
   CANDIDATOS_CORREO    VARCHAR2(100)                   not null,
   CANDIDATOS_GENERO    VARCHAR2(100),
   CANDIDATOS_PORCENTAJEAPTITUD INTEGER                         not null
      constraint CKC_CANDIDATOS_PORCEN_LISTA_CA check (CANDIDATOS_PORCENTAJEAPTITUD between 0 and 100),
   constraint PK_LISTA_CANDIDATOS primary key (CANDIDATOS_ID)
);

/*==============================================================*/
/* Index: SELECCION_FK                                          */
/*==============================================================*/
create index SELECCION_FK on LISTA_CANDIDATOS (
   RECURSOSHUMANOS_ID ASC
);

/*==============================================================*/
/* Index: VACANTES_FK                                           */
/*==============================================================*/
create index VACANTES_FK on LISTA_CANDIDATOS (
   CARGOID ASC
);

/*==============================================================*/
/* Table: POS_COMPRA                                            */
/*==============================================================*/
create table POS_COMPRA  (
   POSCOMPRA_ID         INTEGER                         not null,
   CLIENTEID            INTEGER,
   POSCOMPRA_FECHA      DATE                            not null,
   constraint PK_POS_COMPRA primary key (POSCOMPRA_ID)
);

/*==============================================================*/
/* Index: RECIBE_FK                                             */
/*==============================================================*/
create index RECIBE_FK on POS_COMPRA (
   CLIENTEID ASC
);

/*==============================================================*/
/* Table: PRE_COMPRA                                            */
/*==============================================================*/
create table PRE_COMPRA  (
   PRECOMPRA_ID         INTEGER                         not null,
   CLIENTEID            INTEGER,
   PRECOMPRA_FECHA      DATE                            not null,
   constraint PK_PRE_COMPRA primary key (PRECOMPRA_ID)
);

/*==============================================================*/
/* Index: RELATIONSHIP_24_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_24_FK on PRE_COMPRA (
   CLIENTEID ASC
);

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO  (
   PRODUCTOID           INTEGER                         not null,
   INVENTARIO_ID        INTEGER,
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
/* Index: EXISTENCIA_FK                                         */
/*==============================================================*/
create index EXISTENCIA_FK on PRODUCTO (
   INVENTARIO_ID ASC
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
/* Index: REPRESENTAR2_FK                                       */
/*==============================================================*/
create index REPRESENTAR2_FK on PROVEEDOR (
   GERENTE_PROVEEDORID ASC
);

/*==============================================================*/
/* Index: NN_FK                                                 */
/*==============================================================*/
create index NN_FK on PROVEEDOR (
   SUCURSALID ASC
);

/*==============================================================*/
/* Table: RANGO                                                 */
/*==============================================================*/
create table RANGO  (
   MAX_SALARIO          INTEGER                         not null,
   MIN_SALARIO          INTEGER                         not null,
   RANGOID              INTEGER                         not null,
   constraint PK_RANGO primary key (MAX_SALARIO)
);

/*==============================================================*/
/* Table: SUCURSAL                                              */
/*==============================================================*/
create table SUCURSAL  (
   SUCURSALID           INTEGER                         not null,
   RECURSOSHUMANOS_ID   INTEGER                         not null,
   SISTEMAS_ID          INTEGER                         not null,
   CIUDADID             INTEGER                         not null,
   MERCADEO_ID          INTEGER                         not null,
   CONTABILIDAD_ID      INTEGER                         not null,
   VENTAS_ID            INTEGER                         not null,
   EMPRESA_NOMBRE       VARCHAR2(100),
   INVENTARIO_ID        INTEGER,
   JURIDICO_ID          INTEGER                         not null,
   SUCURSAL_NOMBRE      VARCHAR2(100)                   not null,
   constraint PK_SUCURSAL primary key (SUCURSALID)
);

/*==============================================================*/
/* Index: UBICACION3_FK                                         */
/*==============================================================*/
create index UBICACION3_FK on SUCURSAL (
   CIUDADID ASC
);

/*==============================================================*/
/* Index: TIENE_FK                                              */
/*==============================================================*/
create index TIENE_FK on SUCURSAL (
   EMPRESA_NOMBRE ASC
);

/*==============================================================*/
/* Index: DEP1_FK                                               */
/*==============================================================*/
create index DEP1_FK on SUCURSAL (
   SISTEMAS_ID ASC
);

/*==============================================================*/
/* Index: DEP2_FK                                               */
/*==============================================================*/
create index DEP2_FK on SUCURSAL (
   JURIDICO_ID ASC
);

/*==============================================================*/
/* Index: DEP3_FK                                               */
/*==============================================================*/
create index DEP3_FK on SUCURSAL (
   CONTABILIDAD_ID ASC
);

/*==============================================================*/
/* Index: DEP4_FK                                               */
/*==============================================================*/
create index DEP4_FK on SUCURSAL (
   VENTAS_ID ASC
);

/*==============================================================*/
/* Index: DEP5_FK                                               */
/*==============================================================*/
create index DEP5_FK on SUCURSAL (
   MERCADEO_ID ASC
);

/*==============================================================*/
/* Index: DEP6_FK                                               */
/*==============================================================*/
create index DEP6_FK on SUCURSAL (
   RECURSOSHUMANOS_ID ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_27_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_27_FK on SUCURSAL (
   INVENTARIO_ID ASC
);

/*==============================================================*/
/* Table: VENDER                                                */
/*==============================================================*/
create table VENDER  (
   EMPLEADO_VENDEDORID  INTEGER                         not null,
   PRODUCTOID           INTEGER                         not null,
   constraint PK_VENDER primary key (EMPLEADO_VENDEDORID, PRODUCTOID)
);

/*==============================================================*/
/* Index: VENDER_FK                                             */
/*==============================================================*/
create index VENDER_FK on VENDER (
   EMPLEADO_VENDEDORID ASC
);

/*==============================================================*/
/* Index: VENDER2_FK                                            */
/*==============================================================*/
create index VENDER2_FK on VENDER (
   PRODUCTOID ASC
);

alter table ADQUISICION
   add constraint FK_ADQUISIC_ADQUISICI_CLIENTE foreign key (CLIENTEID)
      references CLIENTE (CLIENTEID);

alter table ADQUISICION
   add constraint FK_ADQUISIC_ADQUISICI_PRODUCTO foreign key (PRODUCTOID)
      references PRODUCTO (PRODUCTOID);

alter table CARGO
   add constraint FK_CARGO_DEFINIR_S_RANGO foreign key (MAX_SALARIO)
      references RANGO (MAX_SALARIO);

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

alter table INVENTARIO
   add constraint FK_INVENTAR_RELATIONS_PRE_COMP foreign key (PRECOMPRA_ID)
      references PRE_COMPRA (PRECOMPRA_ID);

alter table INVENTARIO
   add constraint FK_INVENTAR_RELATIONS_POS_COMP foreign key (POSCOMPRA_ID)
      references POS_COMPRA (POSCOMPRA_ID);

alter table LISTA_CANDIDATOS
   add constraint FK_LISTA_CA_SELECCION_DEPARTAM foreign key (RECURSOSHUMANOS_ID)
      references DEPARTAMENTO_RECURSOSHUMANOS (RECURSOSHUMANOS_ID);

alter table LISTA_CANDIDATOS
   add constraint FK_LISTA_CA_VACANTES_CARGO foreign key (CARGOID)
      references CARGO (CARGOID);

alter table POS_COMPRA
   add constraint FK_POS_COMP_RECIBE_CLIENTE foreign key (CLIENTEID)
      references CLIENTE (CLIENTEID);

alter table PRE_COMPRA
   add constraint FK_PRE_COMP_RELATIONS_CLIENTE foreign key (CLIENTEID)
      references CLIENTE (CLIENTEID);

alter table PRODUCTO
   add constraint FK_PRODUCTO_EXISTENCI_INVENTAR foreign key (INVENTARIO_ID)
      references INVENTARIO (INVENTARIO_ID);

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
   add constraint FK_SUCURSAL_DEP1_DEPARTAM foreign key (SISTEMAS_ID)
      references DEPARTAMENTO_SISTEMAS (SISTEMAS_ID);

alter table SUCURSAL
   add constraint FK_SUCURSAL_DEP2_DEPARTAM foreign key (JURIDICO_ID)
      references DEPARTAMENTO_JURIDICO (JURIDICO_ID);

alter table SUCURSAL
   add constraint FK_SUCURSAL_DEP3_DEPARTAM foreign key (CONTABILIDAD_ID)
      references DEPARTAMENTO_CONTABILIDAD (CONTABILIDAD_ID);

alter table SUCURSAL
   add constraint FK_SUCURSAL_DEP4_DEPARTAM foreign key (VENTAS_ID)
      references DEPARTAMENTO_VENTAS (VENTAS_ID);

alter table SUCURSAL
   add constraint FK_SUCURSAL_DEP5_DEPARTAM foreign key (MERCADEO_ID)
      references DEPARTAMENTO_MERCADEO (MERCADEO_ID);

alter table SUCURSAL
   add constraint FK_SUCURSAL_DEP6_DEPARTAM foreign key (RECURSOSHUMANOS_ID)
      references DEPARTAMENTO_RECURSOSHUMANOS (RECURSOSHUMANOS_ID);

alter table SUCURSAL
   add constraint FK_SUCURSAL_RELATIONS_INVENTAR foreign key (INVENTARIO_ID)
      references INVENTARIO (INVENTARIO_ID);

alter table SUCURSAL
   add constraint FK_SUCURSAL_TIENE_EMPRESA foreign key (EMPRESA_NOMBRE)
      references EMPRESA (EMPRESA_NOMBRE);

alter table SUCURSAL
   add constraint FK_SUCURSAL_UBICACION_CIUDAD foreign key (CIUDADID)
      references CIUDAD (CIUDADID);

alter table VENDER
   add constraint FK_VENDER_VENDER_EMPLEADO foreign key (EMPLEADO_VENDEDORID)
      references EMPLEADO_VENDEDOR (EMPLEADO_VENDEDORID);

alter table VENDER
   add constraint FK_VENDER_VENDER2_PRODUCTO foreign key (PRODUCTOID)
      references PRODUCTO (PRODUCTOID);

