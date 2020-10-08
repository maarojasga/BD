-- *************************************************************
-- Versión para Oracle
-- *************************************************************
/* Crear una tabla que contenga las características presentadas en el
enunciado del problema e incluya las columnas digitador y fecha */

create table Cliente
(
    clienteID number not null,
    NIT number NOT NULL,
    Nombre varchar(30) not null,
    Dirección varchar(30) not null,
    Ciudad varchar(30) not null,
    Correo varchar(50) null,
    Teléfono number null,
    Producto varchar(50),
    listaEspera nchar(2),
    representanteLegal varchar (50) not null,
    Cedula int not null,
    digitador VARCHAR(15) default USER NOT NULL,
    fecha DATE default sysdate NOT NULL,
    constraint PK_nucliente primary key(clienteID)
);
create sequence numeroCliente minvalue 1 start with 1;
/* Crear la vista VISTA_Cliente_Edit que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */

CREATE view VISTA_Cliente_Edit AS SELECT clienteID,
                                    NIT,
                                    Nombre,
                                    Dirección,
                                    Ciudad,
                                    Teléfono,
                                    Producto,
                                    listaEspera,
                                    representanteLegal,
                                    Cedula
                                    FROM Cliente;

/* Crear la VISTA_Cliente_View, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

CREATE OR replace view VISTA_Cliente_View 
(
    clienteID,
    NIT,
    Nombre,
    Dirección,
    Ciudad,
    Correo,
    Teléfono,
    Producto,
    listaEspera,
    representanteLegal,
    Cedula,
    digitador, 
    fecha
)
AS SELECT 
    clienteID,
    NIT,
    Nombre,
    Dirección,
    Ciudad,
    Correo,
    Teléfono,
    Producto,
    listaEspera,
    representanteLegal,
    Cedula,
    digitador,
    to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM Cliente
WHERE digitador = USER;

/* Permitir acceso a los compañeros de grupo */

GRANT SELECT ON VISTA_Cliente_View TO negarzonc;
GRANT INSERT ON VISTA_Cliente_Edit TO negarzonc;
GRANT SELECT ON VISTA_Cliente_Edit TO negarzonc;

GRANT SELECT ON VISTA_Cliente_View TO dabonilla;
GRANT INSERT ON VISTA_Cliente_Edit TO dabonilla;
GRANT SELECT ON VISTA_Cliente_Edit TO dabonilla;

GRANT SELECT ON VISTA_Cliente_View TO maarojasga;
GRANT INSERT ON VISTA_Cliente_Edit TO maarojasga;
GRANT SELECT ON VISTA_Cliente_Edit TO maarojasga;


/*INSERTAR DATOS*/

insert into cuenta_del_compañero.VISTA_Cliente_Edit
values (
numeroCliente.nextval,
122541,
'Taller doña Gloria S.A.S',
'Calle 111 #34-02',
'Bogotá',
'tallerdGloria@gmail.com',
3111425,
'Llantas',
'Si',
'Gloria Cupa',
41125147,
);

insert into cuenta_del_compañero.VISTA_Cliente_Edit
values (
numeroCliente.nextval,
425154,
'Jabones para bebe S.A.S',
'Calle 1 #02-02',
'Bogotá',
'jbebes@gmail.com',
4555247,
'Glicerina',
'Si',
'Diego Hernandez',
47454856
);

insert into cuenta_del_compañero.VISTA_Cliente_Edit
values (
numeroCliente.nextval,
14582,
'Tornillos S.A.S',
'Carrera 10 #14-22',
'Bogotá',
'torni@gmail.com',
4125864,
'Chazos',
'No',
'Daniela Leal',
41253658
);

/*Inseretar con un error*/

insert into cuenta_del_compañero.VISTA_Cliente_Edit
values (
1,     /*No se puede repetir numero en la llave primaria*/
14582,
'Tamales S.A.S',
'Diagonal 78 #14-22',
'Bogotá',
'Tamal@gmail.com',
123965,
'Arroz',
'No',
'Victor Sierra',
45823654
);

/******************* TABLA PRODUCTO ***********************************************/

create table  Producto(
productoID number not null,
nombre varchar(20) not null,
cantidad number not null,
precioCompra number(19,4) not null,
precioVenta number(19,4) not null,
proveedorID number not null,
proveedor varchar(30) not null,
bodega number null,
fechaAdquisición date not null,
digitador VARCHAR(15) default USER NOT NULL,
fecha DATE default sysdate NOT NULL,
constraint PK_nuproducto primary key(productoID)
);

create sequence numeroProducto minvalue 1 start with 1;

/* Crear la vista VISTA_Producto_Edit que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */

CREATE view VISTA_Producto_Edit AS SELECT productoID,
                                    nombre,
                                    cantidad,
                                    precioCompra,
                                    precioVenta,
                                    proveedorID,
                                    proveedor,
                                    bodega,
                                    fechaAdquisición
                                    FROM Producto;

/* Crear la VISTA_Producto_View, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

CREATE OR replace view VISTA_Producto_View 
(
    productoID,
    nombre,
    cantidad,
    precioCompra,
    precioVenta,
    proveedorID,
    proveedor,
    bodega,
    fechaAdquisición,    
    digitador, 
    fecha
)
AS SELECT 
    productoID,
    nombre,
    cantidad,
    precioCompra,
    precioVenta,
    proveedorID,
    proveedor,
    bodega,
    fechaAdquisición,    
    digitador, 
    to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss')
FROM Producto
WHERE digitador = USER;

/* Permitir acceso a los compañeros de grupo */

GRANT SELECT ON VISTA_Producto_View TO negarzonc;
GRANT INSERT ON VISTA_Producto_Edit TO negarzonc;
GRANT SELECT ON VISTA_Producto_Edit TO negarzonc;

GRANT SELECT ON VISTA_Producto_View TO dabonilla;
GRANT INSERT ON VISTA_Producto_Edit TO dabonilla;
GRANT SELECT ON VISTA_Producto_Edit TO dabonilla;

GRANT SELECT ON VISTA_Producto_View TO maarojasga;
GRANT INSERT ON VISTA_Producto_Edit TO maarojasga;
GRANT SELECT ON VISTA_Producto_Edit TO maarojasga;

/*INSERTAR DATOS*/

insert into cuenta_del_compañero.VISTA_Producto_Edit
values (
numeroProducto.nextval,
'Llantas',
20,
4000000,
4600000,
15,
'llantas morales',
4,
'10/20/2019'
);

insert into cuenta_del_compañero.VISTA_Producto_Edit
values (
numeroProducto.nextval,
'pilas',
2000,
4000000,
4900000,
10,
'pilas duraderas',
11,
'01/06/2019'
);

insert into cuenta_del_compañero.VISTA_Producto_Edit
values (
numeroProducto.nextval,
'Tapabocas',
20000,
5000000,
5600000,
01,
'frama implementos',
4,
'03/20/2020'
);
/* insertar con error*/
insert into cuenta_del_compañero.VISTA_Producto_Edit
values (
1,    /*llave primaria*/
'Llantas',
20,
4000000,
4600000,
15,
'llantas Silva',
4,
'05/02/2019'
);



/******************* TABLA Provedor ***********************/

CREATE TABLE Proveedor
(
    productoID INTEGER NOT NULL ,
    vendedorID INTEGER NOT NULL ,
    proveedorID INTEGER NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    nit NUMBER(19) NOT NULL,
    numeroTelefonico NUMBER(19) NOT NULL,
    numeroCentroLLamadas NUMBER(19) NOT NULL,
    direccion VARCHAR(30) NOT NULL,
    nombreGerente VARCHAR(30) NOT NULL,
    documentosGerente NUMBER(19) NOT NULL,
    telefonoGerente NUMBER(19) NOT NULL,
    digitador VARCHAR(15) default USER NOT NULL,
    fecha DATE default sysdate NOT NULL
);

/* Crear la vista VISTA_Proveedor_Edit que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */

CREATE view VISTA_Proveedor_Edit
AS
    SELECT productoID,
        vendedorID,
        proveedorID,
        nombre,
        nit,
        numeroTelefonico,
        numeroCentroLLamadas,
        direccion,
        nombreGerente,
        documentosGerente,
        telefonoGerente
    FROM provedorr;

/* Crear la VISTA_Proveedor_View, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

CREATE  CREATE OR REPLACE view VISTA_Proveedor_View
 AS SELECT 
    vendedorID  ,
    proveedorID ,
    nombre ,
    nit ,
    numeroTelefonico ,
    numeroCentroLLamadas ,
    direccion ,
    nombreGerente ,
    documentosGerente ,
    telefonoGerente ,
    digitador ,
    to_char(fecha, 'dd-mm-yyyy" "hh24:mi:ss') 

    FROM Proveedor
    WHERE digitador = user;

/* Añadir datos a su tabla NOMBRE_DE_LA_TABLA usando la VISTA_Proveedor_Edit */
INSERT INTO VISTA_Proveedor_Edit
VALUES
    (valor_1, valor_2, . . . , valor_n);

/* Permitir que sus compañeros de grupo únicamente puedan a añadir datos
a su tabla Empleado utilizando la VISTA_Proveedor_Edit */
/* Permitir a sus compañeros de grupo, ver los datos que ellos añadieron
a su tabla Empleado utilizando la vista VISTA_Proveedor_View */
/* Permitir a sus compañeros de grupo, ver los datos que todos añadieron
a su tabla Empleado utilizando la VISTA_Proveedor_Edit */



GRANT SELECT ON VISTA_Proveedor_View TO negarzonc;
GRANT INSERT ON VISTA_Proveedor_Edit TO negarzonc;
GRANT SELECT ON VISTA_Proveedor_Edit TO negarzonc;

GRANT SELECT ON VISTA_Proveedor_View TO dsilvamo;
GRANT INSERT ON VISTA_Proveedor_Edit TO dsilvamo;
GRANT SELECT ON VISTA_Proveedor_Edit TO dsilvamo;

GRANT SELECT ON VISTA_Proveedor_View TO maarojasga;
GRANT INSERT ON VISTA_Proveedor_EditTO maarojasga;
GRANT SELECT ON VISTA_Proveedor_Edit TO maarojasga;

/* Los compañeros de su grupos tienen que añadir datos a su tabla
NOMBRE_DE_LA_TABLA, usando la vista cuenta.VISTA_Provedor_Edit */
insert into cuenta_del_compañero.VISTA_Proveedor_Edit
 values (10245101, 
        10003541,
        10002141,
        'Fernando Garcia Lopez',
        00001,
        7647251,
        7412548,
        'Calle 87 B 01',
        'Mauricio Ramirez Quintero',
        100025840,
        7541458,
        );
/* Ver los datos que cada uno ingresó a la tabla NOMBRE_DE_LA_TABLA
utilizando la vista cuenta.VISTA_Provedor_View */
select * from cuenta_del_compañero.VISTA_Proveedor_View;



/******************* TABLA Empleados ***********************/



CREATE TABLE Empleados
(
    empleadoID NUMBER(19) NOT NULL,
    nombresApellidos VARCHAR(50) NOT NULL,
    telefono NUMBER(19) NOT NULL ,
    ciudad VARCHAR(15) NOT NULL ,
    direccion VARCHAR(30) NOT NULL,
    genero VARCHAR(10) NOT NULL,
    FechaIngreso date NOT NULL,
    sucursal VARCHAR(20),
    departamento VARCHAR(20),
    cargo VARCHAR(25) NOT NULL,
    jefeInmediato VARCHAR(30) NOT NULL,
    sueldoFijo NUMBER(19,4) NOT NULL,
    comision NUMBER(19,4) NULL,
    clienteID NUMBER(19) NULL,
    nombreCliente VARCHAR(30) NULL,
    telefonoCliente NUMBER(19),
    digitador VARCHAR(15) default USER NOT NULL,
    fecha DATE default sysdate NOT NULL
);
/* Crear la vista VISTA_Empleados_Edit, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */

CREATE view VISTA_Empleados_Edit AS SELECT
        empleadoID ,
        nombresApellidos ,
        telefono ,
        ciudad ,
        direccion ,
        genero ,
        FechaIngreso ,
        sucursal ,
        departamento ,
        cargo ,
        jefeInmediato ,
        sueldoFijo ,
        comision ,
        clienteID ,
        nombreCliente ,
        telefonoCliente
    FROM empleados;

/* Crear la vista VISTA_Empleados_View, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */


CREATE OR replace view VISTA_Empleados_View as select 
       empleadoID ,
        nombresApellidos ,
        telefono ,
        ciudad ,
        direccion ,
        genero ,
        FechaIngreso ,
        sucursal ,
        departamento ,
        cargo ,
        jefeInmediato ,
        sueldoFijo ,
        comision ,
        clienteID ,
        nombreCliente ,
        telefonoCliente,
        digtador,
        to_char (fecha, 'dd-mm-yyyy" "hh24:mi:ss') FROM Provedor
    WHERE digitador = USER;

/* Añadir datos a su tabla NOMBRE_DE_LA_TABLA usando la VISTA_Empleados_Edit */

INSERT INTO VISTA_Empleados_Edit
VALUES
    (valor_1, valor_2, . . . , valor_n);


/* Permitir que sus compañeros de grupo únicamente puedan a añadir datos
a su tabla Empleado utilizando la vista VISTA_Empleados_Edit */
/* Permitir a sus compañeros de grupo, ver los datos que ellos añadieron
a su tabla Empleado utilizando la vista VISTA_Empleados_View */
/* Permitir a sus compañeros de grupo, ver los datos que todos añadieron
a su tabla Empleado utilizando la vista VISTA_Empleados_Edit */


GRANT SELECT ON VISTA_Empleados_View TO negarzonc;
GRANT INSERT ON VISTA_Empleados_Edit TO negarzonc;
GRANT SELECT ON VISTA_Empleados_Edit TO negarzonc;

GRANT SELECT ON VISTA_Empleados_View TO dsilvamo;
GRANT INSERT ON VISTA_Empleados_Edit TO dsilvamo;
GRANT SELECT ON VISTA_Empleados_Edit TO dsilvamo;

GRANT SELECT ON VISTA_Empleados_View TO maarojasga;
GRANT INSERT ON VISTA_Empleados_Edit TO maarojasga;
GRANT SELECT ON VISTA_Empleados_Edit TO maarojasga;

/* Los compañeros de su grupos tienen que añadir datos a su tabla
NOMBRE_DE_LA_TABLA, usando la vista cuenta.VISTA_Provedor_Edit */
insert into cuenta_del_compañero.VISTA_Empleados_Edit
 values (20045101, 
        'Leonardo Pardo Marquez',
        7485412,
        'Medellin',
        'Masculino',
        '10/05/2015',
        'Sucursal',
        'Recursos Humanos',
        'Secretario',
        'nombreJefe',
        800000,
        null,
        
        100025840,
        7541458,
        );
/* Ver los datos que cada uno ingresó a la tabla NOMBRE_DE_LA_TABLA
utilizando la vista cuenta.VISTA_Provedor_View */
select * from cuenta_del_compañero.VISTA_Proveedor_View;