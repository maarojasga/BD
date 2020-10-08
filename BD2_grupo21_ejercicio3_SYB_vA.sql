-- *************************************************************
-- Versión para ASE SAP
-- *************************************************************
/* Crear una tabla que contenga las características presentadas en el
enunciado del problema e incluya las columnas digitador y fecha */

CREATE TABLE Empleado
(
    identificacion BIGINT,
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


CREATE VIEW VISTA_1 AS
SELECT
    identificacion,
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

CREATE VIEW VISTA_2 AS
SELECT *
FROM Empleado
WHERE digitador = user_name()

/* Añadir datos a su tabla NOMBRE_DE_LA_TABLA usando la VISTA_1 */

INSERT INTO VISTA_1 VALUES (valor_1, valor_2, . . . , valor_n)

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
VALUES (valor_1, valor_2, . . . , valor_n)
/* Ver los datos que cada uno ingresó a la tabla NOMBRE_DE_LA_TABLA
utilizando la vista cuenta.VISTA_2 */
SELECT * FROM cuenta_del_compañero.VISTA_2

/* DATOS */
/* Recursos Humanos, Contabilidad,
Mercadeo, Sistemas e Informática, Ventas, Jurídico, Producción, Empaque. */

/* SEBASTIAN */
INSERT INTO VISTA_1 VALUES (valor_1, valor_2, . . . , valor_n)

/* DIEGO */
INSERT INTO cuenta_del_compañero.VISTA_1
VALUES (valor_1, valor_2, . . . , valor_n)

/* ALEJANDRA */
INSERT INTO cuenta_del_compañero.VISTA_1
VALUES (valor_1, valor_2, . . . , valor_n)

/* DANIEL */
INSERT INTO cuenta_del_compañero.VISTA_1
VALUES (valor_1, valor_2, . . . , valor_n)

/* DAVID */
INSERT INTO cuenta_del_compañero.VISTA_1
VALUES (valor_1, valor_2, . . . , valor_n)