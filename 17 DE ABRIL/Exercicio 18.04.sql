CREATE TABLE funcionarios (
  id_funcionario INTEGER PRIMARY KEY,
  nome VARCHAR(100),
  departamento VARCHAR(100),
  salario NUMERIC(10,2)
);


INSERT INTO funcionarios (id_funcionario, nome, departamento, salario)
VALUES (1, 'João Silva', 'TI', 5000.00),
(2, 'Maria Oliveira', 'RH', 4500.00),
(3, 'Ana Santos', 'TI', 6000.00),
(4, 'Pedro Souza', 'Financeiro', 5500.00),
(5, 'Carla Costa', 'RH', 4800.00);

SELECT * FROM funcionarios;

-- Liste todos os departamentos.
SELECT DISTINCT departamento FROM funcionarios;


-- Conte quantos funcionários existem em cada departamento.
SELECT nome, departamento FROM funcionarios ORDER BY departamento;
SELECT departamento, COUNT(nome) FROM funcionarios GROUP BY departamento ORDER BY departamento;

-- Calcule a média de salário por departamento.
SELECT ROUND (AVG(salario),2) AS soma_salario FROM funcionarios;

-- Liste os departamentos onde a média salarial é superior a R$5.000.
SELECT departamento, SUM (salario) FROM funcionarios GROUP BY departamento HAVING SUM(salario) > 5000 ORDER BY departamento;

-- Liste os departamentos onde a soma total dos salários é superior a R$10.000.
SELECT departamento, SUM (salario) FROM funcionarios GROUP BY departamento HAVING SUM(salario) > 10000 ORDER BY departamento;

-- Liste os departamentos onde nenhum funcionário ganha mais do que R$6.000.
SELECT departamento, SUM (salario) FROM funcionarios GROUP BY departamento HAVING SUM(salario) < 6000 ORDER BY departamento;

-- Conte quantos funcionários ganham mais de R$5.000 em cada departamento.
SELECT departamento, SUM(salario), COUNT(*) FROM funcionarios GROUP BY departamento HAVING SUM(salario)> 5000;

-- Liste o departamento com o maior número de funcionários.
SELECT MAX(departamento) AS mais_funcionários FROM funcionarios;

-- Liste o nome do funcionário com o maior salário em cada departamento.
SELECT nome, departamento, salario FROM funcionarios WHERE salario = (SELECT MAX(salario) FROM funcionarios
WHERE departamento = departamento);

-- Liste o departamento com a menor média salarial.
SELECT ROUND (AVG(salario),2) AS media_salario FROM funcionarios GROUP BY departamento;
SELECT departamento, salario FROM funcionarios WHERE salario = (SELECT MIN(salario) FROM funcionarios
WHERE departamento = departamento);
