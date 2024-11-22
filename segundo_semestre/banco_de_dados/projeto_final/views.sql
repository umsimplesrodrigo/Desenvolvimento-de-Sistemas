CREATE OR REPLACE VIEW view_transacoes_senaicoins_usuario AS
SELECT
    t.id,
    t.id_remetente,
    t.id_destinatario,
    t.valor,
    t.time_transacao,
    u_remetente.nome AS remetente_nome,
    u_destinatario.nome AS destinatario_nome
FROM
    transacoes_senaicoins t
JOIN users u_remetente ON t.id_remetente = u_remetente.id
JOIN users u_destinatario ON t.id_destinatario = u_destinatario.id;

SELECT * FROM view_transacoes_senaicoins_usuario;

CREATE OR REPLACE VIEW view_blocos_transacoes AS
SELECT
    b.id AS bloco_id,
    b.hash_bloco,
    b.time_bloco,
    tm.id_user,
    tm.valor_minerado,
    tm.time_mineracao
FROM
    bloco_blockchain b
JOIN transacoes_mineracao_blocos tm ON b.id = tm.id_bloco;

SELECT * FROM view_blocos_transacoes;

CREATE OR REPLACE VIEW view_saldo_usuario AS
SELECT
    u.id,
    u.nome AS usuario_nome,
    SUM(t.valor) AS saldo_total
FROM
    users u
LEFT JOIN transacoes_senaicoins t ON u.id = t.id_remetente
GROUP BY u.id;

SELECT * FROM view_saldo_usuario;

CREATE OR REPLACE VIEW view_transacoes_nfts AS
SELECT
    t.id AS transacao_id,
    t.id_remetente,
    t.id_destinatario,
    n.nome AS nft_nome,
    t.time_transacao,
    t.valor
FROM
    transacoes_nfts t
JOIN nfts_objetos n ON t.id_nft = n.id;

SELECT * FROM view_transacoes_nfts;

CREATE OR REPLACE VIEW view_chat_privado_usuario AS
SELECT
    c.id,
    c.id_remetente,
    c.id_destinatario,
    c.conteudo,
    c.time_mensagem,
    u_remetente.nome AS remetente_nome,
    u_destinatario.nome AS destinatario_nome
FROM
    chat_privado c
JOIN users u_remetente ON c.id_remetente = u_remetente.id
JOIN users u_destinatario ON c.id_destinatario = u_destinatario.id;

SELECT * FROM view_chat_privado_usuario;

CREATE OR REPLACE VIEW view_blocos_referencias AS
SELECT
    b.id AS bloco_id,
    b.hash_bloco,
    b.time_bloco,
    b.hash_bloco_ant,
    bb.hash_bloco AS hash_bloco_anterior
FROM
    bloco_blockchain b
LEFT JOIN bloco_blockchain bb ON b.hash_bloco_ant = bb.hash_bloco;

SELECT * FROM view_blocos_referencias;

CREATE OR REPLACE VIEW view_ranking_reputacao AS
SELECT
    id,
    nome,
    reputacao
FROM users
ORDER BY reputacao DESC;

SELECT * FROM view_ranking_reputacao;

CREATE OR REPLACE VIEW view_mineracao_usuario AS
SELECT
    tm.id_user,
    u.nome AS usuario_nome,
    SUM(tm.valor_minerado) AS total_minerado
FROM
    transacoes_mineracao_blocos tm
JOIN users u ON tm.id_user = u.id
GROUP BY tm.id_user;

SELECT * FROM view_mineracao_usuario;

CREATE OR REPLACE VIEW view_log_modificacoes AS
SELECT
    l.id,
    l.tabela_afetada,
    l.data_modificacao,
    u.nome AS usuario_responsavel
FROM
    log_modificacoes l
JOIN users u ON l.id_usuario = u.id;

SELECT * FROM view_log_modificacoes;

CREATE OR REPLACE VIEW view_transacoes_pendentes AS
SELECT
    t.id,
    t.id_remetente,
    t.id_destinatario,
    t.valor,
    t.time_transacao,
    CASE
        WHEN t.status = 'pendente' THEN 'Pendente'
        ELSE 'Finalizada'
    END AS status
FROM
    transacoes_senaicoins t
WHERE t.status = 'pendente';

SELECT * FROM view_transacoes_pendentes;

CREATE OR REPLACE VIEW view_total_transacoes_por_usuario AS
SELECT 
    u.id AS id_usuario,
    CONCAT(u.nome, ' (', u.chave_publica, ')') AS identificacao_usuario,
    COUNT(t.id) AS total_transacoes,
    SUM(t.valor) AS total_valor_transacionado
FROM 
    users u
LEFT JOIN 
    transacoes_senaicoins t ON u.id = t.id_remetente
GROUP BY 
    u.id
ORDER BY 
    total_transacoes DESC, total_valor_transacionado DESC;
   
SELECT * FROM view_total_transacoes_por_usuario;