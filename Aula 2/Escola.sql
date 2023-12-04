CREATE DATABASE db_tenete;

USE db_tenete;

CREATE TABLE tb_escola(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade int NOT NULL,
genero varchar(255) NOT NULL,
nota decimal(3,1) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_escola(nome, idade, genero, nota)
VALUES ("Felipe", 12, "Masculino", 3.0),
("Pablo", 14, "Masculino", 9.0),
("Gabriel Sponja", 17, "Masculino", 8.0),
("Vinicius", 10, "Masculino", 10.0),
("Bryan", 19, "Masculino", 4.0),
("Gabriel Rodrigues", 18, "Masculino", 9.0),
("Luiza", 15, "Feminino", 7.0),
("Amandinha", 16, "Feminino", 6.0);

SELECT * FROM tb_escola WHERE nota > 7.00;

SELECT * FROM tb_escola WHERE nota < 7.00;

UPDATE tb_escola SET nota = 5.0 WHERE id = 5;

SELECT * FROM tb_escola;