CREATE DATABASE sprint;
USE sprint;

CREATE TABLE usuario (
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
NomeCompleto VARCHAR(40),
Telefone CHAR(15),
CPF CHAR(15),
Email VARCHAR (50) NOT NULL,
Senha VARCHAR(8) NOT NULL,
statusUsuario VARCHAR(20),
CONSTRAINT chkStatus check (statusUsuario in('ativo', 'inativo'))
);

INSERT INTO usuario (NomeCompleto, Telefone, CPF, Email, Senha, statusUsuario) VALUES
('João da Rocha', '1199999-0000', '123.567.890-00', 'joão.rocha@gmail.com','joao1235', 'ativo');

SELECT * FROM usuario;

INSERT INTO usuario (NomeCompleto, Telefone, CPF, Email, Senha, statusUsuario) VALUES
('Ana Souza', '(11) 98765-4321', '111.222.333-44', 'ana.souza@email.com', 'senha123', 'ativo'),
('Pedro Alves', '(21) 99876-5432', '222.333.444-55', 'pedro.alves@email.com', 'senha456', 'inativo'),
('Marcela Santos', '(31) 98765-1234', '333.444.555-66', 'marcela.santos@email.com', 'senha789', 'ativo'),
('Lucas Silva', '(41) 98765-5678', '444.555.666-77', 'lucas.silva@email.com', 'senha012','ativo'),
('Julia Oliveira', '(51) 99999-8888', '555.666.777-88', 'julia.oliveira@email.com', 'senha345', 'inativo');

CREATE TABLE Empresa (
    idEmpresa INT PRIMARY KEY AUTO_INCREMENT, 
	Razao_Social VARCHAR(60),
	Telefone VARCHAR(14),
	CNPJ CHAR(20) NOT NULL
);

INSERT INTO Empresa (Razao_Social, Telefone, CNPJ) VALUES
('Empresa A', '(11) 9876-5432', '12.345.678/0001-01'),
('Empresa B', '(21) 9999-8888', '23.456.789/0001-02'),
('Empresa C', '(31) 7777-7777', '34.567.890/0001-03'),
('Empresa D', '(41) 5555-5555', '45.678.901/0001-04'),
('Empresa E', '(51) 3333-3333', '56.789.012/0001-05');

SELECT * FROM Empresa;

 CREATE TABLE Endereco (
    id_endereco INT PRIMARY KEY AUTO_INCREMENT,
    logradouro VARCHAR(40), 
    complemento VARCHAR(40),
    bairro VARCHAR(40),
    CEP CHAR(9),
    Cidade VARCHAR(40),
    UF CHAR(2)
    );
    
INSERT INTO Endereco (logradouro, complemento, bairro, CEP, cidade, UF) VALUES
('Rua A', 'Apto 101', 'Bairro 1', '12345678', 'São Paulo', 'SP'),
('Rua B', 'Apto 201', 'Bairro 2', '23456789', 'Rio de Janeiro', 'RJ'),
('Rua C', 'Casa 1', 'Bairro 3', '34567890', 'Belo Horizonte', 'MG'),
('Rua D', 'Casa 2', 'Bairro 4', '45678901', 'Curitiba', 'PR'),
('Rua E', 'Casa 3', 'Bairro 5', '56789012', 'Porto Alegre', 'RS');

SELECT * FROM Endereco;

 CREATE TABLE Sensor (
		idSensor INT PRIMARY KEY AUTO_INCREMENT,
		Nome VARCHAR(40),
        Condicao VARCHAR (40),
        Qtd INT,
        constraint chkSensor check (nome in('LDR',' ldr', 'LDR 5mm','LDR 10mm')),
		constraint chkSensor_CND check (condicao in('ativo','inativo', 'manutenção'))
	);
    
INSERT INTO Sensor (Nome, Condicao, Qtd) VALUES
('LDR', 'ativo', 10),
('LDR 5mm', 'inativo', 20),
('LDR', 'manutenção', 5),
('ldr', 'ativo', 15),
('LDR 10mm', 'inativo', 30);

SELECT * FROM Sensor;


