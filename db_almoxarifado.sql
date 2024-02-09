--Criando Banco de Dados Almoxarifa
CREATE DATABASE db_almoxarifado

USE db_almoxarifado

--Criando Tabelas

--Criando Tabela Fornecedores
--Dados dos fornecedores dos itens
--Incompleto falta decidir se endereço é composto ou simples
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
--Completa
CREATE TABLE Itens(
id_item INT PRIMARY KEY IDENTITY(1,1),
nome VARCHAR(90) NOT NULL,
descricao VARCHAR(500)
);

--Criando Tabela Funcionarios
--Completo
CREATE TABLE Funcionarios (
id_funcionario INT PRIMARY KEY IDENTITY(1,1),
nome VARCHAR(100) NOT NULL,
cargo VARCHAR(50) NOT NULL,
telefone VARCHAR(20) NOT NULL,
email VARCHAR(10) NOT NULL
);

--Criando Tabela Lotes
--Dados dos lotes que formam o estoque
--Completa
CREATE TABLE Lotes(
id_lote INT PRIMARY KEY IDENTITY(1,1),
preco_unitario DECIMAL(10,2) NOT NULL,
quantidade_recebimento INT NOT NULL,
quantidade_atual INT NOT NULL,
condicao_recebimento VARCHAR(100) NOT NULL,
data_recebimento DATE,
data_validade DATE,
localizacao VARCHAR(90) NOT NULL,
id_item INT NOT NULL,
id_fornecedor INT NOT NULL,
FOREIGN KEY(id_item) REFERENCES Itens(id_item),
FOREIGN KEY(id_fornecedor) REFERENCES Fornecedores(id_fornecedor),
);

--Criando Tabela Entradas
--Incompleta
CREATE TABLE Entradas(
id_entrada INT PRIMARY KEY IDENTITY(1,1),

id_lote INT,
FOREIGN KEY(id_lote) REFERENCES Lotes(id_lote)
);