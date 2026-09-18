CREATE TABLE Hospede ( 
    id_hospede INTEGER PRIMARY KEY, 
    nome VARCHAR(100),
    cpf_passaporte VARCHAR(14),
    telefone VARCHAR(15),
    email VARCHAR(50)
);

CREATE TABLE Servicos (
    id_servicos INTEGER PRIMARY KEY,
    descricao VARCHAR(50),
    valor DECIMAL(10,2)
);

CREATE TABLE Hotel (
    id_hotel INTEGER PRIMARY KEY,
    endereco VARCHAR(100),
    telefone VARCHAR(11),
    quartos_disponiveis INTEGER
);

CREATE TABLE Quarto (
    id_quarto INTEGER PRIMARY KEY,
    status VARCHAR(10),
    acomodacao INTEGER,
    valor DECIMAL(10,2),
    id_hotel INTEGER,

    CONSTRAINT id_hotelFK_quarto FOREIGN KEY (id_hotel) 
        REFERENCES Hotel (id_hotel)
); 

CREATE TABLE Reserva (
    id_reserva INTEGER PRIMARY KEY,
    data_checkin DATE,
    data_checkout DATE,
    id_quarto INTEGER,
    id_hospede INTEGER,

    CONSTRAINT id_quartoFK_reserva FOREIGN KEY (id_quarto) 
        REFERENCES Quarto (id_quarto),

    CONSTRAINT id_hospedeFK_reserva  FOREIGN KEY (id_hospede) 
        REFERENCES Hospede (id_hospede)
);

CREATE TABLE ServicosReserva (
    id_servicos_reserva INTEGER PRIMARY KEY,
    id_reserva INTEGER,
    id_servicos INTEGER,

    CONSTRAINT id_reservaFK_servicos_reserva FOREIGN KEY (id_reserva) 
        REFERENCES Reserva (id_reserva),

    CONSTRAINT id_servicosFK_servicos_reserva FOREIGN KEY (id_servicos) 
        REFERENCES Servicos (id_servicos)
);



-- Alterações nas tabelas 

ALTER TABLE Hotel
ADD nome VARCHAR(100);

ALTER TABLE Hospede
ALTER COLUMN telefone VARCHAR(15);

ALTER TABLE Hotel
ALTER COLUMN telefone VARCHAR(15);

ALTER TABLE Quarto
ADD numero INTEGER;


-- Cadastro das informações


INSERT INTO Hospede (id_hospede, nome, cpf_passaporte, telefone, email)
VALUES 
    (1, 'Adrielle S Takata', '987.654.321-11', '(11) 98685-8678', 'adri.stk@email.com'),
    (2, 'Victor Almeida', '456.123.789-22', '(84) 98976-2061', 'victor.almeida@email.com'),
    (3, 'Caio Cunha', '123.456.789-00', '(27) 98777-2414', 'caio.prof@email.com'),
    (4, 'Samir Abdul', '158.478.146-04', '(98) 98010-7034', 'samir.adbul@email.com'),
    (5, 'Joao Almeida', '464.811.870-79', '(68) 97102-0014', 'joao.almeida@email.com'),
    (6, 'Rafael Reis', '919.071.450-44', '(17) 98182-6213', 'rafa.reis@email.com');



INSERT INTO Hotel (id_hotel, nome, endereco, telefone, quartos_disponiveis)
VALUES
    (1, 'Hotel Bela Vista', 'Rua das Flores, 100', '(11) 4791-1000', 5),
    (2, 'Hotel Paraíso', 'Avenida Central, 250', '(11) 4791-2000', 8),
    (3, 'Hotel Serra Azul', 'Rua das Montanhas, 75', '(11) 4791-3000', 6),
    (4, 'Hotel Costa Verde', 'Avenida do Mar, 420', '(13) 3321-4000', 10),
    (5, 'Hotel Sol Nascente', 'Rua do Horizonte, 150', '(12) 3642-5000', 7),
    (6, 'Hotel Jardim Real', 'Alameda dos Jardins, 80', '(11) 4112-6000', 4),
    (7, 'Hotel Águas Claras', 'Rua das Cachoeiras, 310', '(19) 3524-7000', 9),
    (8, 'Hotel Recanto Feliz', 'Avenida das Palmeiras, 95', '(11) 4725-8000', 5),
    (9, 'Hotel Estrela do Sul', 'Rua das Estrelas, 205', '(41) 3226-9000', 8),
    (10, 'Hotel Vale Dourado', 'Estrada do Vale, 500', '(12) 3671-1010', 6);


INSERT INTO Servicos (id_servicos, descricao, valor)
VALUES
    (1, 'Café da manhã', 35.00),
    (2, 'Estacionamento', 25.00),
    (3, 'Spa', 150.00),
    (4, 'Serviço de quarto', 40.00),
    (5, 'Lavanderia', 30.00),
    (6, 'Transporte para aeroporto', 120.00),
    (7, 'Academia', 20.00),
    (8, 'Piscina', 45.00),
    (9, 'Passeio turístico', 100.00),
    (10, 'Aluguel de carro', 350.00);


SELECT *
FROM Hotel
ORDER BY id_hotel;

SELECT *
FROM Hospede
ORDER BY id_hospede;

SELECT *
FROM Servicos
ORDER BY id_servicos;


INSERT INTO Quarto (id_quarto, numero, status, acomodacao, valor, id_hotel)
VALUES
    -- Hotel 1: Hotel Bela Vista
    (101, '101', 'Disponivel', 2, 180.00, 1),
    (102, '102', 'Disponivel', 3, 250.00, 1),
    (103, '103', 'Disponivel', 4, 350.00, 1),

    -- Hotel 2: Hotel Paraíso
    (201, '101', 'Disponivel', 2, 190.00, 2),
    (202, '102', 'Disponivel', 3, 270.00, 2),
    (203, '103', 'Disponivel', 4, 380.00, 2),

    -- Hotel 3: Hotel Serra Azul
    (301, '101', 'Disponivel', 2, 170.00, 3),
    (302, '102', 'Disponivel', 3, 240.00, 3),
    (303, '103', 'Disponivel', 4, 330.00, 3),

    -- Hotel 4: Hotel Costa Verde
    (401, '101', 'Disponivel', 2, 220.00, 4),
    (402, '102', 'Disponivel', 3, 310.00, 4),
    (403, '103', 'Disponivel', 4, 450.00, 4),

    -- Hotel 5: Hotel Sol Nascente
    (501, '101', 'Disponivel', 2, 200.00, 5),
    (502, '102', 'Disponivel', 3, 280.00, 5),
    (503, '103', 'Disponivel', 4, 390.00, 5),

    -- Hotel 6: Hotel Jardim Real
    (601, '101', 'Disponivel', 2, 185.00, 6),
    (602, '102', 'Disponivel', 3, 260.00, 6),
    (603, '103', 'Disponivel', 4, 360.00, 6),

    -- Hotel 7: Hotel Águas Claras
    (701, '101', 'Disponivel', 2, 210.00, 7),
    (702, '102', 'Disponivel', 3, 295.00, 7),
    (703, '103', 'Disponivel', 4, 420.00, 7),

    -- Hotel 8: Hotel Recanto Feliz
    (801, '101', 'Disponivel', 2, 175.00, 8),
    (802, '102', 'Disponivel', 3, 245.00, 8),
    (803, '103', 'Disponivel', 4, 340.00, 8),

    -- Hotel 9: Hotel Estrela do Sul
    (901, '101', 'Disponivel', 2, 230.00, 9),
    (902, '102', 'Disponivel', 3, 320.00, 9),
    (903, '103', 'Disponivel', 4, 460.00, 9),

    -- Hotel 10: Hotel Vale Dourado
    (1001, '101', 'Disponivel', 2, 195.00, 10),
    (1002, '102', 'Disponivel', 3, 275.00, 10),
    (1003, '103', 'Disponivel', 4, 400.00, 10);
    

INSERT INTO Reserva (id_reserva, data_checkin, data_checkout, id_quarto, id_hospede)
VALUES
    -- Adrielle: finalizada, ativa e futura
    (1, CURRENT_DATE - 30, CURRENT_DATE - 25, 101, 1),
    (2, CURRENT_DATE - 2,  CURRENT_DATE + 3,  201, 1),
    (3, CURRENT_DATE + 20, CURRENT_DATE + 25, 301, 1),

    -- Victor
    (4, CURRENT_DATE - 1,  CURRENT_DATE + 4,  202, 2),
    (5, CURRENT_DATE + 30, CURRENT_DATE + 35, 302, 2),

    -- Caio
    (6, CURRENT_DATE - 50, CURRENT_DATE - 47, 103, 3),
    (7, CURRENT_DATE - 3,  CURRENT_DATE + 2,  401, 3),

    -- Samir
    (8, CURRENT_DATE + 25, CURRENT_DATE + 30, 502, 4),

    -- João
    (9, CURRENT_DATE - 70, CURRENT_DATE - 65, 303, 5),

    -- Rafael
    (10, CURRENT_DATE - 80, CURRENT_DATE - 75, 403, 6),
    (11, CURRENT_DATE + 40, CURRENT_DATE + 45, 702, 6);



INSERT INTO ServicosReserva (id_servicos_reserva, id_reserva, id_servicos)
VALUES
    -- Reserva 1
    (1, 1, 1),
    (2, 1, 2),

    -- Reserva 2
    (3, 2, 1),
    (4, 2, 3),
    (5, 2, 4),

    -- Reserva 3
    (6, 3, 2),
    (7, 3, 9),

    -- Reserva 4
    (8, 4, 1),
    (9, 4, 2),
    (10, 4, 5),

    -- Reserva 5
    (11, 5, 1),
    (12, 5, 6),

    -- Reserva 6
    (13, 6, 2),
    (14, 6, 3),

    -- Reserva 7
    (15, 7, 1),
    (16, 7, 4),
    (17, 7, 7),

    -- Reserva 8
    (18, 8, 2),
    (19, 8, 8),

    -- Reserva 9
    (20, 9, 1),
    (21, 9, 3),
    (22, 9, 5),

    -- Reserva 10
    (23, 10, 2),
    (24, 10, 6),
    (25, 10, 10),

    -- Reserva 11
    (26, 11, 1),
    (27, 11, 4);
    

-- Consulta 1 — Hóspedes com mais de duas reservas

SELECT Hospede.nome,
COUNT(Reserva.id_reserva) AS quantidade_reservas,
SUM((Reserva.data_checkout - Reserva.data_checkin) * Quarto.valor) AS total_gasto


FROM Hospede
INNER JOIN Reserva ON Hospede.id_hospede = Reserva.id_hospede

INNER JOIN Quarto ON Reserva.id_quarto = Quarto.id_quarto

GROUP BY Hospede.nome HAVING COUNT(Reserva.id_reserva) > 2;




-- Consulta 2 — Reservas ativas atualmente

SELECT Hospede.nome, Quarto.numero, Hotel.nome

FROM Reserva
INNER JOIN Hospede ON Reserva.id_hospede = Hospede.id_hospede

INNER JOIN Quarto ON Reserva.id_quarto = Quarto.id_quarto

INNER JOIN Hotel ON Quarto.id_hotel = Hotel.id_hotel

WHERE CURRENT_DATE BETWEEN Reserva.data_checkin AND Reserva.data_checkout;
                       

-- Consulta 3 — Serviços mais contratados

SELECT Servicos.descricao,
COUNT(ServicosReserva.id_reserva) AS quantidade_reservas FROM Servicos

INNER JOIN ServicosReserva ON Servicos.id_servicos = ServicosReserva.id_servicos
GROUP BY Servicos.descricao ORDER BY quantidade_reservas DESC;


-- Consulta 4 — Quartos nunca reservados

SELECT Quarto.numero, Hotel.nome

FROM Quarto INNER JOIN Hotel ON Quarto.id_hotel = Hotel.id_hotel
LEFT JOIN Reserva ON Quarto.id_quarto = Reserva.id_quarto

WHERE Reserva.id_reserva IS NULL;


-- 08/09 . Implementação de integridade de domínio
--- Definir 3 regras de integridade de domínio e implemente-as usando a cláusula Check com Alter Table


-- Regra 1: limitar os status do quarto

ALTER TABLE Quarto
ADD CONSTRAINT verificar_status_quarto
CHECK (status IN ('Disponivel', 'Ocupado', 'Limpeza', 'Indisponivel'));


-- Regra 2: limitar a capacidade do quarto entre 1 e 6 pessoas

ALTER TABLE Quarto
ADD CONSTRAINT verificar_acomodacao_quarto
CHECK (acomodacao BETWEEN 1 AND 6);


-- Regra 3: garantir que o checkout seja posterior ao check-in

ALTER TABLE Reserva
ADD CONSTRAINT verificar_datas_reserva
CHECK (data_checkout > data_checkin);



-- Testar se as regras de integridade de domínio estão sendo válidas 

INSERT INTO Reserva
VALUES (20, '2026-10-10', '2026-10-05', 101, 1);


UPDATE Quarto
SET acomodacao = 4
WHERE id_quarto = 101;


UPDATE Quarto
SET acomodacao = 9
WHERE id_quarto = 101;


UPDATE Quarto
SET status = 'Limpeza'
WHERE id_quarto = 303;

SELECT id_quarto, numero, status
FROM Quarto
WHERE id_quarto = 303;


-- Mostre as reservas e os serviços atrelados a ela utilizando JOIN | ON

SELECT Reserva.id_reserva, Servicos.descricao
FROM Reserva, Servicos
WHERE Reserva.id_reserva = id_servicos


SELECT Reserva.id_reserva, Servicos.descricao
FROM Reserva INNER JOIN Servicos
ON Reserva.id_reserva = id_servicos



-- Criar SEQUENCES

CREATE SEQUENCE hospede_id_sequence;
ALTER TABLE Hospede
ALTER COLUMN id_hospede
SET DEFAULT nextval('hospede_id_sequence');


CREATE SEQUENCE servicos_id_sequence;
ALTER TABLE Servicos
ALTER COLUMN id_servicos
SET DEFAULT nextval('servicos_id_sequence');


CREATE SEQUENCE hotel_id_sequence;
ALTER TABLE Hotel
ALTER COLUMN id_hotel
SET DEFAULT nextval('hotel_id_sequence');


CREATE SEQUENCE quarto_id_sequence;
ALTER TABLE Quarto
ALTER COLUMN id_quarto
SET DEFAULT nextval('quarto_id_sequence');


CREATE SEQUENCE reserva_id_sequence;
ALTER TABLE Reserva
ALTER COLUMN id_reserva
SET DEFAULT nextval('reserva_id_sequence');


CREATE SEQUENCE servicos_reserva_id_sequence;
ALTER TABLE ServicosReserva
ALTER COLUMN id_servicos_reserva
SET DEFAULT nextval('servicos_reserva_id_sequence');


-- Validar SEQUENCES nas tabelas

SELECT * FROM Hospede ORDER BY id_hospede;

SELECT * FROM Servicos ORDER BY id_servicos;

SELECT * FROM Hotel ORDER BY id_hotel;

SELECT * FROM Quarto ORDER BY id_quarto;

SELECT * FROM Reserva ORDER BY id_reserva;

SELECT * FROM ServicosReserva ORDER BY id_servicos;


INSERT INTO Quarto (numero, status, acomodacao, valor, id_hotel)
VALUES
    -- Hotel 1: Hotel Bela Vista
    ('1005', 'Disponivel', 2, 190.00, 1);


ALTER SEQUENCE quarto_id_sequence RESTART WITH 1004;

INSERT INTO Quarto (numero, status, acomodacao, valor, id_hotel)
VALUES
    -- Hotel 1: Hotel Bela Vista
    ('256', 'Disponivel', 2, 350.00, 1);



-- Excluir FK para criar modelo Cascata

-- Exclui
ALTER TABLE Quarto
DROP CONSTRAINT id_hotelfk_quarto;
-- Cria
ALTER TABLE Quarto
ADD CONSTRAINT id_hotelfk_quarto
FOREIGN KEY (id_hotel)
REFERENCES Hotel(id_hotel)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- Exclui
ALTER TABLE Reserva
DROP CONSTRAINT id_quartofk_reserva;
-- Cria
ALTER TABLE Reserva
ADD CONSTRAINT id_quartofk_reserva
FOREIGN KEY (id_quarto)
REFERENCES Quarto(id_quarto)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- Exclui
ALTER TABLE Reserva
DROP CONSTRAINT id_hospedefk_reserva;
-- Cria
ALTER TABLE Reserva
ADD CONSTRAINT id_hospedefk_reserva
FOREIGN KEY (id_hospede)
REFERENCES Hospede(id_hospede)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- Exclui
ALTER TABLE ServicosReserva
DROP CONSTRAINT id_reservafk_servicos_reserva;
-- Cria
ALTER TABLE ServicosReserva
ADD CONSTRAINT id_reservafk_servicos_reserva
FOREIGN KEY (id_reserva)
REFERENCES Reserva(id_reserva)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- Exclui
ALTER TABLE ServicosReserva
DROP CONSTRAINT id_servicosfk_servicos_reserva;
-- Cria
ALTER TABLE ServicosReserva
ADD CONSTRAINT id_servicosfk_servicos_reserva
FOREIGN KEY (id_servicos)
REFERENCES Servicos(id_servicos)
ON DELETE CASCADE
ON UPDATE CASCADE;




-- Verificar se a FK foi realmente excluida 
SELECT
    table_name,
    constraint_name
FROM information_schema.table_constraints
WHERE constraint_type = 'FOREIGN KEY'
  AND constraint_name = 'id_hotelfk_quarto';


SELECT * FROM pg_constraint WHERE conname = 'id_hotelfk_quarto';


-- Verificar se o AutoIncremento está funcionando 

INSERT INTO Hospede (nome, cpf_passaporte, telefone, email)
VALUES ('Adenildo Rodrigues', '568.728.405-74', '(21) 94798-4789', 'adenildoteste@email.com');
SELECT * FROM Hospede ORDER BY id_hospede;



-- Testando o Cascata sem apagar os dados que já tinham 

CREATE TABLE Pagamento (
    id_pagamento SERIAL PRIMARY KEY,
    valor DECIMAL(10,2) NOT NULL,
    forma_pagamento VARCHAR(30),
    id_reserva INTEGER NOT NULL,

    CONSTRAINT id_reservafk_pagamento
        FOREIGN KEY (id_reserva)
        REFERENCES Reserva(id_reserva)
        ON DELETE CASCADE
);


CREATE TABLE Avaliacao (
    id_avaliacao SERIAL PRIMARY KEY,
    nota INTEGER,
    comentario VARCHAR(200),
    id_reserva INTEGER NOT NULL,

    CONSTRAINT verificar_nota
        CHECK (nota BETWEEN 1 AND 5),

    CONSTRAINT id_reservafk_avaliacao
        FOREIGN KEY (id_reserva)
        REFERENCES Reserva(id_reserva)
        ON DELETE CASCADE
);


INSERT INTO Pagamento (valor, forma_pagamento, id_reserva)
VALUES ( 900.00, 'Cartão de crédito', 1);

INSERT INTO Avaliacao (nota, comentario, id_reserva)
VALUES ( 5,'Ótima hospedagem',1);


SELECT * FROM Pagamento WHERE id_reserva = 1;
SELECT * FROM Avaliacao WHERE id_reserva = 1;


BEGIN;

DELETE FROM Reserva WHERE id_reserva = 1;
SELECT * FROM Pagamento WHERE id_reserva = 1;
SELECT * FROM Avaliacao WHERE id_reserva = 1;

ROLLBACK;