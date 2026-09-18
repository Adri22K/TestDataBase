CREATE TABLE Funcionarios(
	ID_FUNCI SERIAL PRIMARY KEY,
	NOME VARCHAR(50),
	CARGO VARCHAR(50),
	SALARIO NUMERIC(10,2),
	DT_INICIO DATE

);


INSERT INTO Funcionarios (nome, cargo, salario, dt_inicio)
VALUES ('Ana', 'Vendedor(a)', 1200, '2021-01-02'),
('Bruna', 'Vendedor(a)', 1500, '2021-04-12'),
('Claudia', 'Caixa', 3200, '2021-02-10'),
('Fernanda', 'Vendedor(a)', 2000, '2021-01-07'),
('Carlos', 'Vendedor(a)', 1200, '2021-01-02'),
('Mateus', 'Gerente', 4500, '2020-05-20'),
('Daniel', 'Vendedor(a)', 1200, '2021-03-14'),
('Julia', 'Estoquista', 1350, '2021-05-20'),
('Maria', 'Vendedor(a)', 1300, '2021-02-02'),
('Caio', 'Estoquista', 1300, '2021-09-09'),
('Luis', 'Limpeza', 1100, '2021-01-24');

SELECT * FROM Funcionarios;

-- Qual o total de salários pagos aos funcionários?
SELECT SUM(salario) as Valor_Pago FROM Funcionarios;


-- Qual o total de salários pagos para cada tipo de cargo?
SELECT cargo, salario FROM Funcionarios ORDER BY cargo;
SELECT cargo, SUM (salario) FROM Funcionarios GROUP BY cargo ORDER BY cargo;

-- Qual o total de salários pagos para os tipos de cargos que ganham mais de 3K
SELECT cargo, SUM (salario) FROM Funcionarios GROUP BY cargo HAVING SUM(salario) > 3000 ORDER BY cargo;

-- Qual o total de salários pagos para os tipos de cargos que foram admitido entre março e junho
SELECT cargo, salario, dt_inicio FROM Funcionarios WHERE dt_inicio BETWEEN '2021-03-01' AND '2021-06-30' ORDER BY cargo;
SELECT cargo, SUM (salario) FROM Funcionarios WHERE dt_inicio BETWEEN '2021-03-01' AND '2021-06-30' GROUP BY cargo ORDER BY cargo;

-- Qual a quantidade de funcionarios para cada tipo de cargo
SELECT cargo, COUNT (*) FROM Funcionarios ORDER BY cargo;

-- Para cada tipo de cargo apresente qual possui mais de 1 funcionário
SELECT cargo, COUNT (*) FROM Funcionarios GROUP BY cargo HAVING COUNT(*) > 1;

-- Apresente os tipos de cargos com o total de salários pagos e o numero de funcionários
SELECT cargo, SUM(salario), COUNT(*) FROM Funcionarios GROUP BY cargo;

-- Apresente os tipos de cargos com o total de salários pagos acima de 2K
SELECT cargo, SUM(salario), COUNT(*) FROM Funcionarios GROUP BY cargo HAVING SUM(salario)>2000;



