/* STORED PROCEDURES */

SELECT 'novo';

DELIMITER $

CREATE PROCEDURE escolha_um_nome()
BEGIN

    QUALQUER PROGRAMACAO;
    QUALQUER PROGRAMACAO;

    QUALQUER PROGRAMACAO;

END
$


CREATE PROCEDURE nome_empresa()
BEGIN
    SELECT 'UNIVERSIDADE DOS DADOS' AS EMPRESA;

END $

/* CHAMANDO PROCEDURE */
CALL nome_empresa()$

/* PROCEDURES COM PARAMETROS */

SELECT 10 + 10 AS conta;

DELIMITER $

CREATE PROCEDURE conta()
BEGIN 
    SELECT 10 + 10 AS conta;
END$

DROP PROCEDURE conta$

CREATE PROCEDURE conta(num1 FLOAT, num2 FLOAT)
BEGIN 
    SELECT num1 + num2 AS conta;
END$

CALL conta(16.344, 21.45)$