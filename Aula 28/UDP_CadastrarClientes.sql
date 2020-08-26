/*
	Autor: Zurubabel
	Data: 20/08/2020 22:48
	Base: OficinaZuruba
	Cadastrar dados na base tbl_Clientes

	
	

*/
ALTER PROCEDURE UDP_CadastrarClientes(
	@cdCliente INT,
	@nome VARCHAR(50),
	@dataNascimento DATE,
	@sexo CHAR(1)
)
AS
BEGIN
	INSERT INTO tbl_Clientes(cdCliente, nome, dataNascimento, sexo)
	VALUES (@cdCliente, @nome, @dataNascimento, @sexo);
END