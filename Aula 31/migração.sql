-- Cadastro dos dados principais
USE OficinaZuruba;

INSERT INTO tbl_TipoVeiculos(cdTipoVeiculo, tipoVeiculo)
VALUES (1, 'Carro'), (2, 'Motocicleta'), (3, 'Caminhão');


-- SUB SELECT

-- Fabricantes na tabela antiga tbl_Carros
SELECT
	ROW_NUMBER() OVER(ORDER BY NomeFabricante) AS Linha,
	NomeFabricante
FROM (
	SELECT DISTINCT
		NomeFabricante
	FROM
		tbl_Carros
) Dados

select * from tbl_Carros

