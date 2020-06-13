/* PROCEDURES */

CREATE DATABASE projeto;

USE projeto;

CREATE TABLE cursos(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    horas INT NOT NULL,
    valor FLOAT(10, 2) NOT NULL

);

INSERT INTO cursos VALUES(NULL, 'JAVA', 30, 500.00);
INSERT INTO cursos VALUES(NULL, 'PHP', 42, 680.00);
INSERT INTO cursos VALUES(NULL, 'PYTHON', 56, 700.00);
INSERT INTO cursos VALUES(NULL, 'C++', 70, 830.00);

SELECT * FROM cursos;

DELIMITER $

CREATE PROCEDURE cadastrar(nome VARCHAR(30), horas INT, valor FLOAT(10, 2))
BEGIN

    INSERT INTO cursos VALUES(NULL, nome, horas, valor);

END$

/* criar procedures para consultar cursos*/

DELIMITER $

CREATE PROCEDURE consulta_cursos()
BEGIN
    SELECT * FROM cursos;
END$

DELIMITER ;

CALL consulta_cursos();