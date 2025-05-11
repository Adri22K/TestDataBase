CREATE TABLE Cidade(
	Codigo serial primary key,
	nome varchar (50),
	estado varchar(2)
);
--inserindo as valores nos respectivos campos da tabela cidade
INSERT INTO cidade(codigo, nome, estado) VALUES (1, 'Mogi das Cruzes', 'SP');

-- Consulta os registros da tabela
SELECT * FROM cidade;

--inserindo mais de um registro na tabela
INSERT INTO cidade(codigo, nome, estado) VALUES (2, 'Bertioga', 'SP'), (3, 'Amsterdã', 'HO');

-- insere os registros sem informar as colunas
INSERT INTO cidade VALUES (4, 'Sidney', 'AU' );

-- consultando os registro da tabela novamente 
SELECT * FROM cidade;

--inserindo os registros sem informar o codigo
INSERT INTO cidade(nome , estado) VALUES ( 'Biritiba', 'SP');

INSERT INTO cidade (nome, estado) VALUES ( 'Suzano', 'SP'), ('Goiania', 'GO');

SELECT * FROM cidade;

CREATE TABLE produtos (
	Codigo serial,
	descrição varchar(100),
	valor numeric (10,2),
	
	constraint produtos_pk PRIMARY KEY(codigo)
);

INSERT INTO produtos (descrição, valor) VALUES ('Grampeador',8.5), ('Caderno', 12.0), ('Caneta', 4.2);

SELECT * FROM produtos;

DELETE FROM produtos WHERE codigo = 2;