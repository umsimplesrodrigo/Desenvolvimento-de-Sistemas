CREATE DATABASE simpleblocks;
USE simpleblocks;

CREATE TABLE users(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	senha VARCHAR(255) NOT NULL,
	saldo_sc DECIMAL(20,10) DEFAULT 0.00,
	data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	reputacao INT DEFAULT 0,
	opcoes_privacidade TEXT DEFAULT NULL,
	ultima_vez_online TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE transacoes_mineracao_blocos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_user INT NOT NULL, -- Chave estrangeira para users
    valor_minerado DECIMAL(20,10) DEFAULT 1.00,
    time_mineracao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_bloco INT NOT NULL, -- Chave estrangeira para bloco_blockchain
    CONSTRAINT fk_user FOREIGN KEY (id_user) REFERENCES users (id),
    CONSTRAINT fk_bloco FOREIGN KEY (id_bloco) REFERENCES bloco_blockchain (id)
);

CREATE TABLE bloco_blockchain (
	id INT PRIMARY KEY AUTO_INCREMENT,
	hash_bloco VARCHAR(64) NOT NULL, 
	hash_bloco_ant VARCHAR(64),
	time_bloco TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE users 
ADD COLUMN chave_publica VARCHAR(512) NOT NULL,
ADD COLUMN chave_privada VARCHAR(512) NOT NULL;

ALTER TABLE users
MODIFY chave_publica VARCHAR(512) DEFAULT NULL,
MODIFY chave_privada VARCHAR(512) DEFAULT NULL;

CREATE OR REPLACE TABLE transacoes_senaicoins (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_remetente INT,
    id_destinatario INT,
    valor DECIMAL(20,10) NOT NULL,
    time_transacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_remetente) REFERENCES users (id),
    FOREIGN KEY (id_destinatario) REFERENCES users (id)
);

CREATE TABLE nfts_objetos (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	id_autor INT,
	atributos_programados TEXT,
	data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	disponibilidade BOOL,
	valor DECIMAL(20,10)
);

CREATE TABLE chat_privado (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_remetente INT,
    id_destinatario INT,
    conteudo TEXT,
    time_mensagem TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_remetente) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (id_destinatario) REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE memory_pool (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_remetente INT,
    id_destinatario INT,
    valor DECIMAL(20,10) NOT NULL,
    time_transacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    assinatura VARCHAR(512) NOT NULL,
    status VARCHAR(20) DEFAULT 'pendente',
    data_inclusao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_remetente) REFERENCES users(id),
    FOREIGN KEY (id_destinatario) REFERENCES users(id)
);

CREATE TABLE trasacoes_senaicoins (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_remetente INT,
    id_destinatario INT,
    valor DECIMAL(20,10) NOT NULL,
    time_transacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_remetente) REFERENCES users (id),
    FOREIGN KEY (id_destinatario) REFERENCES users (id)
);

CREATE TABLE transacoes_nfts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_remetente INT,
    id_destinatario INT,
    id_nft INT,
    valor DECIMAL(20,10) NOT NULL,
    time_transacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_remetente) REFERENCES users (id),
    FOREIGN KEY (id_destinatario) REFERENCES users (id),
    FOREIGN KEY (id_nft) REFERENCES nfts_objetos (id)
);

CREATE TABLE log_modificacoes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tabela_afetada VARCHAR(255) NOT NULL,  -- Nome da tabela afetada
    acao VARCHAR(50) NOT NULL,             -- Tipo de ação: INSERT, UPDATE, DELETE
    descricao TEXT,                        -- Descrição da modificação
    id_usuario INT,                        -- ID do usuário que fez a ação
    data_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Data da modificação
    FOREIGN KEY (id_usuario) REFERENCES users (id)
);

DROP TABLE IF EXISTS memory_pool;

CREATE TABLE memory_pool (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_transacao INT NOT NULL,
    tipo_transacao ENUM('minerar', 'transferir_senaicoins', 'transferir_nft', 'Senaicoin', 'NFT') NOT NULL,
    status ENUM('pendente', 'minerado') DEFAULT 'pendente',
    data_inclusao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_transacao) REFERENCES transacoes_senaicoins (id)
);