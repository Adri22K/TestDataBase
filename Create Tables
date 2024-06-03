CREATE TABLE Usuário(
	id_usuario INTEGER PRIMARY KEY,
	nome VARCHAR(100),
	email VARCHAR (30)
);

CREATE TABLE Musica(
	id_musica INTEGER PRIMARY KEY,
	titulo VARCHAR(20),
	genero VARCHAR(20),
	id_usuario INTEGER,
	
	CONSTRAINT id_usuarioFK FOREIGN KEY (id_usuario)
	REFERENCES Usuário (id_usuario)
);

CREATE TABLE Artista(
	id_artista INTEGER PRIMARY KEY,
	nome VARCHAR(100),
	data_nascimento DATE,
	id_musica INTEGER,
	
	CONSTRAINT id_musicaFK FOREIGN KEY (id_musica)
	REFERENCES Musica (id_musica)
);

CREATE TABLE Playlist(
	id_playlist INTEGER PRIMARY KEY,
	nome VARCHAR(100),
	id_artista INTEGER,
	
	CONSTRAINT id_artistaFK FOREIGN KEY (id_artista)
	REFERENCES Artista (id_artista)
);


ALTER TABLE Playlist ADD COLUMN data_criaçao DATE;
SELECT * FROM Playlist;

ALTER TABLE Artista ADD COLUMN pais_origem VARCHAR(25);
SELECT * FROM Artista;


INSERT INTO Usuário(id_usuario, nome, email)
VALUES (1, 'Luisa Souza', 'luisa@gmail.com'),
(2, 'Rafael Nunes', 'rafael@gmail.com'),
(3, 'Camila Lima', 'camila@gmail.com');
SELECT * FROM Usuário;

INSERT INTO Musica(id_musica, titulo, genero, id_usuario)
VALUES (1, 'Vento no Litoral', 'Rock', 1),
(2, 'Dias Melhores', 'Pop', 2),
(3, 'Pra Você Guardei', 'MPB', 3);
SELECT * FROM Musica;

INSERT INTO Artista(id_artista, nome, data_nascimento, id_musica, pais_origem)
VALUES (1, 'Legião Urbana', '1960-03-27', 1, 'Brasil'),
(2, 'Jota Quest', '1975-01-08', 2, 'Brasil'),
(3, 'Nando Reis', '1963-01-12', 3, 'Brasil');
SELECT * FROM Artista;


INSERT INTO Playlist(id_playlist, nome, id_artista, data_criaçao)
VALUES (1, 'Rock Nacional', 1,'2023-04-01'),
(2, 'Hits do Momento', 2, '2023-04-05'),
(3, 'Clássicos da MPB', 3, '2023-04-10');
SELECT * FROM Playlist;

UPDATE Usuário 
SET email = 'luisasouza@gmail.com'
WHERE email = 'luisa@gmail.com';

UPDATE Musica
SET genero = 'Pop Rock'
WHERE genero = 'Rock';

UPDATE Playlist
SET nome = 'Clássicos do Rock'
WHERE nome = 'Rock Nacional';


