CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
tema varchar(255) NOT NULL,
tipo varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(tema, tipo)
VALUES ("Java", "Assíncrono" ),
("Python", "Assíncrono" ),
("JavaScript", "Assíncrono" ),
("Banco de dados", "Síncrono" ),
("Coach", "Síncrono" );

CREATE TABLE tb_cursos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
preco decimal(10,2) NOT NULL,
horario varchar(255) NOT NULL,
duracao varchar(255) NOT NULL,
cat_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (cat_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_cursos(nome, preco, horario, duracao, cat_id)
VALUES ("Do zero ao Dev Java", 34000.00, "De acordo com usario", "24 Meses", 1),
("Do zero ao Dev Python", 30000.00, "De acordo com usario", "24 Meses", 2),
("Do zero ao Dev JavaScript", 40000.00, "De acordo com usario", "24 Meses", 3),
("Criando seu primeiro banco de dados", 5000.00, "Matutino", "1 mes", 4),
("Aprimorando MindSet", 150.00, "Noturno", "3 Horas", 5),
("O segredo que elas não querem que você saiba", 125.00, "Noturno", "2 Horas", 5),
("Como desmotrar domancia", 70.00, "Noturno", "4 Horas", 5),
("Não seja beta", 300.00, "Noturno", "3 Horas", 5);

SELECT id, nome, preco, horario, duracao 
FROM tb_cursos
WHERE preco > 500.00;

SELECT id, nome, preco, horario, duracao 
FROM tb_cursos
WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT id, nome, preco, horario, duracao 
FROM tb_cursos
WHERE NOME LIKE "%J%";

SELECT tb_cursos.id, nome, preco, horario, duracao, tb_categorias.tema, tb_categorias.tipo
FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.cat_id = tb_categorias.id
;

SELECT tb_cursos.id, nome, preco, horario, duracao, tb_categorias.tema, tb_categorias.tipo
FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.cat_id = tb_categorias.id
where tb_categorias.id = 5;

