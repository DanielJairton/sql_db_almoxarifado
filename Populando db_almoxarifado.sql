--Populando banco de dados db_almoxarifado

--Inserindo fornecedores
INSERT INTO
	Fornecedores (nome, descricao)
VALUES 
	('Fornecedor A', 'Fornecedor de materiais de escritório'),
	('Fornecedor B', 'Fornecedor de equipamentos de informática'),
	('Fornecedor C', 'Fornecedor de materiais de limpeza');

SELECT * FROM Fornecedores;

-- Inserindo endereços para os fornecedores
INSERT INTO 
	Enderecos_Fornecedor (logadouro, bairro, numero, cidade, estado, pais, id_fornecedor)
VALUES
	('Rua A', 'Bairro A', '123', 'Cidade A', 'Estado A', 'Brasil', 1),
	('Rua B', 'Bairro B', '456', 'Cidade B', 'Estado B', 'Brasil', 2);

INSERT INTO 
	Enderecos_Fornecedor (logadouro, bairro, numero, complemento, cidade, estado, pais, id_fornecedor)
VALUES 
	('Rua C', 'Bairro C', '789', 'Complemento C','Cidade C', 'Estado C', 'Brasil', 3);

SELECT * FROM Enderecos_Fornecedor;

-- Inserindo telefones para os fornecedores
INSERT INTO 
	Telefones_Fornecedor (telefone, id_fornecedor)
VALUES 
	('+55 11 1234-5678', 1),
	('+55 22 2345-6789', 2),
	('+55 33 3456-7890', 3);

SELECT * FROM Telefones_Fornecedor;

-- Inserindo emails para os fornecedores
INSERT INTO 
	Emails_Fornecedor (email, id_fornecedor)
VALUES 
	('fornecedorA@email.com', 1),
	('fornecedorB@email.com', 2),
	('fornecedorC@email.com', 3);

SELECT * FROM Emails_Fornecedor;