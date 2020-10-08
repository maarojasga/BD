-- *************************************************************
-- Versión para Microsoft SQL Server
-- *************************************************************
/* Crear una tabla que contenga las características presentadas en el
enunciado del problema e incluya las columnas digitador y fecha */

CREATE TABLE Proveedor
(
    productoID INTEGER,
    empleadoID INTEGER,
    proveeedorID INTEGER,
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

CREATE VIEW VISTA_Proveedor_Edit
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
CREATE VIEW negarzonc
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

CREATE VIEW VISTA_Empleado_Edit
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
        telefonoCliente,
        digitador,
        fecha
    FROM Empleado

/* Crear la vista VISTA_2, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */
CREATE VIEW VISTA_Empleado_View
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

CREATE VIEW VISTA_Empleado_Edit
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
        telefonoCliente,
        digitador,
        fecha
    FROM Empleado

/* Crear la vista VISTA_2, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */
CREATE VIEW VISTA_Empleado_View
AS
    SELECT *
    FROM Empleado
    WHERE digitador = user_name()






















/* Añadir datos a su tabla NOMBRE_DE_LA_TABLA usando la VISTA_1 */

INSERT INTO VISTA_1
VALUES
    (valor_1, valor_2, . . . , valor_n)

/* Permitir que sus compañeros de grupo únicamente puedan a añadir datos
a su tabla NOMBRE_DE_LA_TABLA utilizando la vista VISTA_1 */
/* Permitir a sus compañeros de grupo, ver los datos que ellos añadieron
a su tabla NOMBRE_DE_LA_TABLA utilizando la vista VISTA_2 */

GRANT SELECT ON VISTA_2 TO maarojasga
GRANT INSERT ON VISTA_1 TO maarojasga

GRANT SELECT ON VISTA_2 TO dsilvamo
GRANT INSERT ON VISTA_1 TO dsilvamo

GRANT SELECT ON VISTA_2 TO dabonilla
GRANT INSERT ON VISTA_1 TO dabonilla


/* Los compañeros de su grupos tienen que añadir datos a su tabla
NOMBRE_DE_LA_TABLA, usando la vista cuenta.VISTA_1 */
INSERT INTO cuenta_del_compañero.VISTA_1
VALUES
    (valor_1, valor_2, . . . , valor_n)
/* Ver los datos que cada uno ingresó a la tabla NOMBRE_DE_LA_TABLA
utilizando la vista cuenta.VISTA_2 */
SELECT *
FROM cuenta_del_compañero.VISTA_2

/* DATOS */
/* Recursos Humanos, Contabilidad,
Mercadeo, Sistemas e Informática, Ventas, Jurídico, Producción, Empaque. */

/* SEBASTIAN */
INSERT INTO VISTA_1
VALUES
    (valor_1, valor_2, . . . , valor_n)

/* DIEGO */
INSERT INTO cuenta_del_compañero.VISTA_1
VALUES
    (valor_1, valor_2, . . . , valor_n)

/* ALEJANDRA */
INSERT INTO cuenta_del_compañero.VISTA_1
VALUES
    (valor_1, valor_2, . . . , valor_n)

/* DANIEL */
INSERT INTO cuenta_del_compañero.VISTA_1
VALUES
    (valor_1, valor_2, . . . , valor_n)

/* DAVID */
INSERT INTO cuenta_del_compañero.VISTA_1
VALUES
    (valor_1, valor_2, . . . , valor_n)