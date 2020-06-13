CREATE TABLE vendedores(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30),
    sexo CHAR(1),
    janeiro FLOAT(10, 2),
    fevereiro FLOAT(10, 2),
    marco FLOAT(10, 2)
);

INSERT INTO vendedores VALUES(NULL, 'CARLOS', 'M', 43534, 3242, 6565);
INSERT INTO vendedores VALUES(NULL, 'ANA', 'F', 8765, 1345, 92620);
INSERT INTO vendedores VALUES(NULL, 'MIGUEL', 'M', 654, 1357, 8236);
INSERT INTO vendedores VALUES(NULL, 'JOAO', 'M', 93746, 536, 4877);
INSERT INTO vendedores VALUES(NULL, 'VILMA', 'F', 4677, 2345, 15678);
INSERT INTO vendedores VALUES(NULL, 'CLARA', 'F', 76444, 1234, 54367);
INSERT INTO vendedores VALUES(NULL, 'ANDERSON', 'M', 19000, 8054, 39054);
INSERT INTO vendedores VALUES(NULL, 'CELIA', 'F', 26454, 735, 9036);
INSERT INTO vendedores VALUES(NULL, 'LUANA', 'F', 467245, 98766, 34531);

SELECT * FROM vendedores;

/* MAX - TRAZ VALOR MAXIMO DE UMA COLUNA */

SELECT MAX(fevereiro) AS maior_Fev
FROM vendedores;

/* MIN - TRAZ VALOR MINIMO DE UMA COLUNA */

SELECT MIN(fevereiro) AS menor_Fev
FROM vendedores;

/*AVG - TRAZ VALOR MEDIO DE UMA COLUNA */
SELECT AVG(fevereiro) AS media_Fev
FROM vendedores;

/* VARIAS FUNCOES */

SELECT  MAX(janeiro) AS max_Jan,
        MIN(janeiro) AS min_Jan,
        AVG(janeiro) AS media_Jan
FROM vendedores;

/* TRUNCATE */
SELECT  TRUNCATE(MAX(janeiro), 2) AS max_Jan,
        TRUNCATE(MIN(janeiro), 2) AS min_Jan,
        TRUNCATE(AVG(janeiro), 2) AS media_Jan
FROM vendedores;

/* AGREGANDO COM SUM() */

SELECT SUM(janeiro) AS total_Vendas_Jan
FROM vendedores;

SELECT  SUM(janeiro) AS total_Vendas_Jan,
        SUM(fevereiro) AS total_Vendas_Fev,
        SUM(marco) AS total_Vendas_Marc
FROM vendedores;

SELECT SEXO,    SUM(janeiro) AS total_Vendas_Jan,
                SUM(fevereiro) AS total_Vendas_Fev,
                SUM(marco) AS total_Vendas_Marc
FROM vendedores
GROUP BY sexo;