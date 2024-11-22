USE simpleblocks;

DESCRIBE users;

CALL criar_usuario('Teste02', '123456');

SELECT * FROM users;

DROP TABLE transacoes_senaicoins;

DROP TRIGGER atualizar_hash_bloco;

ALTER TABLE bloco_blockchain
ADD COLUMN lista_transacoes TEXT;

ALTER TABLE transacoes_senaicoins ADD COLUMN status ENUM('pendente', 'finalizada') DEFAULT 'pendente';

ALTER TABLE bloco_blockchain MODIFY hash_bloco VARCHAR(64) DEFAULT NULL;

ALTER TABLE memory_pool
DROP FOREIGN KEY memory_pool_ibfk_1;

ALTER TABLE memory_pool
ADD CONSTRAINT memory_pool_ibfk_1
    FOREIGN KEY (id_transacao) REFERENCES transacoes_senaicoins(id)
    ON DELETE CASCADE;

SELECT id_remetente, SUM(valor) AS total_enviado
FROM transacoes_senaicoins
GROUP BY id_remetente
HAVING SUM(valor) > 1.00;