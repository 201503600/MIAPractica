/*Después de un análisis más profundo se decidió que los Atletas pueden
participar en varias disciplinas y no sólo en una como está reflejado
actualmente en las tablas, por lo que se pide que realizar lo siguiente.*/

/*A. Script que elimine la llave foránea de “cod_disciplina” que se
encuentra en la tabla “Atleta”.*/
ALTER TABLE ATLETA 
	DROP CONSTRAINT FK_atleta_disciplina;

ALTER TABLE ATLETA 
	DROP COLUMN DISCIPLINA_cod_disciplina;

/*B. . Script que cree una tabla con el nombre “Disciplina_Atleta” que
		contendrá los siguiente campos:
		i. Cod_atleta (llave foránea de la tabla Atleta)
		ii. Cod_disciplina (llave foránea de la tablaDisciplina)
		La llave primaria será la unión de las llaves foráneas “cod_atleta” y
		“cod_disciplina”.*/

CREATE TABLE DISCIPLINA_ATLETA(
	ATLETA_cod_atleta 			INTEGER 	NOT NULL,
	DISCIPLINA_cod_disciplina	INTEGER NOT NULL
);

ALTER TABLE DISCIPLINA_ATLETA
	ADD CONSTRAINT PK_disciplina_atleta
	PRIMARY KEY (ATLETA_cod_atleta, DISCIPLINA_cod_disciplina);
ALTER TABLE DISCIPLINA_ATLETA
	ADD CONSTRAINT FK_disciplina_atleta_atleta
	FOREIGN KEY (ATLETA_cod_atleta) REFERENCES ATLETA(cod_atleta) ON DELETE CASCADE;
ALTER TABLE DISCIPLINA_ATLETA
	ADD CONSTRAINT FK_disciplina_atleta_disciplina
	FOREIGN KEY (DISCIPLINA_cod_disciplina) REFERENCES DISCIPLINA(cod_disciplina) ON DELETE CASCADE;

COMMIT;