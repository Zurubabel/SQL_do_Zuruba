USE Aulas_SQL_2020;

DROP TABLE IF EXISTS tbl_Clientes;
CREATE TABLE tbl_Clientes (
	idCliente INT PRIMARY KEY,
	nomeCliente VARCHAR(50),
	dataNascimento DATE,
	sexo CHAR(1)
);

DROP TABLE IF EXISTS tbl_Carros;
CREATE TABLE tbl_Carros (
	nomeFabricante VARCHAR(50),
	nomeModelo VARCHAR(50),
	anoModelo INT,
	idCliente INT FOREIGN KEY REFERENCES tbl_Clientes(idCliente)
);


-- Inserir dados
INSERT INTO tbl_Clientes (
	idCliente,
	nomeCliente,
	dataNascimento,
	sexo
) VALUES (
	1,
	'Zé',
	'1985-01-13',
	'M'
), (
	2,
	'Jailson Mendes',
	'1970-01-04',
	'M'
);

INSERT INTO tbl_Carros (
	nomeFabricante,
	nomeModelo,
	anoModelo,
	idCliente
) VALUES (
	'Volkswagen',
	'Fox',
	2008,
	1
), (
	'Hyundai',
	'Tucson',
	2013,
	2
);

-- Junção

SELECT 
	C.nomeCliente,
	CA.nomeModelo,
	CA.anoModelo
FROM 
	tbl_Clientes AS C, tbl_Carros CA
WHERE
	C.idCliente = CA.idCliente