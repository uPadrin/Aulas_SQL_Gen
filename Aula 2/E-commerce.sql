CREATE DATABASE db_luxury;

USE db_luxury;

CREATE TABLE tb_produtoE(
id bigint AUTO_INCREMENT,
nome_produtoE varchar(255) NOT NULL,
quantidade int,
tipo varchar(255) NOT NULL,
preco decimal(10,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtoE (nome_produtoE, quantidade, tipo, preco)
VALUES ("GMT-Master II", 2, "Rolex", 48291.00),
("Daytona", 1, "Rolex", 74770.00),
("Journey 1884", 4, "Victorinox", 9597.00),
("Airboss", 2, "Victorinox", 18027.00),
("Reserve Venom Gold Label", 0, "Invicta", 5999.00),
("Venom", 8, "Invicta", 3999.00),
("Timewalker", 3, "Montblanc", 4593.00),
("Star", 6, "Montblanc", 2640.00);

SELECT * FROM tb_produtoE WHERE preco > 500.00;

SELECT * FROM tb_produtoE WHERE preco < 500.00;

UPDATE tb_produtoE SET salario = 3999.00 WHERE id = 8;

SELECT * FROM tb_produtoE;