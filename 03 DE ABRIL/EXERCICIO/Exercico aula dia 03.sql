CREATE TABLE Categoria (
    id_categoria INTEGER PRIMARY KEY,
    tipo_produto VARCHAR (50),
    fornecedor VARCHAR (50)
);

CREATE TABLE Cliente(
    id_cliente INTEGER PRIMARY KEY,
    nome_cliente VARCHAR (100),
    endereço VARCHAR (200)
	
);

CREATE TABLE Pedidos (
    id_pedido INTEGER PRIMARY KEY,
    n_pedido INTEGER,
    data_pedido DATE,
    id_cliente INTEGER,
    
    CONSTRAINT id_clienteFK FOREIGN KEY (id_cliente)    
	REFERENCES Cliente (id_cliente)
);

CREATE TABLE Produtos (
    id_produtos INTEGER PRIMARY KEY,
    nome_produto VARCHAR (25),
    quantidade INTEGER,
    id_categoria INTEGER,
   
    CONSTRAINT id_categoriaFK FOREIGN KEY (id_categoria)
    REFERENCES Categoria (id_categoria)
    
);



-- CRIAR 2 CATEGORIAS  
INSERT INTO Categoria
VALUES (1, 'Vestuário', 'Farm'),
(2, 'Calçados', 'Nike');
SELECT * FROM Categoria;

-- ADICIONAR 3 PRODUTOS 
INSERT INTO Produtos 
VALUES (1, 'Vestido', 75, 1),
(2, 'Tênis', 26, 2),
(3, 'Camiseta', 52, 1);
SELECT * FROM Produtos;

-- CRIAR 3 CLIENTES
INSERT INTO Cliente
VALUES (1, 'Adrielle', 'Rua XYX, n 7 - Mogi das Cruzes, SP'),
(2, 'Caio', 'Rua WKL, n 9 - São Jóse dos Campos, SP'),
(3, 'Victor', 'Rua PQR, n 3 - Bertioga, SP');
SELECT * FROM Cliente; 

-- CRIAR 3 PEDIDOS, SENDO 2 PARA O CLIENTE 1 E UM PARA O CLIENTE 2
INSERT INTO Pedidos 
VALUES (1, 111, '2024-04-08', 1),
(2, 112, '2024-04-09', 2),
(3, 113, '2024-04-10', 3);
SELECT * FROM Pedidos; 

-- Em cada pedido insira produtos:
-- Sendo o pedido de código 1 com um produto,
-- o pedido de código 2 com dois produtos
-- o pedido de código 3 com três produtos

CREATE TABLE Relacionamento (
    id_relacionamento  INTEGER PRIMARY KEY,
    id_pedido INTEGER,
    id_produtos INTEGER,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos (id_pedido),
    FOREIGN KEY (id_produtos) REFERENCES Produtos (id_produtos)
);

INSERT INTO Relacionamento 
VALUES (1,1,1);

INSERT INTO Relacionamento
VALUES (2, 2, 1),
	   (3, 2, 2);

INSERT INTO Relacionamento
VALUES (4, 3, 1),
       (5, 3, 2),
       (6, 3, 3);
	   
SELECT * FROM Relacionamento;


-- Crie os scripts para alterar os clientes dos pedidos criados anteriormente.
UPDATE Pedidos
SET id_cliente = 3
WHERE id_pedido = 1;

UPDATE Pedidos
SET id_cliente = 1
WHERE id_pedido = 2;

SELECT * FROM Pedidos;

-- Insira novas categorias e atualize as categorias dos produtos existentes.

INSERT INTO Categoria 
VALUES (3, 'Acessórios', 'Vivara'),
       (4, 'Chapéus', 'Lacoste');
SELECT * FROM Categoria;

-- Atualizar categorias dos produtos existentes
UPDATE Produtos
SET id_categoria = 3
WHERE id_produtos = 1;

UPDATE Produtos
SET id_categoria = 4
WHERE id_produtos = 2;

SELECT * FROM Produtos;

