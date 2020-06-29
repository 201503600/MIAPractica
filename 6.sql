/*Generar el script necesario para hacer la inserción de datos a las tablas
requeridas.*/

--INSERCION EN PAIS
INSERT INTO PAIS VALUES (1, 'Guatemala');
INSERT INTO PAIS VALUES (2, 'Francia');
INSERT INTO PAIS VALUES (3, 'Argentina');
INSERT INTO PAIS VALUES (4, 'Alemania');
INSERT INTO PAIS VALUES (5, 'Italia');
INSERT INTO PAIS VALUES (6, 'Brasil');
INSERT INTO PAIS VALUES (7, 'Estados Unidos');

--INSERCION EN PROFESION
INSERT INTO PROFESION VALUES (1,'Médico');
INSERT INTO PROFESION VALUES (2,'Arquitecto');
INSERT INTO PROFESION VALUES (3,'Ingeniero');
INSERT INTO PROFESION VALUES (4,'Secretaria');
INSERT INTO PROFESION VALUES (5,'Auditor');

--INSERCION EN MIEMBRO
INSERT INTO MIEMBRO (cod_miembro, nombre, apellido, edad, residencia, PAIS_cod_pais, PROFESION_cod_prof) 
	VALUES (1,'Scott','Mitchell',32,'1092 Highland Drive Manitowoc, WI 54220',7,3);
INSERT INTO MIEMBRO
	VALUES (2,'Fanette','Poulin',25,25075853,'49, boulevard Aristide Briand 76120 LE GRAND-QUEVILLY',2,4);
INSERT INTO MIEMBRO (cod_miembro, nombre, apellido, edad, residencia, PAIS_cod_pais, PROFESION_cod_prof) 
	VALUES (3,'Laura','Cunha Silva',55,'Rua Onze, 86 Uberaba MG',6,5);
INSERT INTO MIEMBRO 
	VALUES (4,'Juan José','López',38,36985247,'26 calle 4-10 zona 11',1,2);
INSERT INTO MIEMBRO 
	VALUES (5,'Arcangela','Panicucci',39,391664921,'Via Santa Teresa, 114 90010-Geraci Siculo PA',5,1);
INSERT INTO MIEMBRO (cod_miembro, nombre, apellido, edad, residencia, PAIS_cod_pais, PROFESION_cod_prof) 
	VALUES (6,'Jeuel','Villalpando',31,'Acuña de Figeroa 6106 80101 Playa Pascual',3,5);

--INSERCION EN DISCIPLINA
INSERT INTO DISCIPLINA VALUES (1,'Atletismo','Saltos de longitud y triples, de altura y con pértiga o garrocha; las pruebas de lanzamiento de martillo, jabalina y disco.');
INSERT INTO DISCIPLINA (cod_disciplina, nombre) VALUES (2,'Bádminton');
INSERT INTO DISCIPLINA (cod_disciplina, nombre) VALUES (3,'Ciclismo');
INSERT INTO DISCIPLINA VALUES (4,'Judo','Es un arte marcial que se originó en Japón alrededor de 1880');
INSERT INTO DISCIPLINA (cod_disciplina, nombre) VALUES (5,'Lucha');
INSERT INTO DISCIPLINA (cod_disciplina, nombre) VALUES (6,'Tenis de Mesa');
INSERT INTO DISCIPLINA (cod_disciplina, nombre) VALUES (7,'Boxeo');
INSERT INTO DISCIPLINA VALUES (8,'Natación','Está presente como deporte en los Juegos desde la primera edición de la era moderna, en Atenas, Grecia, en 1896, donde se disputo en aguas abiertas.');
INSERT INTO DISCIPLINA (cod_disciplina, nombre) VALUES (9,'Esgrima');
INSERT INTO DISCIPLINA (cod_disciplina, nombre) VALUES (10,'Vela');

--INSERCION EN TIPO_MEDALLA
INSERT INTO TIPO_MEDALLA VALUES (1,'Oro');
INSERT INTO TIPO_MEDALLA VALUES (2,'Plata');
INSERT INTO TIPO_MEDALLA VALUES (3,'Bronce');
INSERT INTO TIPO_MEDALLA VALUES (4,'Platino');

--INSERCION EN CATEGORIA
INSERT INTO CATEGORIA VALUES (1,'Clasificatorio');
INSERT INTO CATEGORIA VALUES (2,'Eliminatorio');
INSERT INTO CATEGORIA VALUES (3,'Final');

--INSERCION EN TIPO_PARTICIPACION
INSERT INTO TIPO_PARTICIPACION VALUES (1,'Individual');
INSERT INTO TIPO_PARTICIPACION VALUES (2,'Parejas');
INSERT INTO TIPO_PARTICIPACION VALUES (3,'Equipos');

--INSERCION EN MEDALLERO
INSERT INTO MEDALLERO VALUES (5,3,1);
INSERT INTO MEDALLERO VALUES (2,5,1);
INSERT INTO MEDALLERO VALUES (6,4,3);
INSERT INTO MEDALLERO VALUES (4,3,4);
INSERT INTO MEDALLERO VALUES (7,10,3);
INSERT INTO MEDALLERO VALUES (3,8,2);
INSERT INTO MEDALLERO VALUES (1,2,1);
INSERT INTO MEDALLERO VALUES (1,5,4);
INSERT INTO MEDALLERO VALUES (5,7,2);

--INSERCION EN SEDE
INSERT INTO SEDE VALUES (1,'Gimnasio Metropolitano de Tokio');
INSERT INTO SEDE VALUES (2,'Jardín del Palacio Imperial de Tokio');
INSERT INTO SEDE VALUES (3,'Gimnasio Nacional Yoyogi');
INSERT INTO SEDE VALUES (4,'Nippon Budokan');
INSERT INTO SEDE VALUES (5,'Estadio Olímpico');

--INSERCION EN EVENTO
INSERT INTO EVENTO (cod_evento, fecha_hora, ubicacion, DISCIPLINA_cod_disciplina, TIPO_PARTICIPACION_cod_participacion, CATEGORIA_cod_categoria) 
	VALUES (1,TO_TIMESTAMP('24 jul 2020 11:00:00','DD mon YYYY HH24:MI:SS'),3,2,2,1);
INSERT INTO EVENTO (cod_evento, fecha_hora, ubicacion, DISCIPLINA_cod_disciplina, TIPO_PARTICIPACION_cod_participacion, CATEGORIA_cod_categoria)  
	VALUES (2,TO_TIMESTAMP('26 jul 2020 10:30:00','DD mon YYYY HH24:MI:SS'),1,6,1,3);
INSERT INTO EVENTO (cod_evento, fecha_hora, ubicacion, DISCIPLINA_cod_disciplina, TIPO_PARTICIPACION_cod_participacion, CATEGORIA_cod_categoria) 
	VALUES (3,TO_TIMESTAMP('30 jul 2020 18:45:00','DD mon YYYY HH24:MI:SS'),5,7,1,2);
INSERT INTO EVENTO (cod_evento, fecha_hora, ubicacion, DISCIPLINA_cod_disciplina, TIPO_PARTICIPACION_cod_participacion, CATEGORIA_cod_categoria) 
	VALUES (4,TO_TIMESTAMP('01 aug 2020 12:15:00','DD mon YYYY HH24:MI:SS'),2,1,1,1);
INSERT INTO EVENTO (cod_evento, fecha_hora, ubicacion, DISCIPLINA_cod_disciplina, TIPO_PARTICIPACION_cod_participacion, CATEGORIA_cod_categoria) 
	VALUES (5,TO_TIMESTAMP('24 jul 2020 11:00:00','DD mon YYYY HH24:MI:SS'),4,10,3,1);

COMMIT;