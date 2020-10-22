
-- *************************************************************
-- Versión para ASE SAP
-- *************************************************************



-- ****************************************************************************
/* Crear una tabla EMPLEADO que contenga las características presentadas en el
enunciado del problema e incluya las columnas digitador y fecha */
-- ****************************************************************************

CREATE TABLE Empleado
(
    empleadoID NUMERIC IDENTITY,
    cédula BIGINT constraint  I_aaa unique clustered,
    nombresApellidos VARCHAR(50),
    telefonoMovilEmpleado BIGINT,
    ciudad VARCHAR(15),
    direccion VARCHAR(50),
    genero VARCHAR(10),
    correo VARCHAR(30),
    fechaIngreso DATETIME,
    sucursal INT,
    departamentoEmpresa VARCHAR(25),
    cargoEmpresa VARCHAR(25),
    idJefeInmediato BIGINT,
    sueldoFijo MONEY,
    comision MONEY NULL,
    clienteID BIGINT NULL,
    nombreCliente VARCHAR(30) NULL,
    telefonoCliente BIGINT NULL,
    digitador VARCHAR(15) default user_name() NOT NULL,
    fecha DATETIME default getdate () NOT NULL,
    constraint  PK_JJ primary key   (empleadoID)
)

/* Crear la vista VISTA_Empleado_Edit, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */

CREATE VIEW VISTA_Empleado_Edit
AS
    SELECT
    cédula,
    nombresApellidos,
    telefonoMovilEmpleado,
    ciudad,
    direccion,
    genero,
    correo,
    fechaIngreso,
    sucursal,
    departamentoEmpresa,
    cargoEmpresa,
    idJefeInmediato,
    sueldoFijo,
    comision,
    clienteID,
    nombreCliente,
    telefonoCliente
    FROM Empleado

/* Crear la vista VISTA_Empleado_View, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

CREATE VIEW VISTA_Empleado_View
AS
    SELECT *
    FROM Empleado
    WHERE digitador = user_name()

-- ****************************************************************************
/* Crear una tabla PROVEEDOR que contenga las características presentadas en el
enunciado del problema e incluya las columnas digitador y fecha */
-- ****************************************************************************

CREATE TABLE Proveedor
(
    productoID INT UNIQUE,
    empleadoID INT,
    proveeedorID NUMERIC IDENTITY,
    nombre VARCHAR(30),
    nit BIGINT,
    numeroTelefonico BIGINT,
    numeroCentroLlamadas BIGINT,
    direccion VARCHAR(30),
    nombreGerente VARCHAR(30),
    documentoGerente BIGINT,
    telefonoGerente BIGINT,
    digitador VARCHAR (15) default user_name() NOT NULL,
    fecha DATETIME default getdate () NOT NULL
)

/* Crear la vista VISTA_Proveedor_Edit, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */

CREATE VIEW VISTA_Proveedor_Edit
AS
    SELECT
        productoID,
        empleadoID,
        nombre,
        nit,
        numeroTelefonico,
        numeroCentroLlamadas,
        direccion,
        nombreGerente,
        documentoGerente,
        telefonoGerente
    FROM Proveedor

/* Crear la vista VISTA_Proveedor_View, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */
CREATE VIEW VISTA_Proveedor_View
AS
    SELECT *
    FROM Proveedor
    WHERE digitador = user_name()

-- ****************************************************************************
/* Crear una tabla CLIENTE que contenga las características presentadas en el
enunciado del problema e incluya las columnas digitador y fecha */
-- ****************************************************************************
CREATE TABLE Cliente
(
    clienteID NUMERIC IDENTITY,
    nit BIGINT,
    nombre VARCHAR(30),
    dirección VARCHAR(30),
    ciudad VARCHAR(30),
    correo VARCHAR(50) NULL,
    teléfono INT NULL,
    producto VARCHAR(50),
    listaEspera NCHAR(2),
    representanteLegal VARCHAR(50),
    cedula INT,
    digitador VARCHAR (15) default user_name() NOT NULL,
    fecha DATETIME default getdate () NOT NULL,
    constraint PK_ncliente primary key(clienteID) 
)


/* Crear la vista VISTA_Cliente_Edit, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */

CREATE VIEW VISTA_Cliente_Edit
AS
    SELECT
    nit,
    nombre,
    dirección,
    ciudad,
    correo,
    teléfono,
    producto,
    listaEspera,
    representanteLegal,
    cedula

    FROM Cliente

/* Crear la vista VISTA_Cliente_View, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */
CREATE VIEW VISTA_Cliente_View
AS
    SELECT *
    FROM Cliente
    WHERE digitador = user_name()

-- ****************************************************************************
/* Crear una tabla PRODUCTO que contenga las características presentadas en el
enunciado del problema e incluya las columnas digitador y fecha */
-- ****************************************************************************

CREATE TABLE Producto (
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

/* Crear la vista VISTA_Producto_Edit, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */

    CREATE VIEW VISTA_Producto_Edit
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

/* Crear la vista VISTA_Producto_View, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */
     
     CREATE VIEW VISTA_Producto_View
AS
    SELECT *
    FROM Producto
    WHERE digitador = user_name()


-- ****************************************************************************
/* G E N E R A L */
-- ****************************************************************************

/* Añadir datos a sus tablas */

INSERT INTO VISTA_Empleado_Edit VALUES (valor_1, valor_2, . . . , valor_n)
INSERT INTO VISTA_Proveedor_Edit VALUES (valor_1, valor_2, . . . , valor_n)
INSERT INTO VISTA_Cliente_Edit VALUES (valor_1, valor_2, . . . , valor_n)
INSERT INTO VISTA_Producto_Edit VALUES (valor_1, valor_2, . . . , valor_n)

/* Permisos */

GRANT SELECT ON VISTA_Empleado_View TO negarzonc
GRANT INSERT ON VISTA_Empleado_Edit TO negarzonc
GRANT SELECT ON VISTA_Empleado_Edit TO negarzonc
GRANT SELECT ON VISTA_Empleado_View TO dsilvamo
GRANT INSERT ON VISTA_Empleado_Edit TO dsilvamo
GRANT SELECT ON VISTA_Empleado_Edit TO dsilvamo
GRANT SELECT ON VISTA_Empleado_View TO dabonilla
GRANT INSERT ON VISTA_Empleado_Edit TO dabonilla
GRANT SELECT ON VISTA_Empleado_Edit TO dabonilla

GRANT SELECT ON VISTA_Proveedor_View TO negarzonc
GRANT INSERT ON VISTA_Proveedor_Edit TO negarzonc
GRANT SELECT ON VISTA_Proveedor_Edit TO negarzonc
GRANT SELECT ON VISTA_Proveedor_View TO dsilvamo
GRANT INSERT ON VISTA_Proveedor_Edit TO dsilvamo
GRANT SELECT ON VISTA_Proveedor_Edit TO dsilvamo
GRANT SELECT ON VISTA_Proveedor_View TO dabonilla
GRANT INSERT ON VISTA_Proveedor_Edit TO dabonilla
GRANT SELECT ON VISTA_Proveedor_Edit TO dabonilla

GRANT SELECT ON VISTA_Cliente_View TO negarzonc
GRANT INSERT ON VISTA_Cliente_Edit TO negarzonc
GRANT SELECT ON VISTA_Cliente_Edit TO negarzonc
GRANT SELECT ON VISTA_Cliente_View TO dsilvamo
GRANT INSERT ON VISTA_Cliente_Edit TO dsilvamo
GRANT SELECT ON VISTA_Cliente_Edit TO dsilvamo
GRANT SELECT ON VISTA_Cliente_View TO dabonilla
GRANT INSERT ON VISTA_Cliente_Edit TO dabonilla
GRANT SELECT ON VISTA_Cliente_Edit TO dabonilla

GRANT SELECT ON VISTA_Producto_View TO negarzonc
GRANT INSERT ON VISTA_Producto_Edit TO negarzonc
GRANT SELECT ON VISTA_Producto_Edit TO negarzonc
GRANT SELECT ON VISTA_Producto_View TO dsilvamo
GRANT INSERT ON VISTA_Producto_Edit TO dsilvamo
GRANT SELECT ON VISTA_Producto_Edit TO dsilvamo
GRANT SELECT ON VISTA_Producto_View TO dabonilla
GRANT INSERT ON VISTA_Producto_Edit TO dabonilla
GRANT SELECT ON VISTA_Producto_Edit TO dabonilla

/* Los compañeros de su grupos tienen que añadir datos a sus tablas,
usando la vista cuenta.VISTA_NombreTabla_Edit*/
INSERT INTO maarojasga.VISTA_Empleado_Edit
VALUES (valor_1, valor_2, . . . , valor_n)
INSERT INTO maarojasga.VISTA_Proveedor_Edit
VALUES (valor_1, valor_2, . . . , valor_n)
INSERT INTO maarojasga.VISTA_Cliente_Edit
VALUES (valor_1, valor_2, . . . , valor_n)
INSERT INTO maarojasga.VISTA_Producto_Edit
VALUES (valor_1, valor_2, . . . , valor_n)

/* Ver los datos que cada uno ingresó a las tablas
utilizando la vista cuenta.VISTA_NombreTabla_View */
SELECT * FROM maarojasga.VISTA_Empleado_View
SELECT * FROM maarojasga.VISTA_Proveedor_View
SELECT * FROM maarojasga.VISTA_Cliente_View
SELECT * FROM maarojasga.VISTA_Producto_View

/* Ver los datos que todos ingresaron a las tablas
utilizando la vista cuenta.VISTA_NombreTabla_Edit */
SELECT * FROM maarojasga.VISTA_Empleado_Edit
SELECT * FROM maarojasga.VISTA_Proveedores_Edit
SELECT * FROM maarojasga.VISTA_Cliente_Edit
SELECT * FROM maarojasga.VISTA_Producto_Edit
