INSERT INTO users (nome, senha) VALUES 
('Zeca Pau Gordinho', 'rWZi*P-e]>7aWLa'),
('Napoleão Mãos Nas Partes', 'nyLLowAG+MWSog<'),
('Pedrofilo Santos', 'CeOCml%e<k(d}zo');

INSERT INTO transacoes_senaicoins (id_remetente, id_destinatario, valor) VALUES 
(1, 2, 50.75),
(2, 3, 120.00),
(3, 1, 15.50);

INSERT INTO nfts_objetos (nome, id_autor, atributos_programados, disponibilidade, valor) VALUES 
('Macaco Cirugião', 1, '{"dano": 50, "durabilidade": 100}', TRUE, 150.00),
('Elfo Preto', 2, '{"defesa": 30, "durabilidade": 80}', TRUE, 200.00),
('Sr. Dos Bordeis', 3, '{"habilidade": "invisibilidade", "tempo": 60}', FALSE, 500.00);

INSERT INTO chat_privado (id_remetente, id_destinatario, conteudo) VALUES 
(1, 2, 'Fala Corno'),
(2, 3, 'Eae piveti'),
(3, 1, 'Como tá o projeto de banco de dados?');

INSERT INTO transacoes_nfts (id_nft, id_destinatario, valor) VALUES 
(1, 2, 200.00),
(2, 3, 250.00);

INSERT INTO memory_pool (id_transacao, tipo_transacao) VALUES 
(1, 'Senaicoin'),
(2, 'NFT');

INSERT INTO bloco_blockchain (id, hash_bloco, hash_bloco_ant)
VALUES 
(1, 'hash1', '0000000000000000',
(2, 'hash2', 'hash1';

INSERT INTO transacoes_mineracao_blocos (id_user, id_bloco, valor_minerado) VALUES 
(1, 1, 1.00),
(2, 2, 1.00);

INSERT INTO users (nome, senha) VALUES 
('Jão pé de chulé', 'rWZi*P-e]>7aWLa'),
('Relampago Marquinhos', 'nyLLowAG+MWSog<');

UPDATE users
SET nome = 'Chaolin Gordin'
WHERE id = 1;

UPDATE transacoes_mineracao_blocos
SET valor_minerado = 1.50
WHERE id_user = 2 AND id_bloco = 1;

UPDATE nfts_objetos
SET valor = 350.00
WHERE id = 1;

DELETE FROM users
WHERE id = 4;

DELETE FROM memory_pool
WHERE id = 2;

DELETE FROM transacoes_senaicoins
WHERE id = 1;