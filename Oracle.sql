create table Cliente(
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
    constraint PK_ncliente primary key(clienteID)
);
create sequence numeroCliente minvalue 1 start with 1;











































































































































CREATE TABLE Proveedor(
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
                        fecha DATE  default sysdate NOT NULL
                        );
                        
/* Crear la vista VISTA_Proveedor_Edit que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */

CREATE view VISTA_Proveedor_Edit AS SELECT productoID,
                                    vendedorID,
                                    proveedorID,
                                    nombre,
                                    nit,
                                    numeroTelefonico,
                                    numeroCentroLLamadas,
                                    direccion,
                                    nombreGerente,
                                    documentosGerente,
                                    telefonoGerente FROM provedorr;

/* Crear la VISTA_Proveedor_View, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */

CREATE  view VISTA_Proveedor_View AS 
SELECT *
FROM Proveedor
WHERE digitador = user;

/* Añadir datos a su tabla NOMBRE_DE_LA_TABLA usando la VISTA_Proveedor_Edit */
INSERT INTO VISTA_Proveedor_Edit VALUES (valor_1, valor_2, . . . , valor_n);

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

GRANT SELECT ON VISTA_Proveedor_View TO maarojasg;
GRANT INSERT ON VISTA_Proveedor_EditTO maarojasg;
GRANT SELECT ON VISTA_Proveedor_Edit TO maarojasg;

-----------------------------------------------------------

CREATE TABLE Empleados (
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
                        fecha DATE  default sysdate NOT NULL
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
                        telefonoCliente FROM empleados;
                        
/* Crear la vista VISTA_Empleados_View, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */                        
 
 
CREATE view VISTA_Empleados_View AS
SELECT *
FROM Provedor
WHERE digitador = user;

/* Añadir datos a su tabla NOMBRE_DE_LA_TABLA usando la VISTA_Empleados_Edit */

INSERT INTO VISTA_Empleados_Edit VALUES (valor_1, valor_2, . . . , valor_n);


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

GRANT SELECT ON VISTA_Empleados_View TO maarojasg;
GRANT INSERT ON VISTA_Empleados_Edit TO maarojasg;

GRANT SELECT ON VISTA_Empleados_Edit TO maarojasg;
