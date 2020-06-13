CREATE DATABASE comercio;

USE comercio;

SHOW DATABASE;

DROP TABLE nome_tabela;

/*ALTER TABLE "nome_tabela" MODIFY "NOME_CAMPO" varchar(60); */
/*ALTER TABLE TB_ALUNO ALTER COLUMN NM_ALUNO VARCHAR(100) */

ALTER TABLE cliente ALTER COLUMN email VARCHAR(50) UNIQUE;

CREATE TABLE cliente(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    sexo ENUM('M', 'F') NOT NULL,
    email VARCHAR(50) UNIQUE,
    cpf VARCHAR(15) UNIQUE
);

CREATE TABLE endereco(
    id INT PRIMARY KEY AUTO_INCREMENT,
    rua VARCHAR(40) NOT NULL,
    bairro VARCHAR(30) NOT NULL,
    cidade VARCHAR(30) NOT NULL,
    uf CHAR(2) NOT NULL,
    id_cliente INT UNIQUE,
    FOREIGN KEY (id_cliente) 
    REFERENCES cliente(id) 
);

CREATE TABLE telefone(
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo ENUM('RES', 'DOM', 'CEL') NOT NULL,
    numero VARCHAR(15) NOT NULL,
    id_cliente INT,
    FOREIGN KEY (id_cliente) 
    REFERENCES cliente(id)
);

/*CHAVE ESTRANGEIRA [-- FK --] */

/* QUANDO RELACIONAMENTO 1 X 1 a chave estrangeira fica na entidade mais fraca */
/* EM RELACIONAMENTO 1 X N A CHAVE ESTRANGEIRA FICA NA CARDINALIDADE N */

SELECT c.id, nome, e.id_cliente, rua
FROM cliente as c
INNER JOIN endereco AS e
ON c.id = e.id_cliente;

SELECT nome, sexo, email, tipo, numero
FROM cliente  AS c
INNER JOIN telefone AS t 
ON c.id = t.id_cliente

SELECT nome, sexo, bairro, cidade, tipo, numero
FROM cliente AS c  
INNER JOIN endereco AS e 
ON c.id = e.id_cliente
INNER JOIN telefone AS t 
ON c.id = t.id_cliente

/*

    DML - DATA MANIPULATION LANGUAGE
    DDL - DATA DEFINITION LANGUAGE
    DCL - DATA CONTROL LANGUAGE
    TCL - TRANSACTION CONTROL LANGUAGE

*/

/*
    ==========  DML ============
*/
/* 
    // INSERT
*/

/*
    // FILTROS 
*/

SELECT * FROM cliente
WHERE id = 56;

UPDATE cliente 
SET sexo = 'M'
WHERE id = 56;

/*
    DELETE
*/

INSERT INTO cliente VALUES (NULL, "Paula", "f", "paua@hotmail.com", 343434)

DELETE FROM cliente 
WHERE id = 91;

/*
    ==========DDL========== - DATA DEFINITION LANGUAGE

*/

CREATE TABLE produtos(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(59) NOT NULL,
    preco FLOAT NOT NULL,
    frete FLOAT(10, 2) NOT NULL
);

/* ALTER TABLE */
/* ALTERANDO NOME DA COLUNA = CHANGE */
ALTER TABLE produtos 
CHANGE valor_unitario valor_unitario FLOAT(10, 2) NOT NULL;

ALTER TABLE produtos 
CHANGE valor_unitario valor_unitario INT NOT NULL;

/* MODIFY */

ALTER TABLE produtos 
MODIFY valor_unitario VARCHAR(50) NOT NULL; 


/* ADICIONANDO COLUNAS */
ALTER TABLE produtos 
ADD peso FLOAT(10, 2) NOT NULL;

/* ADICIONAR UMA COLUNA NA ORDEM ESPECIFICA*/

ALTER TABLE produtos 
ADD COLUMN KM FLOAT(10, 2) NOT NULL
AFTER id;

ALTER TABLE produtos 
ADD COLUMN qtd FLOAT(10, 2) NOT NULL
FIRST;