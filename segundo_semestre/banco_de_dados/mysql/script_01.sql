CREATE DATABASE db_cine_senai;

USE db_cine_senai;

CREATE TABLE salas(
	id_sala INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	capacidade INT NOT NULL
);

CREATE TABLE filmes(
	id_filme INT PRIMARY KEY AUTO_INCREMENT,
	nome_en VARCHAR(50) NOT NULL,
	nome_br VARCHAR(50) NOT NULL,
	sinopse VARCHAR(250),
	ano_lancamento DATE NOT NULL,
	classificacao CHAR(5) NOT NULL DEFAULT 'livre'
);

CREATE TABLE generos(
	id_genero INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(20) NOT NULL
);

CREATE TABLE generos_filmes(
	id_genero INT,
	id_filme INT,
	PRIMARY KEY (id_genero, id_filme),
	FOREIGN KEY (id_genero) REFERENCES generos (id_genero),
	FOREIGN KEY (id_filme) REFERENCES filmes (id_filme)
);

CREATE TABLE diretores(
	id_diretor INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL
);

CREATE TABLE filmes_diretores(
	id_diretor INT,
	id_filme INT,
	PRIMARY KEY (id_diretor, id_filme),
	FOREIGN KEY (id_diretor) REFERENCES diretores (id_diretor),
	FOREIGN KEY (id_filme) REFERENCES filmes (id_filme)
);

CREATE TABLE funcionarios(
	id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	cpf CHAR(14) NOT NULL,
	telefone CHAR(18) NOT NULL,
	id_cargo INT,
	sts INT NOT NULL DEFAULT 1, -- 1 = funcionário ativo 0 = funcionário desligado
	FOREIGN KEY (id_cargo) REFERENCES cargos (id_cargo)
);

CREATE TABLE cargos(
	id_cargo INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	sts INT NOT NULL DEFAULT 1
);

CREATE TABLE sessoes(
	id_sessao INT PRIMARY KEY AUTO_INCREMENT,
	id_sala INT,
	id_filme INT,
	hora_data_sessao DATETIME NOT NULL,
	idioma INT NOT NULL DEFAULT 0,
	FOREIGN KEY (id_sala) REFERENCES salas (id_sala),
	FOREIGN KEY (id_filme) REFERENCES filmes (id_filme)
);

CREATE TABLE ingressos(
	id_ingresso INT PRIMARY KEY AUTO_INCREMENT,
	id_sessao INT,
	tp_ingresso INT NOT NULL,
	FOREIGN KEY (id_sessao) REFERENCES sessoes (id_sessao)
);

CREATE TABLE assentos(
	id_assento INT PRIMARY KEY AUTO_INCREMENT,
	id_sessao INT,
	sts INT,
	FOREIGN KEY (id_sessao) REFERENCES sessoes (id_sessao)
);

ALTER TABLE ingressos
ADD valor FLOAT NOT NULL;

ALTER TABLE funcionarios
ADD UNIQUE (cpf);

CREATE TABLE tipos_ingressos(
id_tp_ingressos INT PRIMARY KEY AUTO_INCREMENT,
nome CHAR(20),
sts INT NOT NULL DEFAULT 1
);

ALTER TABLE ingressos
DROP tp_ingresso;

ALTER TABLE tipos_ingressos
CHANGE COLUMN id_tp_ingressos id_tp_ingresso INT;

ALTER TABLE ingressos
ADD id_tp_ingresso INT;

ALTER TABLE ingressos
ADD CONSTRAINT fk_id_tp_ingresso FOREIGN KEY (id_tp_ingresso) REFERENCES tipos_ingressos (id_tp_ingresso);

CREATE TABLE vendas(
	id_venda INT PRIMARY KEY AUTO_INCREMENT,
	id_funcionario INT,
	dt_venda DATETIME NOT NULL,
	id_tp_pagamento INT,
	FOREIGN KEY (id_funcionario) REFERENCES funcionarios (id_funcionario),
	FOREIGN KEY (id_tp_pagamento) REFERENCES tipos_pagamento (id_tp_pagamento)
);

CREATE TABLE tipos_pagamento(
	id_tp_pagamento INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(20) NOT NULL UNIQUE,
	sts INT NOT NULL
);

ALTER TABLE tipos_ingressos
ADD UNIQUE (nome);

CREATE TABLE itens_vendas(
	id_item_venda INT PRIMARY KEY AUTO_INCREMENT,
	id_venda INT,
	id_ingresso INT,
	id_assento INT,
	valor_pago FLOAT NOT NULL,
	FOREIGN KEY (id_venda) REFERENCES vendas (id_venda),
	FOREIGN KEY (id_ingresso) REFERENCES ingressos (id_ingresso),
	FOREIGN KEY (id_assento) REFERENCES assentos (id_assento)
);

ALTER TABLE funcionarios
ADD email VARCHAR(60) NOT NULL UNIQUE;

ALTER TABLE cargos
CHANGE COLUMN sts sts_cargo INT;
