DELIMITER $$

CREATE TRIGGER atualizar_saldo_transacao
AFTER INSERT ON trasacoes_senaicoins
FOR EACH ROW
BEGIN
    UPDATE users
    SET saldo_senaicoins = saldo_senaicoins - NEW.valor
    WHERE id = NEW.id_remetente;
    
    UPDATE users
    SET saldo_senaicoins = saldo_senaicoins + NEW.valor
    WHERE id = NEW.id_destinatario;
END$$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER verificar_disponibilidade_nft
BEFORE INSERT ON transacoes_nfts
FOR EACH ROW
BEGIN
    DECLARE v_disponibilidade BOOL;
    
    SELECT disponibilidade INTO v_disponibilidade
    FROM nfts_objetos
    WHERE id = NEW.id_nft;
    
    IF v_disponibilidade = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'NFT não disponível para transação';
    END IF;
END$$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER log_modificacao_usuario
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    INSERT INTO log_modificacoes (id_usuario, tipo_modificacao, data_modificacao)
    VALUES (NEW.id, 'Atualização', CURRENT_TIMESTAMP);
END$$

DELIMITER ;

DELIMITER $$

CREATE OR REPLACE TRIGGER impedir_exclusao_usuario 
BEFORE DELETE ON users
FOR EACH ROW
BEGIN
    DECLARE v_contagem INT;

    SELECT COUNT(*) INTO v_contagem
    FROM transacoes_senaicoins
    WHERE id_remetente = OLD.id OR id_destinatario = OLD.id;

    IF v_contagem > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Usuário não pode ser excluído, pois possui transações pendentes';
    END IF;
END$$


DELIMITER ;

DELIMITER $$

CREATE TRIGGER atualizar_hash_bloco
AFTER INSERT ON transacoes_mineracao_blocos
FOR EACH ROW
BEGIN
    DECLARE v_hash_anterior INT;
    DECLARE v_novo_hash INT;

    SELECT hash_bloco INTO v_hash_anterior
    FROM bloco_blockchain
    WHERE id = NEW.id_bloco;

    SET v_novo_hash = (v_hash_anterior + NEW.id_user + NEW.valor_minerado) % 1000000;

    UPDATE bloco_blockchain
    SET hash_bloco = v_novo_hash
    WHERE id = NEW.id_bloco;
END$$

DELIMITER ;


DELIMITER $$

CREATE TRIGGER calcular_hash_bloco
BEFORE INSERT ON bloco_blockchain
FOR EACH ROW
BEGIN

    DECLARE v_hash_ant VARCHAR(64);

    IF NEW.hash_bloco_ant IS NULL THEN
        SET v_hash_ant = '0000000000000000000000000000000000000000000000000000000000000000';
    ELSE
        SET v_hash_ant = NEW.hash_bloco_ant;
    END IF;

    SET NEW.hash_bloco = gerar_hash_bloco(v_hash_ant, NEW.lista_transacoes, NEW.time_bloco);
END$$

DELIMITER ;
