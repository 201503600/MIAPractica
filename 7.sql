/*Después de que se implementó el script el cuál creó todas las tablas de las
bases de datos, el Comité Olímpico Internacional tomó la decisión de
eliminar la restricción “UNIQUE” de las siguientes tablas: PAIS, TIPO_MEDALLA, DEPARTAMENTO*/

--ELIMINACION DE RESTRICCION UNIQUE EN PAIS
ALTER TABLE PAIS
	DROP CONSTRAINT UQ_pais_nombre;

--ELIMINACION DE RESTRICCION UNIQUE EN TIPO_MEDALLA
ALTER TABLE TIPO_MEDALLA
	DROP CONSTRAINT UQ_tipo_medalla_medalla;

--ELIMINACION DE RESTRICCION UNIQUE EN DEPARTAMENTO
ALTER TABLE DEPARTAMENTO
	DROP CONSTRAINT UQ_departamento_nombre;

COMMIT;