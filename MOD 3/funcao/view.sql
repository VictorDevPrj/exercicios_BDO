/* DDL VIEW */
/* SHOW8 VIEW */

SELECT c.nome,
    c.sexo,
    c.email,
    t.tipo,
    t.numero,
    e.bairro,
    e.cidade,
    e.uf
FROM cliente AS c
    INNER JOIN endereco AS e
    ON c.id = e.id_cliente
    INNER JOIN telefone AS t
    ON c.id = t.id_cliente;

CREATE VIEW V_RELATORIO AS SELECT c.nome,
        c.sexo,
        IFNULL(c.email, 'CLIENTE SEM EMAIL') AS "E-MAIL",
        t.tipo,
        t.numero,
        e.bairro,
        e.cidade,
        e.uf
    FROM cliente AS c
        INNER JOIN endereco AS e
        ON c.id = e.id_cliente
        INNER JOIN telefone AS t
        ON c.id = t.id_cliente;

/* APAGANDO UMA VIEW */
DROP VIEW RELATORIO;

/* DML -- VIEW */
/* UPDATE, INSERT E DELETE - DML*/

INSERT INTO V_RELATORIO VALUES (
    'Andreia', 'F', 'adnreia@hotmail.com', 'CEL', '565643436', 'CENTRO', 'VITORIA', 'ES'
);

CREATE TABLE jogador(
    id INT,
    nome VARCHAR(30),
    uf CHAR(2)
);

INSERT INTO jogador VALUES(1, 'GUERREIRO', 'RS');
INSERT INTO jogador VALUES(2, 'GABIGIL', 'SP');
INSERT INTO jogador VALUES(3, 'NEYMAR', 'SP');
INSERT INTO jogador VALUES(4, 'NENE', 'RJ');
INSERT INTO jogador VALUES(5, 'LOVE', 'SP');
INSERT INTO jogador VALUES(6, 'GANSO', 'SP');


CREATE TABLE alunos(
    numero int,
    nome VARCHAR(30)
);

INSERT INTO alunos VALUES(1, 'JOÃO');
INSERT INTO alunos VALUES(2, 'MARIA');
INSERT INTO alunos VALUES(3, 'ZOE');
INSERT INTO alunos VALUES(4, 'ANDRE');
INSERT INTO alunos VALUES(5, 'CLARA');
INSERT INTO alunos VALUES(6, 'ANA');
INSERT INTO alunos VALUES(7, 'PEDRO');
INSERT INTO alunos VALUES(8, 'JANAINA');
INSERT INTO alunos VALUES(9, 'MIGUEL');
INSERT INTO alunos VALUES(10, 'VICTOR');

SELECT * FROM alunos
ORDER BY nome, numero;

/* ORDER BY DESC / ASC */
SELECT * FROM alunos
ORDER BY numero ASC;

SELECT * FROM alunos
ORDER BY nome, numero DESC;

