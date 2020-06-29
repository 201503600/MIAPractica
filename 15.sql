/*Todos los atletas que se registren deben cumplir con ser menores a 25 años.
De lo contrario no se debe poder registrar a un atleta en la base de datos.*/

ALTER TABLE ATLETA 
	ADD CONSTRAINT CH_edad CHECK (
			edad < 25
		); 
COMMIT;