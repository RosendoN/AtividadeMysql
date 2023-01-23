CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    matricula INT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    setor VARCHAR(255) NOT NULL,
    salario DECIMAL NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO tb_colaboradores(matricula, nome, cargo, setor, salario)
VALUE(22879, "Bruno Dantas", "RH Júnior", "RH", 1320.00);
INSERT INTO tb_colaboradores(matricula, nome, cargo, setor, salario)
VALUE(22669, "Tales Costa", "RH Sênior", "RH", 5664.00);
INSERT INTO tb_colaboradores(matricula, nome, cargo, setor, salario)
VALUE(22452, "Neide Alves", "RH Pleno", "RH", 1233.00);
INSERT INTO tb_colaboradores(matricula, nome, cargo, setor, salario)
VALUE(22107, "Sandra Schneider", "RH Júnior", "RH", 2202.00);
INSERT INTO tb_colaboradores(matricula, nome, cargo, setor, salario)
VALUE(22057, "Daniela Duarte", "RH Diretoria", "RH", 4357.00);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET cargo = "RH Pleno" WHERE id = 1;
