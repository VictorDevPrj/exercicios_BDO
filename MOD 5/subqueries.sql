/* SUBQUERIES */

SELECT nome, fevereiro
FROM vendedores
WHERE fevereiro = (SELECT MAX(fevereiro) AS max_Fev FROM vendedores);
/* ================================================================= */


/* Nome e o valor do vendedor que mais vendeu em marco
Quem vendeu mais que a media do valor de fev */

SELECT nome, MIN(marco) AS min_Marco
FROM vendedores;

SELECT * FROM vendedores;

SELECT nome, marco FROM vendedores
WHERE marco = (SELECT MIN(marco) FROM vendedores);


SELECT nome, marco FROM vendedores
WHERE marco > (SELECT AVG(marco) FROM vendedores);