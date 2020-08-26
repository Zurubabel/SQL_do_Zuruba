-- Cadastro dos dados principais
--USE OficinaZuruba;

/*INSERT INTO tbl_TipoVeiculos(cdTipoVeiculo, tipoVeiculo)
VALUES (1, 'Carro'), (2, 'Motocicleta'), (3, 'Caminhão');
*/

;WITH tbl_TipoVeiculosCTE (cdTipoVeiculo, tipoVeiculo) AS (
	SELECT 1, 'Carro'
		UNION ALL
	SELECT 2, 'Motocicleta'
		UNION ALL
	SELECT 3, 'Caminhão'
), tbl_Veiculos_FabricantesCTE  (cdFabricante, nomeFabricante) AS (
	SELECT
		ROW_NUMBER() OVER(ORDER BY NomeFabricante), NomeFabricante
	FROM (
		SELECT DISTINCT
			NomeFabricante
		FROM
			tbl_Carros
	) Dados
), tbl_Veiculos_ModelosCTE AS (
	SELECT DISTINCT
		VF.cdFabricante,
		TV.cdTipoVeiculo,
		C.nomeModelo,
		C.anoModelo as ano,
		'Brasil' as paisFabricacao,
		CASE
			WHEN C.anoModelo < 2010 THEN 'S' ELSE 'N'
		END as foraDeLinha
	FROM
		tbl_Veiculos_FabricantesCTE VF INNER JOIN tbl_Carros C ON
		VF.nomeFabricante = C.nomeFabricante,
		tbl_TipoVeiculosCTE TV
	WHERE
		TV.tipoVeiculo = 'Carro'
)

SELECT * FROM tbl_Veiculos_ModelosCTE

-- SELECT * FROM tbl_Veiculos_FabricantesCTE




--select * from tbl_Carros

