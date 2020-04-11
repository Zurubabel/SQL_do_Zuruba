USE Aulas_SQL_2020;

DROP TABLE IF EXISTS tbl_Clientes;
CREATE TABLE tbl_Clientes (
	idCliente INT,
	nomeCliente VARCHAR(50),
	dataNascimento DATE,
	sexo CHAR(1)
);

DROP TABLE IF EXISTS tbl_Carros;
CREATE TABLE tbl_Carros (
	nomeFabricante VARCHAR(50),
	nomeModelo VARCHAR(50),
	anoModelo INT,
	idCliente INT
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
	1
);

select * from tbl_Clientes;
select * from tbl_Carros;

-- Junção

SELECT 
	C.nomeCliente,
	CA.nomeModelo,
	CA.anoModelo
FROM 
	tbl_Clientes AS C, tbl_Carros CA
WHERE
	C.idCliente = CA.idCliente