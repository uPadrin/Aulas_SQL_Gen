-- Criar o Banco de dados
CREATE DATABASE db_quitanda;

-- Acessar o Banco de Dados
USE db_quitanda;

-- Criar Tabela
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT ,
nome varchar(255) NOT NULL,
quantidade int,
data_validade date ,
preco decimal NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela
INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("tomate", 100 , "2023-12-20", 8.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("maçã", 100 , "2023-12-19", 8.00),
("banana", 100 , "2023-12-22", 11.99),
("uva verde", 100 , "2023-12-17", 30.00),
("alface", 100 , "2023-12-25", 15.00);

/* Visualizar os dados*/

-- Visualiza todos os dados
SELECT * FROM tb_produtos;

SELECT nome, DATE_FORMAT(data_validade,'%d/%m/%Y') AS preço FROM tb_produtos;

-- Visualiza somente o nome e o preço formatado para Reais
SELECT nome, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS preço FROM tb_produtos;

-- Visualiza somente o nome e o preço
SELECT nome_produto, preco FROM tb_produtos;

-- Visualiza o produto cujo id é igual a 1
SELECT * FROM tb_produtos WHERE id = 1;

-- Visualiza todos os produtos cujo preço seja maior do que 5
SELECT * FROM tb_produtos WHERE preco > 5.00;

-- Visualiza todos os produtos cujo nome seja maçã
SELECT * FROM tb_produtos WHERE nome_produto = "maçã"; 

-- Visualiza todas as pizzas cujo nome seja Maçã ou o Preco > 5.00
SELECT * FROM tb_produtos WHERE nome_produto = "maçã" OR preco > 5.00;

/* Alterações na Estrutura da Tabela*/

-- Adiciona um novo Atributo na Tabela
ALTER TABLE tb_produtos ADD descricao varchar(255);

-- Remove um Atributo da Tabela
ALTER TABLE tb_produtos DROP descricao;

-- Renomeia um Atributo da Tabela
ALTER TABLE tb_produtos CHANGE nome nome_produto varchar(255);

-- Atualiza o tipo de um Atributo da Tabela
-- decimal (6 digitos, sendo os ultimos 2 as casas decimais - 4200.00)
ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);

/* Alterações nos Dados da Tabela*/

-- Atualiza o atributo preço na tabela, cujo id seja igual a 3
UPDATE tb_produtos SET preco = 11.90 WHERE id = 3; 

-- Deleta o registro da tabela, cujo id seja igual a 2
DELETE FROM tb_produtos WHERE id = 2;

INSERT INTO tb_produtos(nome_produto, quantidade, data_validade, preco)
VALUES ("pera", 100 , "2023-12-30", 10.00);



/* Bônus */ 


-- Desabilita o modo safe update, que impede a execução do update e do delete sem where
-- SET SQL_SAFE_UPDATES = 0;

-- Apaga todos os dados da tabela (Não é possível desfazer)
-- DROP TABLE tb_produtos;

-- DELETA O DATABASE
-- DROP DATABASE db_quitanda;