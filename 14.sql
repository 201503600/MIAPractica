/*. El Comité decidió que necesita la fotografía en la información de los atletas
para su perfil, por lo que se debe agregar la columna “Fotografía” a la tabla
Atleta, debido a que es un cambio de última hora este campo deberá ser
opcional.*/

ALTER TABLE ATLETA 
	ADD COLUMN fotografia VARCHAR(100);

COMMIT;