/*Se decidió que las ubicación de los eventos se registrarán previamente en
una tabla y que en la tabla “Evento” sólo se almacenara la llave foránea
según el código del registro de la ubicación, para esto debe realizar lo
siguiente:*/

--A. Crear la tabla llamada “Sede” 
CREATE TABLE SEDE(
	codigo 	INTEGER 	NOT NULL,
	sede 	VARCHAR(50) NOT NULL
);

ALTER TABLE SEDE 
	ADD CONSTRAINT PK_sede
	PRIMARY KEY (codigo);

--B. Cambiar el tipo de dato de la columna Ubicación de la tabla Evento por un tipo entero.
ALTER TABLE EVENTO 
	ALTER COLUMN ubicacion TYPE INTEGER USING ubicacion::INTEGER;

/*C. Crear una llave foránea en la columna Ubicación de la tabla Evento y 
referenciarla a la columna código de la tabla Sede, la que fue creada
en el paso anterior.*/
ALTER TABLE EVENTO 
	ADD CONSTRAINT FK_evento_sede
	FOREIGN KEY (ubicacion) REFERENCES SEDE(codigo);

COMMIT;