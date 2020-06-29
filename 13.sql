/*Los miembros que no tenían registrado su número de teléfono en sus
perfiles fueron notificados, por lo que se acercaron a las instalaciones de
Comité para actualizar sus datos.*/

UPDATE MIEMBRO SET telefono = 55464601 
	WHERE nombre = 'Laura' 
		AND apellido = 'Cunha Silva';

UPDATE MIEMBRO SET telefono = 91514243
	WHERE nombre = 'Jeuel'
		AND apellido = 'Villalpando';

UPDATE MIEMBRO SET telefono = 920686670
	WHERE nombre = 'Scott'
		AND apellido = 'Mitchell';

COMMIT; 