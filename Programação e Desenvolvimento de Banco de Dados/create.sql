CREATE DATABASE loja;

USE loja;

CREATE TABLE IF NOT EXISTS estado (
	id_estado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    UF CHAR(2)
);

CREATE TABLE IF NOT EXISTS municipio (
	id_municipio INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_estado INT NOT NULL,
    nome VARCHAR(80) NOT NULL,
    cod_ibge INT,
    FOREIGN KEY (id_estado) REFERENCES estado(id_estado)
);

CREATE TABLE IF NOT EXISTS cliente(
	id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    cpf CHAR(11) NOT NULL,
    celular CHAR(11),
    end_logradouro VARCHAR(100) NOT NULL,
    end_numero VARCHAR(10) NOT NULL,
    end_municipio INT NOT NULL,
    end_cep CHAR(8),
    id_municipio INT NOT NULL,
    FOREIGN KEY (id_municipio) REFERENCES municipio(id_municipio)
);

CREATE TABLE IF NOT EXISTS conta_receber(
	id_conta_receber INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_fatura_venda INT,
    data_conta DATE NOT NULL,
    data_vencimento DATE NOT NULL,
    valor DECIMAL (18, 2) NOT NULL,
    situacao ENUM('Conta registrada', 'Conta cancelada', 'Conta paga'),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);