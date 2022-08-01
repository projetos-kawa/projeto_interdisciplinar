CREATE DATABASE projeto;
USE projeto;



CREATE TABLE usuarios (
id int PRIMARY KEY AUTO_INCREMENT,
nome varchar(255),
senha varchar(255),
cpf varchar(14),
email varchar(255)
)
;

CREATE TABLE competencias (
id_comp int PRIMARY KEY AUTO_INCREMENT,
competencia varchar(255),
id_curr int
)
;

CREATE TABLE curriculo (
id_curr int PRIMARY KEY AUTO_INCREMENT,
nome varchar(255),
email varchar(255),
telefone varchar(14),
curso varchar(255)
)
;

CREATE TABLE habilidades (
competencias varchar(255),
id_hab int PRIMARY KEY AUTO_INCREMENT,
id_curr int,
FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
)
;

CREATE TABLE educacao (
id_edu int PRIMARY KEY AUTO_INCREMENT,
curso varchar(255),
instituicao varchar(255),
fim date,
inicio date,
id_curr int,
FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
)
;

CREATE TABLE experiencia (
id_xp int PRIMARY KEY AUTO_INCREMENT,
fim date,
empresa varchar(255),
inicio date,
ocupacao varchar(255),
id_curr int,
FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
)
;


