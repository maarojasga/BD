
-- *************************************************************
-- Versión para ASE SAP
-- *************************************************************
/* Crear una tabla EMPLEADO que contenga las características presentadas en el
enunciado del problema e incluya las columnas digitador y fecha */


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

/* Añadir datos a su tabla Empleado usando VISTA_Empleado_Edit */

INSERT INTO VISTA_Empleado_Edit VALUES (valor_1, valor_2, . . . , valor_n)

/* Permitir que sus compañeros de grupo únicamente puedan a añadir datos
a su tabla Empleado utilizando la vista VISTA_Empleado_Edit */
/* Permitir a sus compañeros de grupo, ver los datos que ellos añadieron
a su tabla Empleado utilizando la vista VISTA_Empleado_View */

GRANT SELECT ON VISTA_Empleado_View TO negarzonc
GRANT INSERT ON VISTA_Empleado_Edit TO negarzonc
GRANT SELECT ON VISTA_Empleado_Edit TO negarzonc

GRANT SELECT ON VISTA_Empleado_View TO dsilvamo
GRANT INSERT ON VISTA_Empleado_Edit TO dsilvamo
GRANT SELECT ON VISTA_Empleado_Edit TO dsilvamo

GRANT SELECT ON VISTA_Empleado_View TO dabonilla
GRANT INSERT ON VISTA_Empleado_Edit TO dabonilla
GRANT SELECT ON VISTA_Empleado_Edit TO dabonilla


/* Los compañeros de su grupos tienen que añadir datos a su tabla
Empleado, usando la vista cuenta.VISTA_Empleado_Edit*/
INSERT INTO cuenta_del_compañero.VISTA_Empleado_Edit
VALUES (valor_1, valor_2, . . . , valor_n)

/* Ver los datos que cada uno ingresó a la tabla Empleado
utilizando la vista cuenta.VISTA_Empleado_View */
SELECT * FROM cuenta_del_compañero.VISTA_Empleado_View

/* Ver los datos que todos ingresaron a la tabla Empleado
utilizando la vista cuenta.VISTA_Empleado_Edit */
SELECT * FROM cuenta_del_compañero.VISTA_Empleado_Edit


/* DATOS */
/* Recursos Humanos, Contabilidad,
Mercadeo, Sistemas e Informática, Ventas, Jurídico, Producción, Empaque. */

/* ALEJANDRA */
INSERT INTO VISTA_Empleado_Edit VALUES (valor_1, valor_2, . . . , valor_n)

/* DIEGO */
INSERT INTO maarojasga.VISTA_Empleado_Edit
VALUES (valor_1, valor_2, . . . , valor_n)

/* SEBASTIAN */
INSERT INTO cuenta_del_compañero.VISTA_Empleado_Edit
VALUES (valor_1, valor_2, . . . , valor_n)

/* DANIEL */
INSERT INTO cuenta_del_compañero.VISTA_Empleado_Edit
VALUES (valor_1, valor_2, . . . , valor_n)

/* DAVID */
INSERT INTO cuenta_del_compañero.VISTA_Empleado_Edit
VALUES (valor_1, valor_2, . . . , valor_n)

