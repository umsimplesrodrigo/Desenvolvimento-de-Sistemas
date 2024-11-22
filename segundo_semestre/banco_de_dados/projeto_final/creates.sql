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

CREATE TABLE transacoes_senaicoins (
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
