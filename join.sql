##CREATE DATABASE alunos;

CREATE TABLE notas (
	matricula SERIAL NOT NULL PRIMARY KEY,
  	nome VARCHAR(30) NOT NULL,
  	nota_por FLOAT,
  	nota_mat FLOAT,
  	nota_art FLOAT,
  	nota_fis FLOAT,
  	nota_his FLOAT,
  	media FLOAT
);
INSERT INTO notas (nome,media) values ('João da Silva', 6);
INSERT INTO notas (nome, media) VALUES ('Gabriela Fernandes', 8.5);
INSERT INTO notas (nome, media) VALUES ('Joana Gomes', 7);

CREATE TABLE faltas(
	matricula SERIAL NOT NULL PRIMARY KEY,
  	nome VARCHAR(30) NOT NULL,
  	faltas INT NOT NULL
);

INSERT INTO faltas (nome, faltas) values ('João da Silva', 2);
INSERT INTO faltas (nome, faltas) VALUES ('Gabriela Fernandes', 3);
INSERT INTO faltas (nome, faltas) VALUES ('Joana Gomes', 0);

SELECT notas.nome, notas.media, faltas.faltas
FROM notas
join faltas
ON notas.matricula = faltas.matricula