CREATE TABLE Material(
	id_material INTEGER PRIMARY KEY,
	nome VARCHAR(30)
);

CREATE TABLE Pessoa(
	id_pessoa INTEGER PRIMARY KEY,
	nome VARCHAR(50),
	id_material INTEGER,

	CONSTRAINT id_materialFK FOREIGN KEY (id_material)
	REFERENCES Material(id_material)
);

INSERT INTO Material VALUES (1, 'Bola'),
(2, 'Capacete'),
(3, 'Boné'),
(4, 'Luva'),
(5, 'Chuteira'),
(6, 'Globo'),
(7, 'Taco');

INSERT INTO Pessoa VALUES (1, 'Pedro', 1),
(2, 'Rafael', 6), 
(3, 'Marcos', 7);

SELECT * FROM Material;
SELECT * FROM Pessoa;

-- SELECT COM JUNÇÕES (PADRÃO)
SELECT M.nome, P.nome 
	FROM Material as M, Pessoa as P 
		WHERE M.id_material = P.id_material; 

-- SELECT COM JUNÇÕES (INNER JOIN)
SELECT M.nome, P.nome 
	FROM Material as M 
		INNER JOIN Pessoa as P 
			ON M.id_material = P.id_material; 

-- SELECT SOMENTE A PRIMEIRA TABELA E SUA INTERSECÇÃO (LEFT JOIN)
INSERT INTO Pessoa VALUES (4, 'Daniel', null);
SELECT P.nome, M.nome 
	FROM Pessoa as P 
		LEFT JOIN Material as M 
			ON M.id_material = P.id_material; 

-- SELECT SOMENTE A PRIMEIRA TABELA SEM SUA INTERSECÇÃO (LEFT JOIN)
SELECT P.nome, M.nome
	FROM Pessoa as P 
		LEFT JOIN Material as M 
			ON M.id_material = P.id_material 
				WHERE M.id_material IS NULL; 

-- SELECT SOMENTE A SEGUNDA TABELA E SUA INTERSECÇÃO (RIGHT JOIN)
SELECT M.nome, P.nome 
	FROM Pessoa as P 
		RIGHT JOIN Material as M 
			ON M.id_material = P.id_material;

-- SELECT SOMENTE A SEGUNDA TABELA SEM SUA INTERSECÇÃO (RIGHT JOIN)
SELECT M.nome, P.nome 
	FROM Pessoa as P 
		RIGHT JOIN Material as M 
			ON M.id_material = P.id_material
				WHERE P.id_material IS NULL;

-- SELECT TODAS AS TABELAS E SUAS INTERSECÇÕES (FULL OUTER JOIN)
SELECT M.nome, P.nome 
	FROM Pessoa as P 
		FULL OUTER JOIN Material as M 
			ON M.id_material = P.id_material;

-- SELECT TODAS AS TABELAS MENOS SUAS INTERSECÇÕES (FULL OUTER JOIN)
SELECT M.nome, P.nome 
	FROM Pessoa as P 
		FULL OUTER JOIN Material as M 
			ON M.id_material = P.id_material
				WHERE M.id_material IS NULL OR P.id_material IS NULL;
