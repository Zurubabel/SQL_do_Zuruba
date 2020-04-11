USE Aulas_SQL_2020;

DROP TABLE IF EXISTS tbl_Pessoas;

CREATE TABLE tbl_Pessoas (
	idPessoa INT,
	nomePessoa VARCHAR(50),
	dataNascimento DATE
);

INSERT INTO tbl_Pessoas (idPessoa, nomePessoa, dataNascimento) 
VALUES 
	(1, 'Zurubabel', '1987-11-15'), 
	(2, 'Jailson', '1971-04-04'),
	(3, 'Jobsley', '1990-01-03');


select * from tbl_Pessoas