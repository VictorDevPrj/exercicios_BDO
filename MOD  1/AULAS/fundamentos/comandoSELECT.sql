/*
O COMANDO SELECT 
selecao projecao e juncao
*/

SELECT NOW(); /*HORA E DATA  --> NOW() */
SELECT NOW() AS DATA_HORA;
SELECT NOW() AS DATA_HORA, 'JOAO' AS PESSOA;



SELECT '';

SELECT 'BANCO DE DADOS';

/*ALIAS DE COLUNA */

SELECT NOME, SEXO, EMAIL FROM CLIENTE;

SELECT NOME, SEXO, EMAIL, ENDERECO FROM CLIENTE;


SELECT NOME AS CLIENTE, SEXO, EMAIL FROM CLIENTE

SELECT NOME AS CLIENTE, CPF, ENDERECO FROM CLIENTE;

SELECT NOME AS CLIENTE, CPF, ENDERECO, NOW() AS DATA_HORA FROM CLIENTE;


/*APENAS PARA FINS ACADEMICOS */

SELECT * FROM CLIENTES;
