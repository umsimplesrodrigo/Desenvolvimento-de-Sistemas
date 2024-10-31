CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    cidade VARCHAR(255)
);

CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    valor DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente)
);

CREATE TABLE vendas (
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    produto VARCHAR(255),
    valor DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente)
);

INSERT INTO clientes (nome, cidade)
VALUES ('Rodrigo Oliveira', 'Feira de Santana'),
    ('Gabriel Menezes', 'Feira de Santana'),
    ('Alexsandro Lira', 'Feira de Santana');

INSERT INTO vendas (id_cliente, produto, valor)
VALUES (1, 'Maconha', 10.20),
    (2, 'Cocaina', 66.80),
    (3, 'Crack', 16.90),
    (1, 'Cocaina', 66.80),
    (2, 'Maconha', 10.20),
    (3, 'Cocaina', 66.80);

SELECT c.nome, GROUP_CONCAT(v.produto ORDER BY v.produto ASC SEPARATOR ', ') AS produto
FROM clientes AS c
JOIN vendas AS v
ON v.id_cliente = c.id_cliente
GROUP BY c.nome;

SELECT produto, COUNT(*) AS total_vendas
FROM vendas
GROUP BY produto
ORDER BY total_vendas ASC;

SELECT produto, SUM(valor) AS valor_total
FROM vendas
GROUP BY produto
ORDER BY valor_total ASC;

SELECT AVG(valor) AS valor_medio
FROM vendas;

SELECT MAX(valor) AS maximo, MIN(valor) AS minimo
FROM vendas;

SELECT c.nome, SUM(v.valor) AS valor_total
FROM clientes AS c
JOIN vendas AS v
ON v.id_cliente = c.id_cliente
GROUP BY c.nome
ORDER BY valor_total ASC;
