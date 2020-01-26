DECLARE @Media FLOAT;
DECLARE @Quantidade INT;

-- Atribuindo as variáveis (Jeito 1)
--SET @Media = (SELECT AVG(petal_length) FROM tbl_iris)

-- Jeito 2

SELECT
	@Media = AVG(petal_length),
	@Quantidade = COUNT(petal_length)
FROM
	tbl_iris
	
--SELECT @Media, @Quantidade

SELECT
	SQRT(
		(SUM(
			POWER((petal_length - @Media), 2))
		) / (@Quantidade)
	) AS DP_Nosso
FROM
	tbl_iris

SELECT
	STDEVP(petal_length) as SQL_DP
FROM
	tbl_iris



/*SELECT
	*
FROM
	tbl_iris*/