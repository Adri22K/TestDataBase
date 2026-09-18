CREATE TABLE Filmes(
	codigo SERIAL,
	titulo VARCHAR(100),
	duracao INTEGER,
	tipo VARCHAR(100),
	
	CONSTRAINT codpk PRIMARY KEY (codigo)
);


INSERT INTO Filmes (titulo, duracao, tipo) VALUES 
('O poderoso Chefão' , 153, 'Policial'),
('A lista de schindler', 189, 'Historico'),
('O rei leão', 78, 'Animação'),
('Vingadores Ultimato', 189, 'Fantasia'),
('De volta para o futuro', 94, 'Ficção cientifica');
	
SELECT * FROM Filmes;
	
-- Especificar algumas colunas
SELECT titulo, duracao FROM filmes;
	
-- retornar com os filmes com duração menor do que 100
SELECT titulo, duracao FROM filmes WHERE duracao < 100;
	
-- retornar com os filmes com duração maior do que 100
SELECT titulo, duracao FROM filmes WHERE duracao  > 100;
	
-- retornar os filmes com codigo de 2 a 4
SELECT titulo, duracao FROM filmes WHERE codigo  >= 2 AND codigo <=4;
	
SELECT titulo, duracao FROM filmes WHERE codigo BETWEEN 2 AND 4;
	
-- consulta com string
	
SELECT * FROM Filmes WHERE titulo = 'O rei leão';
	
-- consulta com LIKE
	
SELECT * FROM Filmes WHERE titulo LIKE '%futuro%';

-- CASE SENTITIVE 
	
SELECT * FROM Filmes WHERE titulo ILIKE 'de volta%';
	
-- para ordenar as consultas utiliza-se o order by
	
SELECT * FROM Filmes ORDER BY titulo ASC;
	
-- para ordenar as consultas em order decrescente
	
SELECT * FROM Filmes ORDER BY titulo desc;
		
-- mostre os filmes dos tipos animação e policial
	
SELECT * FROM Filmes WHERE tipo =  'Animação' OR tipo ='Policial';
	
SELECT * FROM Filmes WHERE tipo IN ('Animação', 'Policial');
	
-- Atualização do tipo de filme animação para policial
UPDATE filmes SET tipo = 'Policial' WHERE tipo = 'Animação';
	
-- Selecionar apenas os tipos de filme	
SELECT DISTINCT tipo FROM filmes;
	
	