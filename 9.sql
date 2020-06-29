/*En la tabla “Costo_Evento” se determinó que la columna “tarifa” no debe
ser entero sino un decimal con 2 cifras de precisión.*/

ALTER TABLE COSTO_EVENTO 
	ALTER COLUMN Tarifa TYPE NUMERIC (7,2);

COMMIT;