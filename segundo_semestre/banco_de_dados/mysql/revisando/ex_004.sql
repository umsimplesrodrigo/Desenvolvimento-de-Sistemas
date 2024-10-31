-- Suponha que você tenha uma tabela funcionarios com id_funcionario, nome e departamento, e uma tabela projetos com id_projeto, id_funcionario e horas.
-- Escreva uma consulta para listar o departamento e o número de funcionários alocados em cada um deles. Ordene os resultados pelo número de funcionários em ordem decrescente.

CREATE TABLE funcionarios (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    departamento VARCHAR(255)
);

CREATE TABLE projetos (
    id_projeto INT PRIMARY KEY AUTO_INCREMENT,
    id_funcionario INT,
    horas TIME,
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios (id_funcionario)
);

INSERT INTO funcionarios (nome, departamento)
VALUES ('Rodrigo Oliveira', 'Suporte Técnico'),
    ('Gabriel Menezes', 'Suporte Técnico'),
    ('Lívia Aguade', 'Comercial'),
    ('Alexsandre Lira', 'Financeiro'),
    ('Rodolfo Ribeiro', 'Juridico');

SELECT departamento, COUNT(id_funcionario) AS quantia_funcionarios
FROM funcionarios
GROUP BY departamento
ORDER BY quantia_funcionarios ASC;
