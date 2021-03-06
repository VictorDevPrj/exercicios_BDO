/*Modelagem Básica*/

CLIENTE

NOME		-	CARACTER(30)
CPF			-	NUMERICO(11)
EMAIL		-	CARACTER(30)
TELEFONE	-	CARACTER(30)
ENDERECO	-	CARACTER(30)
SEXO		-	CARACTER(01)

/* PROCESSOS DE MODELAGEM */

/* FASE 01 E FASE 02 - AD ADM DE DADOS */

MODELAGEM CONCEITUAL - RASCUNHO 
MODELAGEM LÓGICA - QUALQUER PROGRAMA DE MODELAGEM 

/* FASE 03 - DBA / AD */

MODELAGEM FÍSICA - SCRIPTS DE BANCO 

/* INICIANDO A MODELGAME FÍSICAS */

/* CRIANDO BANCO DE DADOS */

CREATE DATABASE PROJETO;


/* CONECTANDO-SE AO BANCO */
USE PROJETO; 

/*CRIANDO A TABELA CLIENTE */

CREATE TABLE CLIENTE(
	NOME VARCHAR(30),
	SEXO CHAR(01),
	EMAIL VARCHAR(30),
	CPF INT(11),
	TELEFONE VARCHAR(30),
	ENDERECO VARCHAR(100)
);

/* VERIFICANDO AS TABELAS DO  BANCO --> esse comando so existe no MYSQL*/

SHOW DATABASES;
SHOW TABLES;

/*DESCOBRINDO ESTRUTURA DA TABELA  */

desc cliente;

