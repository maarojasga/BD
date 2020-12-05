
/*GERENTE DE LA EMPRESA*/
insert into VISTA_EMPRESA_GERENTE_EDIT values ( 1, 'Alejandro Rodríguez', 53631501, '3123548112', 'alejandro.jimenez@ventascolombia.co', 45,  'Masculino', 1, 1, 1, 7000000, 0) /*Tipo de dato incorrecto*/

/* SUBGERENTE */
insert into VISTA_EMPRESA_SUBGERENTE_EDIT values ( 1, 1, 'Luisa Fernanda López', 58566182, 3127894150, 'luisa.lopez@ventascolombia.co', 25,  'Femenino', 1, 1, 1, 11000000, 0) /*Salario superior al rengo*/

/*  DIRECTORES DE SUCURSAL */
insert into VISTA_DIRECTOR_SUCURSAL_EDIT values ( 1, 'Natalia Pérez', 86455525, 3124103020, 'natalia.perez@ventascolombia.co', 'Femenino', 10, 1, 1, 4000000, 0, 0) /*Menor de edad*/
insert into VISTA_DIRECTOR_SUCURSAL_EDIT values ( 1, 'Diego Nájar', 93833711, 3127846362, 'diego.najar@ventascolombia.co', 'Masculino', 33, 1, 1, 2000000, 0, 0) /* Salario inferior al rango establecido*/


/*  DIRECTORES DE DEPARTAMENTO */
insert into VISTA_DIRECTOR_DEPARTAMENTO_EDIT values ( 1, 'Cecilia Gutierrez', 84945694, 3124105263, 'cecilia.gutierrez@ventascolombia.co', 'Masc', 12 , 1, 1, 3500000, 0, 0) /* Menor de edad*/
insert into VISTA_DIRECTOR_DEPARTAMENTO_EDIT values ( 2, 'Fernando Rincón', 70436506, 3127415285, 'fernando.rincon@ventascolombia.co', 'Masc', 25 , 1, 1, 3500000, 0) /*Falta un dato*/

/*  BODEGAS, LLAVE PRIMARIA DUPLICADA Y LLAVE FORÁNEA INVÁLIDA */
insert into VISTA_BODEGAS_EDIT values (	1	,	21	,	'PRADO',	22	,	71	)








