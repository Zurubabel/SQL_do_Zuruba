/*
	Autor: Zurubabel
	Data: 22/08/2020 14:14
	Base: OficinaZuruba

	select * from tbl_Carros
	SELECT * FROM VW_VeiculosPorPessoa

*/

ALTER VIEW VW_VeiculosPorPessoa
AS
	SELECT 
		 Cl.cdCliente,
		 Cl.nome AS nomeCliente,
		 COUNT(C.cdCarro) AS QtVeiculos
	FROM 
		tbl_Clientes Cl INNER JOIN tbl_Carros C 
		ON Cl.cdCliente = C.cdCliente
	GROUP BY
		Cl.cdCliente,
		nome

