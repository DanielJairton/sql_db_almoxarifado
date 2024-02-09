--Criando Banco de Dados Almoxarifa
CREATE DATABASE db_almoxarifado

USE db_almoxarifado

--Criando Tabelas

--Criando Tabela Fornecedores
--Dados dos fornecedores dos itens
CREATE TABLE Fornecedores(
id_fornecedor INT PRIMARY KEY IDENTITY(1,1),
nome VARCHAR(90) NOT NULL,
endereco_logadouro VARCHAR(100) NOT NULL,
endereco_bairro VARCHAR(100) NOT NULL,
endereco_numero VARCHAR(20) NOT NULL,
endereco_complemento VARCHAR(100),
endereco_cidade VARCHAR(100) NOT NULL,
endereco_estado VARCHAR(100) NOT NULL,
endereco_pais VARCHAR(100) NOT NULL,
telefone VARCHAR(20) NOT NULL,
email VARCHAR(70) NOT NULL
);

--Criando Tabela Itens
CREATE TABLE Itens(
id_item INT PRIMARY KEY IDENTITY(1,1),
nome VARCHAR(90) NOT NULL,
descricao VARCHAR(300)
);

--Criando Tabela Lotes
--Dados dos lotes que formam o estoque
CREATE TABLE Lotes(
id_lote INT PRIMARY KEY IDENTITY(1,1),
preco_unitario DECIMAL(10,2) NOT NULL,
quantidade INT NOT NULL,
localizacao VARCHAR(90) NOT NULL,
data_recebimento DATE NOT NULL,
data_validade DATE,
condicao_entrega VARCHAR(100) NOT NULL,
id_item INT NOT NULL,
id_fornecedor INT NOT NULL,
FOREIGN KEY(id_item) REFERENCES Itens(id_item),
FOREIGN KEY(id_fornecedor) REFERENCES Fornecedores(id_fornecedor),
);

--Criando Tabela Entradas
CREATE TABLE Entradas(
id_entrada INT PRIMARY KEY IDENTITY(1,1),

id_lote INT,
FOREIGN KEY(id_lote) REFERENCES Lotes(id_lote)
);