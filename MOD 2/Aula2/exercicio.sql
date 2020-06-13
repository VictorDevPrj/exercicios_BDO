/*RELATORIO GERAL DE TODOS OS CLIENTES (TELEFONE E ENDERECO) */

SELECT c.id, nome, sexo, email, cpf, rua, bairro, cidade, uf, tipo, numero
FROM cliente AS c 
INNER JOIN endereco AS e 
ON c.id = e.id_cliente
INNER JOIN telefone AS t 
ON c.id = t.id_cliente

/* RELATORIO DE HOEMENS */
SELECT c.id, nome, sexo, email, cpf, rua, bairro, cidade, uf, tipo, numero
FROM cliente AS c 
INNER JOIN endereco AS e 
ON c.id = e.id_cliente
INNER JOIN telefone AS t 
ON c.id = t.id_cliente
WHERE c.sexo = 'M';

/* RELATORIO DE MULHER */
SELECT c.id, nome, sexo, email, cpf, rua, bairro, cidade, uf, tipo, numero
FROM cliente AS c 
INNER JOIN endereco AS e 
ON c.id = e.id_cliente
INNER JOIN telefone AS t 
ON c.id = t.id_cliente
WHERE c.sexo = 'F';

SELECT * FROM cliente 
WHERE id IN (1, 2, 4, 7, 9);

/*Quantidade *de homens e mulheres */
SELECT COUNT(*) AS quantidade, sexo
FROM cliente 
GROUP BY sexo;


/*
São João de Meriti
Protvino 
Rutten
rj
ca
*/

SELECT c.id, email, nome, sexo
FROM cliente AS c 
INNER JOIN endereco AS e 
ON c.id = e.id_cliente 
WHERE sexo = 'M'
AND bairro = 'São João de Meriti' AND cidade = 'Rutten';

SELECT * FROM endereco 
WHERE bairro = 'São João de Meriti'; 

/*
    NOME, EMAIL E TELEFONE CELULAR 
    QUE ESTAO NO ESTADO RJ

*/

SELECT c.nome, c.email, c.sexo, t.numero, t.tipo, e.cidade, e.uf /* PROJECAO */
FROM cliente AS c   /*ORIGEM */
INNER JOIN endereco AS e /*J UNÇÃO */
ON c.id = e.id_cliente /*JUNCAO CONDICAO */
INNER JOIN telefone AS t  /*JUNCAO*/
ON c.id = t.id_cliente /*JUNCAO CONDICAO */
WHERE tipo = 'CEL' AND uf = 'RJ'; /*SELECAI */

SELECT c.nome, c.email, t.numero, e.cidade, e.uf /* PROJECAO */
FROM cliente AS c   /*ORIGEM */
INNER JOIN endereco AS e /*J UNÇÃO */
ON c.id = e.id_cliente /*JUNCAO CONDICAO */
INNER JOIN telefone AS t  /*JUNCAO*/
ON c.id = t.id_cliente /*JUNCAO CONDICAO */
WHERE sexo = 'F'
AND uf = 'SP';