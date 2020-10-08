
-- *************************************************************
-- Versión para ASE SAP
-- *************************************************************
/* Crear una tabla EMPLEADO que contenga las características presentadas en el
enunciado del problema e incluya las columnas digitador y fecha */


CREATE TABLE Empleado
(
    empleadoID INT,
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

/* Crear la vista VISTA_Empleado_Edit, que muestre las columnas que usted definió en
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

