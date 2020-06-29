/*En la tabla “Evento” se decidió que la fecha y hora se trabajaría en una sola
columna.*/

--ELIMINACION DE COLUMNAS FECHA Y HORA
ALTER TABLE EVENTO 
	DROP fecha, hora;

--CREACION DEL NUEVO CAMPO FECHA_HORA
ALTER TABLE EVENTO 
	ADD fecha_hora TIMESTAMP;

COMMIT;