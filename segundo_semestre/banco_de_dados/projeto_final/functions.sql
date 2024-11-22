DELIMITER $$

CREATE FUNCTION obter_saldo_senaicoins(p_id INT)
RETURNS DECIMAL(20,10)
DETERMINISTIC
BEGIN
    DECLARE v_saldo DECIMAL(20,10);

    SELECT saldo_senaicoins INTO v_saldo
    FROM users
    WHERE id = p_id;
    
    RETURN v_saldo;
END$$

DELIMITER ;

DELIMITER $$

CREATE FUNCTION verificar_nome_usuario(p_nome_usuario VARCHAR(255))
RETURNS BOOLEAN
DETERMINISTIC
BEGIN
    DECLARE v_count INT;

    SELECT COUNT(*) INTO v_count
    FROM users
    WHERE nome_usuario = p_nome_usuario;

    IF v_count > 0 THEN
        RETURN 1;
    ELSE
        RETURN 0;
    END IF;
END$$

DELIMITER ;

DELIMITER $$

CREATE FUNCTION calcular_transacoes_totais(p_id_remetente INT)
RETURNS DECIMAL(20,10)
DETERMINISTIC
BEGIN
    DECLARE v_total DECIMAL(20,10);

    SELECT SUM(valor) INTO v_total
    FROM trasacoes_senaicoins
    WHERE id_remetente = p_id_remetente;

    RETURN IFNULL(v_total, 0);
END$$

DELIMITER ;

DELIMITER $$

CREATE FUNCTION gerar_hash_bloco(
    hash_bloco_ant VARCHAR(64), 
    lista_transacoes TEXT, 
    time_bloco TIMESTAMP
) RETURNS VARCHAR(64)
BEGIN
    DECLARE hash_calculada VARCHAR(64);
    SET hash_calculada = SHA2(CONCAT(hash_bloco_ant, lista_transacoes, time_bloco), 256);
    RETURN hash_calculada;
END$$

DELIMITER ;

SHOW FUNCTION STATUS;