CREATE DATABASE test00;
USE test00;

CREATE TABLE produtos (
        cod_produto INT NOT NULL AUTO_INCREMENT,
        nome VARCHAR (45) NOT NULL,
        preco DECIMAL (10,5),
        PRIMARY KEY(cod_produto)
);

CREATE TABLE controle (
        registro INT  NOT NULL AUTO_INCREMENT,
        cod_produto INT NOT NULL,
        data_registro DATE,
        hora_registro TIME,
        PRIMARY KEY (registro, cod_produto),
        FOREIGN KEY (cod_produto) REFERENCES produtos (cod_produto)
);

CREATE TABLE controle_preco (
        registro INT  NOT NULL AUTO_INCREMENT,
        data_registro DATE,
        hora_registro TIME,
        cod_produto INT NOT NULL,
        preco_antigo DECIMAL (10,2),
        preco_novo DECIMAL (10,2),
        PRIMARY KEY (registro, cod_produto),
        FOREIGN KEY (cod_produto) REFERENCES produtos (cod_produto)
);

CREATE TABLE produtos_two (
    id_produto INT NOT NULL AUTO_INCREMENT,
    nome_produto VARCHAR (45) NOT NULL,
    preco_normal DECIMAL (10,2) NOT NULL,
    preco_desconto DECIMAL (10,2) NOT NULL,
    PRIMARY KEY (id_produto)
);

ALTER TABLE produtos_two MODIFY preco_desconto DECIMAL (10,2) DEFAULT NULL;
-- Criar um trigger que toda vez que houver um INSERT na tabela PRODUTOS, serão inseridas a DATA e a HORA desta inserção na tabela CONTROLE.

USE test00;

DELIMITER $$

CREATE OR REPLACE TRIGGER data_hora_registros
AFTER INSERT ON produtos
FOR EACH ROW
BEGIN
    INSERT INTO controle (cod_produto, data_registro, hora_registro) 
    VALUES (NEW.cod_produto, CURDATE(), CURTIME());
END $$

DELIMITER ;

SHOW TRIGGERS;

DELETE FROM produtos;

INSERT INTO produtos (nome, preco)
VALUES
    ('Mentanfetamina', ROUND(RAND() * (250 - 100) + 100, 2)),
    ('Cocaina', ROUND(RAND() * (300 - 150) + 150, 2)),
    ('Heroina', ROUND(RAND() * (350 - 200) + 200, 2)),
    ('LSD', ROUND(RAND() * (100 - 50) + 50, 2)),
    ('Maconha', ROUND(RAND() * (150 - 75) + 75, 2));
   
SELECT * FROM controle;

-- Criar um trigger que sempre que o valor do produto for alterado a trigger será disparada. Colocando a data e hora da alteração na tabela controle_preco, além do preço antigo e preço novo.

CREATE TABLE controle_preco (
        registro INT  NOT NULL AUTO_INCREMENT,
        data_registro DATE,
        hora_registro TIME,
        cod_produto INT NOT NULL,
        preco_antigo DECIMAL (10,2),
        preco_novo DECIMAL (10,2),
        PRIMARY KEY (registro)
);

DELIMITER $$

CREATE OR REPLACE TRIGGER registro_alteracao_preco
AFTER UPDATE ON produtos
FOR EACH ROW
BEGIN
    IF OLD.preco <> NEW.preco THEN
        INSERT INTO controle_preco (cod_produto, preco_antigo, preco_novo, data_registro, hora_registro) 
        VALUES (NEW.cod_produto, OLD.preco, NEW.preco, CURDATE(), CURTIME());
    END IF;
END $$

DELIMITER ;

SHOW TRIGGERS;

-- MANO OS TRIGGERS NÃO APARECEM, NÃO ESTÁ RETORNANDO NADA NESSE KRAI

-- Criar um trigger para que antes de ser inserido um produto deve ser aplicado um desconto de 10% sobre o preco_normal e atribuido ao preco_desconto

DELIMITER $$
CREATE OR REPLACE TRIGGER produto_desconto
BEFORE INSERT ON produtos_two
FOR EACH ROW
BEGIN
    SET NEW.preco_desconto = NEW.preco_normal * 0.9;
END $$
DELIMITER ;
