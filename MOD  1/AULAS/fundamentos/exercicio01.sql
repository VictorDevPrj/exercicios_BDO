/* --> EXERCICIO <-- */

/* NOME DO BANCO DE DADOS */

CREATE DATABASE livraria;


/* CRIANDO TABELA */
/*NOME DA TABELA E ATRIBUTOS */
CREATE TABLE livros(
	NOME_DO_LIVRO VARCHAR(30),
	NOME_DO_AUTOR VARCHAR(30),
	SEXO_DO_AUTOR CHAR(01),
	NUMERO_DE_PAGINAS INT,
	NOME_DA_EDITORA VARCHAR(30),
	VALOR_DO_LIVRO FLOAT,
	ESTADO_DA_EDITORA CHAR(02),
	ANO_PUBLICACAO INT
);

/* INSERINDO DADOS */
INSERT INTO livros VALUES('Cavaleiro Real', 'Ana Claudia', 'F', 465, 'Atlas', 49.9, 'RJ', 2009),
('SQL para leigos', 'João Nunes', 'M', 450, 'Addison', 98, 'SP', 2018),
('Receitas Caseiras', 'Celia Tavares', 'F', 210, 'Atlas', 45, 'RJ', 2008),
('Pessoas Efetivas', 'Eduardo Santos', 'M', 390, 'Beta', 78.99, 'RJ', 2018),
('Habitos Saudáveis', 'Eduardo Santos', 'M', 630, 'Beta', 150.98, 'RJ', 2019),
('A Casa Marrom', 'Hermes Macedo', 'M', 250, 'Bubba', 60, 'MG', 2016),
('Estacio Querido', 'Geraldo Francisco', 'M', 310, 'Insignia', 100, 'ES', 2015),
('Pra sempre amigas', 'Leda Silva', 'F', 510, 'Insignia', 78.98, 'ES', 2011),
('Copas Inesqueciveis', 'Marco Alcantara', 'M', 200, 'Larson', 130.98, 'RS', 2018),
('O poder da mente', 'Clara Mafra', 'F', 120, 'Continental', 56.58, 'RS', 2017);


/* Comandos de busca e filtro */
SELECT * FROM livros;
SELECT nome_do_livro, nome_da_editora FROM livros;
SELECT nome_do_livro, estado_da_editora FROM livros WHERE sexo_do_autor = 'm';
SELECT nome_do_livro, numero_de_paginas FROM livros WHERE sexo_do_autor = 'f';
SELECT valor_do_livro FROM livros WHERE estado_da_editora = 'sp';
SELECT * FROM livros WHERE sexo_do_autor = 'M' AND (estado_da_editora = 'sp' OR estado_da_editora = 'rj');
