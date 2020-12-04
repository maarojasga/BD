-- *************************************************************
-- Versión para Microsoft SQL Server 48
-- *************************************************************
/* Crear una tabla que contenga las características presentadas en el
enunciado del problema e incluya las columnas digitador y fecha */

CREATE TABLE Proveedor
(
    productoID INTEGER UNIQUE,
    empleadoID INTEGER,
    proveeedorID INTEGER ,
    nombre VARCHAR(30),
    nit BIGINT,
    numeroTelefonico BIGINT,
    numeroCentroLlamadas BIGINT,
    direccion VARCHAR(30),
    nombreGerente VARCHAR(30),
    documentoGerente BIGINT,
    telefonoGerente BIGINT,
    digitador varchar (15) default user_name() not null,
    fecha datetime default getdate () not null
)

/* Crear la vista VISTA_1, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */

CREATE VIEW VISTA_Proveedor_EDIT
AS
    SELECT
        productoID,
        empleadoID,
        proveeedorID,
        nombre,
        nit,
        numeroTelefonico,
        numeroCentroLlamadas,
        direccion,
        nombreGerente,
        documentoGerente,
        telefonoGerente
    FROM Proveedor

/* Crear la vista VISTA_2, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */
CREATE VIEW VISTA_Proveedor_VIEW
AS
    SELECT *
    FROM Proveedor
    WHERE digitador = user_name()


CREATE TABLE Empleado
(
    empleadoID INTEGER,
    nombres VARCHAR(30),
    apellidos VARCHAR(30),
    telefonoFijoEmpleado BIGINT,
    telefonoMovilEmpleado BIGINT,
    dirreccion VARCHAR(50),
    genero VARCHAR(10),
    correo VARCHAR(30),
    fechaIngreso DATETIME,
    departamentoEmpresa VARCHAR(25),
    cargoEmpresa VARCHAR(25),
    salarioMensual MONEY,
    comision MONEY,
    identificacionCliente BIGINT NULL,
    nombreCliente VARCHAR(30) NULL,
    telefonoCliente BIGINT NULL,
    digitador VARCHAR(15) default user_name() NOT NULL,
    fecha DATETIME default getdate () NOT NULL
)


/* Crear la vista VISTA_1, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */

CREATE VIEW VISTA_Empleado_EDIT
AS
    SELECT
        empleadoID,
        nombres,
        apellidos,
        telefonoFijoEmpleado,
        telefonoMovilEmpleado,
        dirreccion,
        genero,
        correo,
        fechaIngreso,
        departamentoEmpresa,
        cargoEmpresa,
        salarioMensual,
        comision,
        identificacionCliente,
        nombreCliente,
        telefonoCliente
    FROM Empleado

/* Crear la vista VISTA_2, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */
CREATE VIEW VISTA_Empleado_VIEW
AS
    SELECT *
    FROM Empleado
    WHERE digitador = user_name()


CREATE TABLE Cliente
(
    numeroCliente INTEGER NOT NULL,
    NIT INT NOT NULL,
    Nombre VARCHAR(30) NOT NULL,
    Dirección VARCHAR(30) NULL,
    Ciudad VARCHAR(30) not NULL,
    Correo VARCHAR(50) NULL,
    Teléfono INT NULL,
    Producto VARCHAR(50),
    listaEspera NCHAR(2),
    representanteLegal VARCHAR (50) NOT NULL,
    Cedula INT NOT NULL,
    constraint PK_ncliente primary key(numeroCliente),
    digitador VARCHAR(15) default user_name() NOT NULL,
    fecha DATETIME default getdate () NOT NULL
);

/* Crear la vista VISTA_1, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */

CREATE VIEW VISTA_Cliente_EDIT
AS
    SELECT
        numeroCliente,
        NIT,
        Nombre,
        Dirección,
        Ciudad,
        Correo,
        Teléfono,
        Producto,
        listaEspera,
        representanteLegal,
        Cedula
    FROM Cliente

/* */
CREATE VIEW VISTA_Cliente_VIEW
AS
    SELECT *
    FROM Cliente
    WHERE digitador = user_name()


CREATE TABLE Producto
(
    productoID NUMERIC IDENTITY,
    nombre VARCHAR(20),
    cantidad INT,
    precioCompra MONEY,
    precioVenta MONEY,
    proveedorID INT,
    proveedor VARCHAR(25),
    bodega INT,
    fechaAdquisicion DATETIME,
    digitador VARCHAR(15) default user_name() NOT NULL,
    fecha DATETIME default getdate () NOT NULL,
    constraint  PK_JJ primary key   (productoID)
)


-- ****************************************************************************
/* Crear una tabla PRODUCTO que contenga las características presentadas en el
enunciado del problema e incluya las columnas digitador y fecha */
-- ****************************************************************************

CREATE TABLE Producto
(
    productoID NUMERIC IDENTITY,
    nombre VARCHAR(20),
    cantidad INT,
    precioCompra MONEY,
    precioVenta MONEY,
    proveedorID INT,
    proveedor VARCHAR(25),
    bodega INT,
    fechaAdquisicion DATETIME,
    digitador VARCHAR(15) default user_name() NOT NULL,
    fecha DATETIME default getdate () NOT NULL,
    constraint  PK_JJ primary key   (productoID)
)

/* Crear la vista VISTA_Producto_EDIT, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */

CREATE VIEW VISTA_Producto_EDIT
AS
    SELECT
        nombre,
        cantidad,
        precioCompra,
        precioVenta,
        proveedorID,
        proveedor,
        bodega,
        fechaAdquisicion

    FROM Producto

/* Crear la vista VISTA_Producto_VIEW, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

CREATE VIEW VISTA_Producto_VIEW
AS
    SELECT *
    FROM Producto
    WHERE digitador = user_name()



/* Permitir acceso a los compañeros de grupo */

GRANT SELECT ON VISTA_Proveedor_VIEW TO maarojasga
GRANT SELECT ON VISTA_Proveedor_VIEW TO dsilvamo
GRANT SELECT ON VISTA_Proveedor_VIEW TO dabonilla
GRANT INSERT ON VISTA_Proveedor_EDIT TO maarojasga
GRANT INSERT ON VISTA_Proveedor_EDIT TO dsilvamo
GRANT INSERT ON VISTA_Proveedor_EDIT TO dabonilla

GRANT SELECT ON VISTA_empleado_VIEW TO maarojasga
GRANT SELECT ON VISTA_empleado_VIEW TO dsilvamo
GRANT SELECT ON VISTA_empleado_VIEW TO dabonilla
GRANT INSERT ON VISTA_empleado_EDIT TO maarojasga
GRANT INSERT ON VISTA_empleado_EDIT TO dsilvamo
GRANT INSERT ON VISTA_empleado_EDIT TO dabonilla

GRANT SELECT ON VISTA_Cliente_VIEW TO maarojasga
GRANT SELECT ON VISTA_Cliente_VIEW TO dsilvamoa
GRANT SELECT ON VISTA_Cliente_VIEW TO dabonilla
GRANT INSERT ON VISTA_Cliente_EDIT TO maarojasga
GRANT INSERT ON VISTA_Cliente_EDIT TO dsilvamo
GRANT INSERT ON VISTA_Cliente_EDIT TO dabonilla

GRANT SELECT ON VISTA_Producto_VIEW TO maarojasga
GRANT SELECT ON VISTA_Producto_VIEW TO dsilvamo
GRANT SELECT ON VISTA_Producto_VIEW TO dabonilla
GRANT INSERT ON VISTA_Producto_EDIT TO maarojasga
GRANT INSERT ON VISTA_Producto_EDIT TO dsilvamo
GRANT INSERT ON VISTA_Producto_EDIT TO dabonilla

/*///////////////////////////////*/
INSERT INTO VISTA_Proveedor_EDIT
VALUES(
        0, 0, 0, 'Luis Hernando', 112321245, 3132324456, 7864212, 'Cra 98 # 12 R 21-2', 'Jose', 1209786453, 1223423453
);

INSERT INTO VISTA_Proveedor_EDIT
VALUES(
        1, 1, 1, 'Jose Ignazio', 112321245, 3132324456, 7864212, 'Cra 98 # 12 R 21-2', 'Jose', 1209786453, 1223423453
);

INSERT INTO VISTA_Proveedor_EDIT
VALUES(
        2, 2, 2, 'Ana Galingo', 112321245, 3132324456, 7864212, 'Cra 98 # 12 R 21-2', 'Jose', 1209786453, 1223423453
);

INSERT INTO VISTA_Proveedor_EDIT
VALUES(
        1, 1, 1, 'Luis Hernando', 112321245, 3132324456, 7864212, 'Cra 98 # 12 R 21-2', 'Jose', 1209786453, 1223423453
);


/*///////////////////////////////*/
INSERT INTO negarzonc.VISTA_Empleado_EDIT
VALUES(
        0, 'Jose', 'Ignazio', 3002238754, 98352673, 'Trans 23 # 91 -2', 'Masculino', 'jose@jose.com', '02/05/2020', 'gerencia', 'presidente', 8000000, 12000000, 12512, 'asd',305486235
);
INSERT INTO negarzonc.VISTA_Empleado_EDIT
VALUES(
        0, 'Jose', 'Ignazio', 3002238754, 98352673, 'Trans 23 # 91 -2', 'Masculino', 'jose@jose.com', '02/05/2020', 'gerencia', 'presidente', 8000000, 12000000, 12512, 'asd',305486235
);
INSERT INTO negarzonc.VISTA_Empleado_EDIT
VALUES(
        0, 'Jose', 'Ignazio', 3002238754, 98352673, 'Trans 23 # 91 -2', 'Masculino', 'jose@jose.com', '02/05/2020', 'gerencia', 'presidente', 8000000, 12000000, 12512, 'asd',305486235
);
INSERT INTO negarzonc.VISTA_Empleado_EDIT
VALUES(
        0, 'Jose', 'Ignazio', 3002238754, 98352673, 'Trans 23 # 91 -2', 'Masculino', 'jose@jose.com', '02/05/2020', 'gerencia', 'presidente', 8000000, 12000000, 12512, 'asd',305486235
);

/*///////////////////////////////*/

INSERT INTO VISTA_Cliente_EDIT
VALUES(
        0, 6843561210, 'Luis Hernando','Cra 98 # 12 R 21-2', 'Bogota', 'lh@gmail.com', 8752541, 'zapatos', 'no', 'Jose', 896512354
);

INSERT INTO VISTA_Cliente_EDIT
VALUES(
        1, 4897465132, 'Luis Garcia','Tras 98 # 12 R 21-2', 'Bogota', 'lh@gmail.com', 8752541, 'zapatos', 'no', 'Jose', 896512354
);

INSERT INTO VISTA_Cliente_EDIT
VALUES(
        2, 310684, 'Maria Gonzales','Cra 98 # 85 R 21-2', 'Bogota', 'lh@gmail.com', 8752541, 'zapatos', 'no', 'Jose', 896512354
);

INSERT INTO VISTA_Cliente_EDIT
VALUES(
        2, 69845132, 'Luis Hernando','Cra 98 # 12 R 21-2', 'Bogota', 'lh@gmail.com', 8752541, 'zapatos', 'no', 'Jose', 896512354
);

/*///////////////////////////////*/

INSERT INTO VISTA_Producto_EDIT
VALUES(
        0, 'Zapatos', 2, 12000, 50000, 0, 'NA',2, '20/05/2019'
);

INSERT INTO VISTA_Producto_EDIT
VALUES(
        3, 'Camisas', 2, 12000, 50000, 0, 'NA',2, '20/05/2019'
);

INSERT INTO VISTA_Producto_EDIT
VALUES(
        2, 'Zapatos', 2, 12000, 50000, 0, 'NA',2, '20/05/2019'
);

INSERT INTO VISTA_Producto_EDIT
VALUES(
        0, 'Zapatos', 2, 12000, 50000, 0, 'NA',2, '20/05/2019'
);

SELECT * FROM VISTA_Cliente_VIEW;
SELECT * FROM VISTA_Producto_VIEW;
SELECT * FROM VISTA_Empleado_VIEW;
SELECT * FROM VISTA_Producto_VIEW;

/*///////////////////////////////*/

SELECT * FROM negarzonc.VISTA_Empleado_EDIT
SELECT * FROM negarzonc.VISTA_Proveedores_EDIT
SELECT * FROM negarzonc.VISTA_Cliente_EDIT
SELECT * FROM negarzonc.VISTA_Producto_EDIT