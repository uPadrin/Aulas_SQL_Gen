CREATE DATABASE db_generation_game_online;

USE  db_generation_game_online;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
class varchar(20) NOT NULL,
hp int NOT NULL,
ap int NOT NULL,
ad int NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_classes(class, hp, ap, ad)
VALUES ("Mago", 3000, 6999, 1 ),
("Feiticeiro", 3000, 7000, 1),
("Bruxo", 3000, 5000, 2000),
("Guerreiro", 5000, 0, 5000),
("Paladino", 5000, 3000, 3000),
("Ladino", 3000, 0, 7000);

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
raca varchar(255) NOT NULL,
antecedente varchar(255) NOT NULL,
classe_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id) -- CLASSE_ID dessa tabela = ID DA TABELA CLASSES
);
-- FOREING KEY = CHAVE ESTRANGEIRA


INSERT INTO tb_personagens(nome, raca, antecedente, classe_id)
VALUES ("Sabine", "Dampir", "Nobre", 6),
("Trix", "Fada", "Nobre", 1),
("Thales", "Gigante", "Esquecido", 6),
("Ivar", "Elfo", "Artersão", 5),
("Yami", "Morto-Vivo", "Renacido", 5),
("Hugo", "Meio-Elemental", "Guarda", 1),
("Dartanhã", "Fada", "Mordomo", 2),
("Sofier", "Humana", "Nobre", 4),
("L", "Morto-Vivo", "Pirata", 3);

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

SELECT tb_personagens.id, tb_personagens.nome, tb_personagens.raca, tb_personagens.antecedente, tb_classes.hp, tb_classes.class, (tb_classes.ap + tb_classes.ad) AS dano_total 
FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id 
WHERE (tb_classes.ap + tb_classes.ad) > 2000 ORDER BY id ASC;

-- ADD Defesa
ALTER TABLE tb_classes ADD defesa int;

UPDATE tb_classes SET defesa = 600 WHERE id = 1;
UPDATE tb_classes SET defesa = 700 WHERE id = 2;
UPDATE tb_classes SET defesa = 900 WHERE id = 3;
UPDATE tb_classes SET defesa = 2000 WHERE id = 4;
UPDATE tb_classes SET defesa = 2500 WHERE id = 5;
UPDATE tb_classes SET defesa = 1250 WHERE id = 6;

SELECT tb_personagens.id, tb_personagens.nome, tb_personagens.raca, tb_personagens.antecedente, tb_classes.hp, tb_classes.class, (tb_classes.ap + tb_classes.ad) AS dano_total, tb_classes.defesa  
FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id 
WHERE defesa BETWEEN 1000 AND 2000 ORDER BY id ASC;
-- VALOR ENTRE 1000 E 2000

SELECT tb_personagens.id, tb_personagens.nome, tb_personagens.raca, tb_personagens.antecedente, tb_classes.hp, tb_classes.class, (tb_classes.ap + tb_classes.ad) AS dano_total, tb_classes.defesa  
FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id 
WHERE nome LIKE "%C%"; 

SELECT tb_personagens.id, tb_personagens.nome, tb_personagens.raca, tb_personagens.antecedente, tb_classes.hp, tb_classes.class, (tb_classes.ap + tb_classes.ad) AS dano_total, tb_classes.defesa  
FROM tb_classes INNER JOIN tb_personagens ON tb_personagens.classe_id = tb_classes.id 
WHERE tb_classes.id = 1 

