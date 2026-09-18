-- ORDEM CORRETA DE DELEÇÃO
DELETE FROM EMPRESTIMO;
DELETE FROM LIVRO;
DELETE FROM ALUNO;
DELETE FROM TURMA;
DELETE FROM PROFESSOR;


--ORDEM CORRETA DE INSERÇÃO
-- 7 Livros e 5 Empréstimos;
INSERT INTO Livro (id_livro, titulo, autor, num_copias) VALUES
(1, 'Titulo do livro 1', 'autor livro 1', 55),
(2, 'Titulo do livro 2', 'autor livro 1', 12),
(3, 'Titulo do livro 3', 'autor livro 1', 58),
(4, 'Titulo do livro 4', 'autor livro 1', 70),
(5, 'Titulo do livro 5', 'autor livro 1', 100),
(6, 'Titulo do livro 6', 'autor livro 1', 2),
(7, 'Titulo do livro 7', 'autor livro 1', 3);

INSERT INTO Emprestimo (id_emprestimo, data_retirada, data_entrega, id_livro_emprestado) VALUES
(1, '2024-03-12', '2024-04-03', 1),
(2, '2024-03-12', '2024-04-03', 2),
(3, '2024-03-12', '2024-04-03', 3),
(4, '2024-03-12', '2024-04-03', 4),
(5, '2024-03-12', '2024-04-03', 5);


--7 Alunos, 3 professor e 5 turma;

INSERT INTO TURMA (ID_TURMA, NUMERO, NIVEL, ID_PROFESSOR) VALUES
(1, 5, 3, 1),
(2, 6, 3, 2),
(3, 10, 2, 2),
(4, 9, 1, 3),
(5, 8, 1, 3);

INSERT INTO PROFESSOR (ID_PROFESSOR, NOME) VALUES 
(1,'Caio'),
(2,'Gustavo'),
(3,'Renata');


INSERT INTO ALUNO (ID_ALUNO, NOME, DT_NASCIMENTO, ID_TURMA) VALUES
(1, 'ALUNO 1', '1990-05-01', 2),
(2, 'ALUNO 1', '1990-05-01', 3),
(3, 'ALUNO 1', '1990-05-01', 4),
(4, 'ALUNO 1', '1990-05-01', 4),
(5, 'ALUNO 1', '1990-05-01', 5),
(6, 'ALUNO 1', '1990-05-01', 5),
(7, 'ALUNO 1', '1990-05-01', 1);