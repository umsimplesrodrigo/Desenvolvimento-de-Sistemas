CREATE DATABASE curso_senai_51;
USE curso_senai_51;

CREATE TABLE alunos(
	id_aluno INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(255),
	matricula VARCHAR(20) NOT NULL UNIQUE,
	nota DECIMAL(4,2)
);

CREATE TABLE registros (
	id_registro INT PRIMARY KEY AUTO_INCREMENT,
    matricula VARCHAR(20),
    resultado VARCHAR(20),
    FOREIGN KEY registros (matricula) REFERENCES alunos (matricula)
);

DELIMITER $$

CREATE OR REPLACE TRIGGER atualizar_registro
AFTER INSERT ON alunos
FOR EACH ROW
BEGIN
	IF NEW.nota >= 7 THEN
		INSERT INTO registros (matricula, resultado) VALUES (NEW.matricula, 'APROVADO');
	ELSE
		INSERT INTO registros (matricula, resultado) VALUES (NEW.matricula, 'REPROVADO');
	END IF;
END $$
DELIMITER ;

DELIMITER $$

CREATE OR REPLACE TRIGGER atualizar_registro
AFTER INSERT ON alunos
FOR EACH ROW
BEGIN
	IF NEW.nota >= 7 THEN
		SET resultado = 'APROVADO!';
	ELSE
		SET resultado = 'REPROVADO!';
	END IF;
	
    INSERT INTO registro (matricula, resultado) VALUES (NEW.matricula, 'REPROVADO');
END $$

DELIMITER ;

INSERT INTO alunos (nome, matricula, nota)
VALUES 
	('Filipe Cláudio Pereira', '43902021209', 10.00),
    ('Sérgio Murilo Rodrigo dos Santos', '05673674104', 08.00),
    ('Levi Hugo Victor Almada', '23441118162', 06.00),
    ('Miguel Vinicius Ricardo Campos', '52831614988', 04.00),
    ('Fabiana Maria Aurora Araújo', '48719264275', 02.00);

SELECT 
	al.nome,
    al.nota,
    reg.resultado
FROM 
	alunos AS al
JOIN
	registros AS reg
ON
	reg.matricula = al.matricula;
    
