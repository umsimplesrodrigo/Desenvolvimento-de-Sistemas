-- Crie a estrutura de uma tabela que armazena informações sobre salas de aula, incluindo número da sala, capacidade e localização.

CREATE TABLE sala_de_aula (
	id_sala INT PRIMARY KEY AUTO_INCREMENT,
    num_sala INT NOT NULL,
    capacidade INT,
	localizacao VARCHAR(255)
);

-- Projete uma tabela que armazene informações sobre usuários, incluindo nome, data de nascimento e endereço de e-mail e senha.

CREATE TABLE usuarios (
	id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    data_nascimento DATE,
    email_usuario VARCHAR(255),
    senha VARCHAR(255)
);

-- Projete uma tabela que registre as informações de reserva de sala de aula, incluindo o ID da reserva, o ID do usuário, a ID da sala, data e horário da reserva, data de criação e status da reserva.

CREATE TABLE reserva_sala (
	id_reserva INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    id_sala INT,
    data_time_reserva DATETIME,
    data_criacao DATE,
    sts VARCHAR(255),
    FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario),
    FOREIGN KEY (id_sala) REFERENCES sala_de_aula (id_sala)
);

-- 4- Crie um gatilho que, ao inserir uma nova reserva na tabela, atualize automaticamente o status da sala de aula para "Indisponível" no momento da reserva.

DELIMITER $$

CREATE TRIGGER atualizar_reserva
AFTER INSERT ON reserva_sala
FOR EACH ROW
BEGIN
    UPDATE sala_de_aula
    SET sts = 'Indisponível'
    WHERE id_sala = NEW.id_sala;
END $$

DELIMITER ;

-- Projete uma tabela que mantenha o registro de cancelamentos de reservas, incluindo o motivo do cancelamento e a data em que ocorreu.

CREATE TABLE registro_cancelamentos (
	id_cancelamento INT PRIMARY KEY AUTO_INCREMENT,
    id_reserva INT,
    motivo VARCHAR(255) NOT NULL,
    data_cancelamento DATE,
    FOREIGN KEY (id_reserva) REFERENCES reserva_sala (id_sala)
);

-- Crie um gatilho que, ao cancelar uma reserva, atualize o status da sala de aula de volta para "Disponível" e o status da reserva para “Cancelada”.

DELIMITER $$

CREATE TRIGGER cancelar_reserva
AFTER UPDATE ON reserva_sala
FOR EACH ROW
BEGIN
    IF NEW.sts = 'Cancelada' THEN
        UPDATE sala_de_aula
        SET sts = 'Disponível'
        WHERE id_sala = NEW.id_sala;
    END IF;
END $$

DELIMITER ;

-- Crie uma view que mostre todas as salas de aula disponíveis para reserva.

CREATE OR REPLACE VIEW salas_disponiveis AS
SELECT s.num_sala, s.localizacao, rs.sts
FROM sala_de_aula AS s
JOIN reserva_sala AS rs
ON s.id_sala = rs.id_sala
WHERE sts = 'Disponível';

-- Projete uma função para calcular a idade do usuário.

CREATE calcular_idade(data_nascimento DATE)
RETURNS INT
RETURN (
	SELECT YEAR(DATE(NOW)) - YEAR(data_nascimento));

Crie uma view para retornar apenas os usuários com idade maior ou igual a 18.



