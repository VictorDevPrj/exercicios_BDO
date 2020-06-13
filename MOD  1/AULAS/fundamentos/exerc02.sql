SELECT nome, departamento, sexo
FROM funcionarios
WHERE (departamento = 'filmes' AND sexo = 'Feminino')
OR
(departamento = 'Lar' AND sexo = 'Feminino')
GROUP BY nome;


SELECT COUNT(*) AS cont, departamento
FROM funcionarios
GROUP BY departamento
ORDER BY cont;


SELECT * FROM funcionarios
WHERE departamento = 'Roupas'
OR
departamento = 'Filmes';






