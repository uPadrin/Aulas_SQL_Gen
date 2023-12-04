CREATE DATABASE db_guigaeletro;

USE db_guigaeletro;

CREATE TABLE tb_rh(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
data_admissao date NOT NULL,
cargo varchar(255) NOT NULL,
salario decimal(6,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_rh (nome, data_admissao, cargo, salario)
VALUES ("Marcos", "2023/10/11", "Auxiliar administrativo", 1900.00),
("Vinicius", "2020/10/31", "Faxineiro", 1320.00),
("Pablo", "2021/03/18", "Psicólogo", 2500.00),
("Felipe", "2019/01/25", "Gerente", 6000.00),
("Luiza", "2022/07/29", "Vendedora", 1500.00);

SELECT * FROM tb_rh WHERE salario > 2000.00;

SELECT * FROM tb_rh WHERE salario < 2000.00;

UPDATE tb_rh SET salario = 1800.00 WHERE id = 5;

SELECT * FROM tb_rh;