-- Atividade 01

CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    fase INT NOT NULL
);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
    nivel INT NOT NULL,
    poder INT NOT NULL,
    vidas INT NOT NULL,
    fk_classes BIGINT NOT NULL,
	FOREIGN KEY (fk_classes) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(nome, fase)
VALUES("Esmeralda", 1);
INSERT INTO tb_classes(nome, fase)
VALUES("Diamante", 2);
INSERT INTO tb_classes(nome, fase)
VALUES("Ouro", 3);
INSERT INTO tb_classes(nome, fase)
VALUES("Prata", 4);
INSERT INTO tb_classes(nome, fase)
VALUES("Bronze", 5);

INSERT INTO tb_personagens(nome, nivel, poder, vidas, fk_classes)
VALUES("Miro", 4, 1500, 5, 3);
INSERT INTO tb_personagens(nome, nivel, poder, vidas, fk_classes)
VALUES("Nina", 5, 2100, 5, 4);
INSERT INTO tb_personagens(nome, nivel, poder, vidas, fk_classes)
VALUES("Bil", 2, 1100, 3, 2);
INSERT INTO tb_personagens(nome, nivel, poder, vidas, fk_classes)
VALUES("Dea", 3, 500, 2, 1);
INSERT INTO tb_personagens(nome, nivel, poder, vidas, fk_classes)
VALUES("John", 1, 1200, 1, 2);
INSERT INTO tb_personagens(nome, nivel, poder, vidas, fk_classes)
VALUES("Babi", 4, 2500, 3, 5);
INSERT INTO tb_personagens(nome, nivel, poder, vidas, fk_classes)
VALUES("Chay", 3, 1600, 2, 3);
INSERT INTO tb_personagens(nome, nivel, poder, vidas, fk_classes)
VALUES("Bento", 5, 2200, 4, 5);
INSERT INTO tb_personagens(nome, nivel, poder, vidas, fk_classes)
VALUES("Enoc", 5, 2300, 4, 5);
INSERT INTO tb_personagens(nome, nivel, poder, vidas, fk_classes)
VALUES("Victor", 3, 800, 2, 1);

SELECT * FROM tb_personagens;
SELECT * FROM tb_classes;

SELECT * FROM tb_personagens WHERE poder > 2000;
SELECT * FROM tb_personagens WHERE poder < 2000 AND poder > 1000;

SELECT * FROM tb_personagens WHERE nome LIKE '%c%';

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.fk_classes;

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.fk_classes AND fk_classes = 3;


-- Atividade 02

CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    massa VARCHAR(255) NOT NULL,
    tamanho VARCHAR(255) NOT NULL
);

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	sabor VARCHAR(255) NOT NULL,
    borda VARCHAR(255) NOT NULL,
    preco DECIMAL NOT NULL,
    fk_pizzas BIGINT NOT NULL,
	FOREIGN KEY (fk_pizzas) REFERENCES tb_pizzas(id)
);

INSERT INTO tb_pizzas(massa, tamanho)
VALUES("Massa Pan", "Grande");
INSERT INTO tb_pizzas(massa, tamanho)
VALUES("Massa Pan", "Média");
INSERT INTO tb_pizzas(massa, tamanho)
VALUES("Massa Tradicional", "Grande");
INSERT INTO tb_pizzas(massa, tamanho)
VALUES("Massa Tradicional", "Média");
INSERT INTO tb_pizzas(massa, tamanho)
VALUES("Doce", "Pequena");

INSERT INTO tb_categorias(sabor, borda, preco, fk_pizzas)
VALUES("Atum", "Cream Cheese", 120.00, 1);
INSERT INTO tb_categorias(sabor, borda, preco, fk_pizzas)
VALUES("Nutella", "Simples", 40.00, 5);
INSERT INTO tb_categorias(sabor, borda, preco, fk_pizzas)
VALUES("Portuguesa", "Requeijão", 50.00, 4);
INSERT INTO tb_categorias(sabor, borda, preco, fk_pizzas)
VALUES("Calabresa", "Simples", 60.00, 3);
INSERT INTO tb_categorias(sabor, borda, preco, fk_pizzas)
VALUES("4 Queijos", "Cheddar", 110.00, 1);
INSERT INTO tb_categorias(sabor, borda, preco, fk_pizzas)
VALUES("Baiana", "Cream Cheese", 90.00, 2);
INSERT INTO tb_categorias(sabor, borda, preco, fk_pizzas)
VALUES("Chocolate Branco", "Nutella", 40.00, 5);
INSERT INTO tb_categorias(sabor, borda, preco, fk_pizzas)
VALUES("5 Queijos", "Cheddar", 120.00, 1);


SELECT * FROM tb_pizzas;
SELECT * FROM tb_categorias;

SELECT * FROM tb_categorias WHERE preco > 45;
SELECT * FROM tb_categorias WHERE preco > 50 AND preco < 100;

SELECT * FROM tb_categorias WHERE sabor LIKE '%m%';


SELECT * FROM tb_categorias
INNER JOIN tb_pizzas ON tb_pizzas.id = tb_categorias.fk_pizzas;

SELECT * FROM tb_categorias
INNER JOIN tb_pizzas ON tb_pizzas.id = tb_categorias.fk_pizzas AND fk_pizzas = 5;

