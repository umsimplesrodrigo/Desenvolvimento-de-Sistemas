-- Suponha que você tenha duas tabelas: clientes e pedidos. A tabela clientes contém os campos id_cliente, nome e cidade, e a tabela pedidos contém id_pedido, id_cliente e valor

SELECT c.nome, MIN(p.valor) AS valor_menor
FROM clientes AS c
JOIN pedidos AS p
ON c.id_cliente = p.id_cliente
GROUP BY c.nome
ORDER BY MIN(p.valor) ASC;

-- Acabei perdendo o script criando as tabelas
