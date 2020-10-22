-- *************************************************************
-- Datos de ingreso según la herramienta y la tabla
-- *************************************************************
/*ASE SAP-EMPLEADO VÁLIDO*/
INSERT INTO maarojasga.VISTA_Empleado_Edit VALUES (1017812123, 'Alex Clavijo', 307482106, 'Bogotá', 'cr 41 #161b-32', 'masculino', 'alex.clav1998@gmail.com', '10/06/2020', 00001, 'Contabilidad', 'Contador', 17825, 2500000, null, null, null, null)
INSERT INTO maarojasga.VISTA_Empleado_Edit VALUES (1017478190, 'Fernanda Garzón', 30782186, 'Bogotá', 'cr 131 #5-4', 'femenino', 'mariafergar@gmail.com', '10/05/2020', 00001, 'Recursos Humanos', 'Director', 101012, 3500000, null, null, null, null)
INSERT INTO maarojasga.VISTA_Empleado_Edit VALUES (1017815874, 'Nicolás Rincón', 30125145, 'Bogotá', 'cr 18 #45-15', 'masculino', 'r.nico07@gmail.com', '10/07/2020', 00001, 'Ventas', 'Vendedor', 158461, 1500000, 260000, 00001 , 'RockON', 5264781)
/*ASE SAP-EMPLEADO NO VÁLIDO*/
INSERT INTO maarojasga.VISTA_Empleado_Edit VALUES (1017478190, 'Juanita Alarcón', 30782186, 'Bogotá', 'cr 131 #5-4', 'femenino', 'mariafergar@gmail.com', '10/05/2020', 00001, 'Recursos Humanos', 'Director', 101012, 3500000, null, null, null, null)


/*ASE SAP-PROVEEDOR VÁLIDO*/
INSERT INTO maarojasga.VISTA_Proveedor_Edit VALUES (0125, 11145, 'Rodrigo Cuesta', 141255862, 3135478960, 5241782, 'Cr 52 #170 -15', 'Sandra Milena', 789451065, 3014710477 )
INSERT INTO maarojasga.VISTA_Proveedor_Edit VALUES (0126, 10123, 'Natalia Romero', 321548632, 3104789654, 5241782, 'Cr 41 #23 -90', 'Pedro Cruz', 144522871, 3121278197 )
INSERT INTO maarojasga.VISTA_Proveedor_Edit VALUES (0127, 17894, 'Camilo Preciado', 54825892, 3124567841, 5241782, 'Cr 12 #187 -14', 'Josué Reinaldo', 254881039, 3114875221 )
/*ASE SAP-PROVEEDOR NO VÁLIDO*/
INSERT INTO maarojasga.VISTA_Proveedor_Edit VALUES (0127, 17894, 'Juan Perez', 54825892, 3124567841, 5241782, 'Cr 12 #187 -14', 'Josué Reinaldo', 254881039, 3114875221 )


/*ASE SAP-CLIENTE VÁLIDO*/
INSERT INTO maarojasga.VISTA_Cliente_Edit VALUES (101478626, 'Brandon López', 'Cr 4 #2a -45', 'BOGOTÁ', null, null, 'Zapatos', 'no', 'John Contreras', 1047625)
INSERT INTO maarojasga.VISTA_Cliente_Edit VALUES (104789630, 'Andrés Rincón', 'Cr 147 #41b -14', 'BOGOTÁ', 'a.rincon.10@gmail.com', null, 'Camisas', 'si', 'Alejandro Roa', 3547891)
INSERT INTO maarojasga.VISTA_Cliente_Edit VALUES (478159620, 'Sebastian Bach', 'Cr 223 #33c -10', 'BOGOTÁ', null, null, 'Tapetes', 'no', 'Daniel Rojas', 7854213)
/*ASE SAP-CLIENTE NO VÁLIDO*/
INSERT INTO maarojasga.VISTA_Cliente_Edit VALUES (0, 101478626, 'Brandon López', 'Cr 189 #21a -45', 'BOGOTÁ', null, null, 'Zapatos', 'no', 'John Contreras', 1047620)


/*ASE SAP-PRODUCTO VÁLIDO*/
INSERT INTO maarojasga.VISTA_Producto_Edit VALUES ('Camisas', 20, 50000, 120000, 121356, 'Camisas del Oriente', 003, '10/07/2020')
INSERT INTO maarojasga.VISTA_Producto_Edit VALUES ('Zapatos', 35, 38000, 62000, 14785, 'Zapatos y más', 004, '10/07/2020')
INSERT INTO maarojasga.VISTA_Producto_Edit VALUES ('Medias', 120, 12000, 39780, 2147, 'Gomosos SAS', 002, '10/07/2020')
/*ASE SAP-PRODUCTO NO VÁLIDO*/
INSERT INTO maarojasga.VISTA_Producto_Edit VALUES (002,'Camisas', 20, 50000, 120000, 121356, 'Camisas del Oriente', 003, '10/07/2020')



