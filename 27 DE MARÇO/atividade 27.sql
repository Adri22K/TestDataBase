
CREATE TABLE livro (
 id_livro integer PRIMARY KEY,
 auto varchar,
 titulo varchar,
 n_copias integer
 
);

CREATE TABLE emprestimo (
 id_emprestimo integer PRIMARY KEY,
 data_entrega date, 
 data_emprestimo date,
 id_livro integer,
	
 CONSTRAINT id_livroFK FOREIGN KEY (id_livro)
 REFERENCES livro (id_livro)
	
);


CREATE TABLE professor (
 id_professor integer PRIMARY KEY,
 nome_professor varchar
 
);

CREATE TABLE turma (
 id_turma integer PRIMARY KEY,
 nome_professor varchar, 
 turma integer,
 id_professor integer,
	
 CONSTRAINT id_professorFK FOREIGN KEY (id_professor)
 REFERENCES professor (id_professor)
 
);


CREATE TABLE aluno (
 id_aluno integer PRIMARY KEY,
 nome_aluno varchar, 
 data_nascimento date,
 id_turma integer,
	
 CONSTRAINT id_turmaFK FOREIGN KEY (id_turma)
 REFERENCES turma (id_turma)
	
);


--7 Livros
INSERT INTO livro VALUES (1,'Karl Marx', 'Manifesto Comunista', 500 ), (2,'José Saramago', 'Ensaio sobre a Cegueira', 350 ), (3, 'Deus', 'Biblia', 1000),(4, 'John Green', 'A culpa é das Estrelas', 200); 
INSERT INTO livro VALUES (5, 'R.J Palacio', 'Extraordinário', 150), (6, 'Pablo Marçal', 'Antimedo', 100),(7, 'Raphael Montes', 'Suicidas', 50);  

SELECT * FROM livro;

--  5 Empréstimos

INSERT INTO emprestimo VALUES (8, '2024/03/27', '2024/02/27', 1 );
INSERT INTO emprestimo VALUES (9, '2023/03/27', '2023/02/27', 2 ), (10, '2022/03/27', '2022/02/27', 4 ), (11, '2021/03/27', '2021/02/27', 6 ),(12, '2020/03/27', '2020/02/27', 5 );

SELECT * FROM emprestimo;

-- 7 Alunos, 3 professor e 5 turma;

INSERT INTO professor VALUES (1, 'Caio'), (2, 'Victor'), (3, 'Adri');

SELECT * FROM professor;


INSERT INTO turma VALUES (10, 'Caio', 20, 1), (11, 'Victor', 30, 2), (12, 'Adri', 40, 3),(13, 'Caio', 50, 1), (14, 'Victor', 60, 2);

SELECT * FROM turma;


INSERT INTO aluno VALUES (1, 'João', '2002/04/04', 10), 
(2, 'Pedro', '2002/05/04', 11),
(3, 'Maria', '2002/06/04', 12),
(4, 'Samir', '2002/07/04', 13), 
(5, 'Victoria', '2002/08/04', 14), 
(6, 'Juliana', '2002/08/04', 12), 
(7, 'Gabriel', '2002/01/04', 13);

	
SELECT * FROM aluno;




