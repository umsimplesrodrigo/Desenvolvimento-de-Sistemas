DELIMITER $$

CREATE PROCEDURE criar_usuario(
    IN p_nome VARCHAR(255),
    IN p_senha VARCHAR(255)
)
BEGIN
    DECLARE v_id INT;
    DECLARE v_chave_publica VARCHAR(512);
    DECLARE v_chave_privada VARCHAR(512);

    INSERT INTO users (nome, senha)
    VALUES (p_nome, p_senha);

    SET v_id = LAST_INSERT_ID();

    SET v_chave_publica = CONCAT('PUB-', UUID(), '-', v_id);
    SET v_chave_privada = CONCAT('PRIV-', UUID(), '-', v_id);

    UPDATE users
    SET chave_publica = v_chave_publica,
        chave_privada = v_chave_privada
    WHERE id = v_id;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE registrar_transacao_senaicoins(
    IN p_id_remetente INT,
    IN p_id_destinatario INT,
    IN p_valor DECIMAL(20,10)
)
BEGIN
    DECLARE v_saldo_remetente DECIMAL(20,10);

    SELECT saldo_senaicoins INTO v_saldo_remetente
    FROM users
    WHERE id = p_id_remetente;

    IF v_saldo_remetente >= p_valor THEN
        UPDATE users
        SET saldo_senaicoins = saldo_senaicoins - p_valor
        WHERE id = p_id_remetente;

        UPDATE users
        SET saldo_senaicoins = saldo_senaicoins + p_valor
        WHERE id = p_id_destinatario;
        
        INSERT INTO trasacoes_senaicoins (id_remetente, id_destinatario, valor, time_transacao)
        VALUES (p_id_remetente, p_id_destinatario, p_valor, CURRENT_TIMESTAMP);
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Saldo insuficiente para realizar a transação';
    END IF;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE criar_nft(
    IN p_nome VARCHAR(255),
    IN p_id_autor INT,
    IN p_atributos_programados TEXT,
    IN p_disponibilidade BOOL,
    IN p_valor DECIMAL(20,10)
)
BEGIN
    INSERT INTO nfts_objetos (nome, id_autor, atributos_programados, disponibilidade, valor, data_criacao)
    VALUES (p_nome, p_id_autor, p_atributos_programados, p_disponibilidade, p_valor, CURRENT_TIMESTAMP);
END$$

DELIMITER ;

SHOW PROCEDURE STATUS;