CREATE TABLE produtos(
	codigo SERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	valor NUMERIC(10,2) NOT NULL,
	quantidade NUMERIC(10,2) NOT NULL
	
);

INSERT INTO produtos(nome, valor, quantidade) VALUES 
('borracha', 4.5, 2),
('caneta', 7.9, 3),
('caderno', 12.3, 4),
('sulfite', 24, 2),
('cola', 8.75, 1),
('regua', 6.0, 1);

-- selecione todos os produtos da tabela
SELECT * FROM produtos;

-- ordene os produtos em ordem alfabetica
SELECT * FROM produtos ORDER BY nome ASC;

-- mostre os produtos com os valores maiores do que 10
SELECT * FROM produtos WHERE valor > 10;

-- quantos produtos tem uma quantidade maior do que 2
SELECT * FROM produtos WHERE quantidade > 2;

-- qual é o produto mais caro
SELECT * FROM produtos WHERE valor >=24;
SELECT * FROM produtos WHERE nome  LIKE 'sulfite';
SELECT MAX(valor) as valor_maximo FROM produtos;

-- qual a media de preço dos produtos
SELECT AVG(valor) AS media FROM produtos;

-- somatoria de todos os produtos

SELECT SUM(valor) FROM produtos;

-- apelidar uma coluna

SELECT SUM(valor) as total FROM produtos;

-- retonar o valor minimo e renomeando ele 

SELECT MIN(valor) as valor_minimo FROM produtos;


-- retornar o numero de linhas da tabela

SELECT COUNT (*) FROM produtos;
SELECT COUNT (nome) FROM produtos;

-- remover o not null ou as restrições da tabela

ALTER TABLE produtos ALTER COLUMN quantidade DROP NOT NULL;

INSERT INTO produtos (nome, valor) VALUES ('lapis', 6.5 );

