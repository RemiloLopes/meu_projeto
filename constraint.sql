CREATE TABLE artista(
	id SERIAL PRIMARY KEY,
  	nome VARCHAR(30) NOT NULL
);

INSERT INTO artista (nome) VALUES
	('Tim Maia'),
    ('Elis Regina');
    
CREATE TABLE musica (
	ID SERIAL PRIMARY KEY,
  	nome VARCHAR(30) NOT NULL,
  	duracao_seg INT NOT NULL
);

INSERT INTO musica (nome, duracao_seg) VALUES ('Aguas de Março', 210);

CREATE TABLE artista_musica (
	fk_id_artista INT,
  	fk_id_musica INT,
  	CONSTRAINT artista_musica_pk PRIMARY KEY (fk_id_artista, fk_id_musica),
  	CONSTRAINT fk_artista FOREIGN KEY (fk_id_artista) REFERENCES artista(ID),
  	CONSTRAINT fk_musica FOREIGN KEY (fk_id_musica) REFERENCES musica(ID)
);

INSERT INTO artista_musica VALUES
(1,1),
(2,1);

SELECT * FROM artista_musica