CREATE TABLE compras
(
	codigo serial,
	valor numeric(5,2),
	descricao varchar(50),
	dt_compra date,
	recebido varchar(10)

);

-- Adicione a chave primária a tabela, sabendo que o campo chave primária é código.
ALTER TABLE compras ADD CONSTRAINT pk_codigo PRIMARY KEY (codigo);


--Altere o nome do campo recebido para status;
ALTER TABLE compras RENAME COLUMN recebido TO status;

--Acrescente mais um campo chamado quantidade e este campo deve ser do 
tipo numérico inteiro;
ALTER TABLE compras ADD COLUMN quantidade integer;

--O campo valor e descrição não podem ficar nulos.
ALTER TABLE compras ALTER COLUMN valor SET NOT NULL;
ALTER TABLE compras ALTER COLUMN descricao SET NOT NULL;


