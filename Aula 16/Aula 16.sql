USE OficinaZuruba;

DROP TABLE IF EXISTS tbl_Clientes;
CREATE TABLE tbl_Clientes (
	cdCliente INT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	dataNascimento DATE,
	sexo CHAR(1)
);

DROP TABLE IF EXISTS tbl_Carros;
CREATE TABLE tbl_Carros (
	cdCarro INT PRIMARY KEY,
	nomeModelo VARCHAR(50) NOT NULL,
	nomeFabricante VARCHAR(50) NOT NULL,
	anoModelo INT NOT NULL,
	cdCliente INT FOREIGN KEY REFERENCES tbl_Clientes (cdCliente)
);

DROP TABLE IF EXISTS tbl_Servicos;
CREATE TABLE tbl_Servicos (
	cdServico INT PRIMARY KEY,
	cdCarro INT FOREIGN KEY REFERENCES tbl_Carros (cdCarro) NOT NULL,
	dataEntrada DATE NOT NULL,
	dataSaida DATE
);

DROP TABLE IF EXISTS tbl_Pecas;
CREATE TABLE tbl_Pecas (
	cdPeca INT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	valorCompra FLOAT,
	valorVenda FLOAT
);

DROP TABLE IF EXISTS tbl_Manutencoes;
CREATE TABLE tbl_Manutencoes (
	cdManutencao INT PRIMARY KEY,
	dataManutencao DATE NOT NULL,
	nome VARCHAR(50) NOT NULL,
)