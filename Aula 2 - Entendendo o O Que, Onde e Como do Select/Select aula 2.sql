SELECT -- O quê? (Quais dados serão retornados no select)
	sepal_width AS sepala_largura,
	sepal_lenght AS sepala_comprimento,
	petal_length petala_comprimento,
	petal_width,	
	class 
FROM -- Onde? (Quais são as tabelas que eu irei buscar os dados)
	tbl_iris
WHERE -- Como? (Quais são as regras da minha seleção)
	sepal_width > 2.1