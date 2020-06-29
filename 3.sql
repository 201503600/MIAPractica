/*Todos los eventos de las olimpiadas deben ser programados del 24 de julio
de 2020 a partir de las 9:00:00 hasta el 09 de agosto de 2020 hasta las
20:00:00.*/

ALTER TABLE EVENTO 
	ADD CONSTRAINT CH_fecha_hora CHECK (
			fecha_hora > '2020-07-24 09:00:00'
			AND fecha_hora < '2020-08-09 20:00:00'
		); 

COMMIT;