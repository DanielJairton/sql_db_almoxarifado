--Populando banco de dados db_almoxarifado

USE db_almoxarifado

--Inserindo fornecedores
INSERT INTO
	Fornecedores (nome, descricao)
VALUES 
	('Fornecedor A', 'Fornecedor de materiais de escritório e limpeza'),
	('Fornecedor B', 'Fornecedor de equipamentos de informática'),
	('Fornecedor C', 'Fornecedor de materiais de limpeza');

SELECT * FROM Fornecedores;

--Inserindo categorias de fornecedores
INSERT INTO
	Categorias(nome)
VALUES
	('Materiais de escritório'),
	('Materiais de  limpeza'),
	('Equipamentos de informática'),
	('Móveis');

SELECT * FROM Categorias;

--Inserindo associação de categorias a fornecedores
INSERT INTO
	Fornecedores_Categorias(id_fornecedor, id_categoria)
VALUES
	(1,1),
	(1,2),
	(2,3),
	(3,2);

SELECT * FROM Fornecedores_Categorias

SELECT f.nome AS Fornecedor, f.descricao, c.nome AS Categoria
FROM
	Fornecedores f
INNER JOIN
	Fornecedores_Categorias fc ON fc.id_fornecedor = f.id_fornecedor
INNER JOIN 
	Categorias c ON c.id_categoria = fc.id_categoria

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

--Inserindo Itens
INSERT INTO 
	Itens (nome, descricao)
VALUES
	('Caneta Azul', 'Caneta esferográfica azul'),
	('Caderno 100 Folhas', 'Caderno espiral com 100 folhas'),
	('Mouse Óptico', 'Mouse óptico com fio'),
	('Teclado ABNT2', 'Teclado padrão ABNT2'),
	('Monitor 24 Polegadas', 'Monitor LED de 24 polegadas'),
	('Cadeira Escritório', 'Cadeira de escritório com rodinhas'),
	('Mesa Escritório', 'Mesa de escritório com gavetas'),
	('Grampeador', 'Grampeador capacidade 20 folhas'),
	('Clips 50mm', 'Clips de metal 50mm'),
	('Post-it Amarelo', 'Bloco de notas adesivas amarelas');

SELECt * FROM Itens;

--Associando itens a categorias
INSERT INTO
	Itens_Categorias(id_item, id_categoria)
VALUES
	(1,1),
	(2,1),
	(3,3),
	(4,3),
	(5,3),
	(6,1),
	(6,4),
	(7,1),
	(7,4),
	(8,1),
	(9,1),
	(10,1);

SELECT i.nome AS Fornecedor, c.nome AS Categoria
FROM
	Itens i
INNER JOIN
	Itens_Categorias ic ON ic.id_item = i.id_item
INNER JOIN 
	Categorias c ON c.id_categoria = ic.id_categoria

--Inserindo departamentos de funcionários
INSERT INTO
	Departamentos(nome)
VALUES
	('Almoxarifado'),
	('Recursos Humanos'),
	('Contabilidade');

SELECT * FROM Departamentos;

--Inserindo funcionários
INSERT INTO
	Funcionarios(nome, cargo, id_departamento)
VALUES
	('Funcionário A', 'Cargo A', 1),
	('Funcionário B', 'Cargo B', 2),
	('Funcionário C', 'Cargo C', 3);

SELECT * FROM Funcionarios

--Inserindo telefone de funcionários
INSERT INTO 
	Telefones_Funcionario(telefone, id_funcionario)
VALUES 
	('+55 19 1034-5678', 1),
	('+55 28 2045-6789', 2),
	('+55 37 3056-7890', 3),
	('+55 67 4059-8860', 3);

SELECT f.nome, t.telefone
FROM
	Funcionarios f
JOIN
	Telefones_Funcionario t ON t.id_funcionario = f.id_funcionario

--Inserindo Emails de Funcionários
INSERT INTO 
	Emails_Funcionario(email, id_funcionario)
VALUES 
	('funcionarioa@email.com', 1),
	('funcionariob@email.com', 2),
	('funcionarioc@email.com', 3),
	('funcionarioa2@email.com', 1);

SELECT f.nome, e.email
FROM
	Funcionarios f
JOIN
	Emails_Funcionario e ON e.id_funcionario = f.id_funcionario