-- ==================================================
-- TRABALHO AV2 - MODELAGEM DE DADOS: FORMULA 1
-- Banco de dados: db_formula01
-- ==================================================

CREATE DATABASE IF NOT EXISTS db_formula01;
USE db_formula01;

-- ==================================================
-- 1. CRIACAO DAS TABELAS
-- ==================================================

CREATE TABLE tb_paises (
    codigo VARCHAR(3) PRIMARY KEY NOT NULL,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE tb_equipes (
    sigla VARCHAR(3) PRIMARY KEY NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cod_pais VARCHAR(3) NOT NULL,
    FOREIGN KEY (cod_pais) REFERENCES tb_paises(codigo)
);

CREATE TABLE tb_corridas (
    sigla_gp VARCHAR(3) PRIMARY KEY NOT NULL,
    nome_gp VARCHAR(100) NOT NULL,
    cod_pais VARCHAR(3) NOT NULL,
    qtd_voltas INTEGER CHECK (qtd_voltas > 0),
    FOREIGN KEY (cod_pais) REFERENCES tb_paises(codigo)
);

CREATE TABLE tb_pilotos (
    numero INTEGER PRIMARY KEY NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cod_pais VARCHAR(3) NOT NULL,
    sigla_equipe VARCHAR(3),
    salario DECIMAL(10,2),
    FOREIGN KEY (cod_pais) REFERENCES tb_paises(codigo),
    FOREIGN KEY (sigla_equipe) REFERENCES tb_equipes(sigla)
);

CREATE TABLE tb_participantes (
    sigla_gp VARCHAR(3) NOT NULL,
    num_piloto INTEGER NOT NULL,
    posicao_largada INTEGER CHECK (posicao_largada > 0),

    PRIMARY KEY (sigla_gp, num_piloto),

    FOREIGN KEY (sigla_gp)
        REFERENCES tb_corridas(sigla_gp),

    FOREIGN KEY (num_piloto)
        REFERENCES tb_pilotos(numero)
);

-- ==================================================
-- 2. CADASTRO DE PAISES
-- ==================================================

INSERT INTO tb_paises (codigo, nome) VALUES
('GBR', 'Reino Unido'),
('AUS', 'Australia'),
('ITA', 'Italia'),
('NLD', 'Paises Baixos'),
('FRA', 'Franca'),
('MCO', 'Monaco'),
('THA', 'Tailandia'),
('NZL', 'Nova Zelandia'),
('ESP', 'Espanha'),
('CAN', 'Canada'),
('USA', 'Estados Unidos'),
('DEU', 'Alemanha'),
('BRA', 'Brasil'),
('ARG', 'Argentina'),
('MEX', 'Mexico'),
('FIN', 'Finlandia'),
('AUT', 'Austria'),
('CHN', 'China'),
('JPN', 'Japao'),
('BHR', 'Bahrein'),
('SAU', 'Arabia Saudita');

-- ==================================================
-- 3. CADASTRO DE EQUIPES
-- ==================================================

INSERT INTO tb_equipes (sigla, nome, cod_pais) VALUES
('MCL', 'McLaren', 'GBR'),
('MER', 'Mercedes', 'DEU'),
('RBR', 'Red Bull Racing', 'AUT'),
('FER', 'Ferrari', 'ITA'),
('WIL', 'Williams', 'GBR'),
('RBT', 'Racing Bulls', 'ITA'),
('AST', 'Aston Martin', 'GBR'),
('HAA', 'Haas', 'USA'),
('AUD', 'Audi', 'DEU'),
('ALP', 'Alpine', 'FRA'),
('CAD', 'Cadillac', 'USA');

-- ==================================================
-- 4. CADASTRO DOS 22 PILOTOS TITULARES DA F1 2026
-- ==================================================

INSERT INTO tb_pilotos
(numero, nome, cod_pais, sigla_equipe) VALUES
(1, 'Lando Norris', 'GBR', 'MCL'),
(81, 'Oscar Piastri', 'AUS', 'MCL'),
(63, 'George Russell', 'GBR', 'MER'),
(12, 'Kimi Antonelli', 'ITA', 'MER'),
(3, 'Max Verstappen', 'NLD', 'RBR'),
(6, 'Isack Hadjar', 'FRA', 'RBR'),
(16, 'Charles Leclerc', 'MCO', 'FER'),
(44, 'Lewis Hamilton', 'GBR', 'FER'),
(55, 'Carlos Sainz', 'ESP', 'WIL'),
(23, 'Alexander Albon', 'THA', 'WIL'),
(30, 'Liam Lawson', 'NZL', 'RBT'),
(41, 'Arvid Lindblad', 'GBR', 'RBT'),
(14, 'Fernando Alonso', 'ESP', 'AST'),
(18, 'Lance Stroll', 'CAN', 'AST'),
(31, 'Esteban Ocon', 'FRA', 'HAA'),
(87, 'Oliver Bearman', 'GBR', 'HAA'),
(27, 'Nico Hulkenberg', 'DEU', 'AUD'),
(5, 'Gabriel Bortoleto', 'BRA', 'AUD'),
(10, 'Pierre Gasly', 'FRA', 'ALP'),
(43, 'Franco Colapinto', 'ARG', 'ALP'),
(11, 'Sergio Perez', 'MEX', 'CAD'),
(77, 'Valtteri Bottas', 'FIN', 'CAD');

-- ==================================================
-- 5. PILOTOS ADICIONAIS PARA ATENDER AO REQUISITO
-- ==================================================
-- Numeros 100 a 105 sao identificadores internos
-- do banco, nao numeros oficiais de competicao.

INSERT INTO tb_pilotos
(numero, nome, cod_pais, sigla_equipe) VALUES
(100, 'Rafael Camara', 'BRA', NULL),
(101, 'Felipe Drugovich', 'BRA', NULL),
(102, 'Enzo Fittipaldi', 'BRA', NULL),
(103, 'Pietro Fittipaldi', 'BRA', NULL),
(104, 'Gabriele Mini', 'ITA', NULL),
(105, 'Leonardo Fornaroli', 'ITA', NULL);

-- Total: 28 pilotos
-- Brasileiros: 5
-- Italianos: 3
-- Franceses: 3

-- ==================================================
-- 6. CADASTRO DE CORRIDAS
-- ==================================================

INSERT INTO tb_corridas
(sigla_gp, nome_gp, cod_pais, qtd_voltas) VALUES
('AUS', 'GP da Australia', 'AUS', 58),
('CHN', 'GP da China', 'CHN', 56),
('JPN', 'GP do Japao', 'JPN', 53),
('BHR', 'GP do Bahrein', 'BHR', 57),
('SAU', 'GP da Arabia Saudita', 'SAU', 50),
('MCO', 'GP de Monaco', 'MCO', 78),
('ESP', 'GP da Espanha', 'ESP', 66),
('CAN', 'GP do Canada', 'CAN', 70),
('GBR', 'GP da Gra-Bretanha', 'GBR', 52),
('ITA', 'GP da Italia', 'ITA', 53);

-- ==================================================
-- 7. CADASTRO DE PARTICIPANTES
-- ==================================================
-- Posicoes de largada ilustrativas para o exercicio.

INSERT INTO tb_participantes
(sigla_gp, num_piloto, posicao_largada) VALUES
('AUS', 1, 1),
('AUS', 81, 2),
('AUS', 63, 3),
('AUS', 12, 4),
('AUS', 3, 5),
('AUS', 6, 6),
('AUS', 16, 7),
('AUS', 44, 8),
('AUS', 55, 9),
('AUS', 23, 10),
('AUS', 30, 11),
('AUS', 41, 12),
('AUS', 14, 13),
('AUS', 18, 14),
('AUS', 31, 15),
('AUS', 87, 16),
('AUS', 27, 17),
('AUS', 5, 18),
('AUS', 10, 19),
('AUS', 43, 20),
('AUS', 11, 21),
('AUS', 77, 22);

-- ==================================================
-- 8. PREENCHER OS SALARIOS DOS PILOTOS
-- ==================================================
-- Valores ficticios para fins academicos.
-- Valores expressos em unidades monetarias.


UPDATE tb_pilotos
SET salario = CASE numero
    WHEN 1   THEN 120000.00
    WHEN 81  THEN 95000.00
    WHEN 63  THEN 85000.00
    WHEN 12  THEN 70000.00
    WHEN 3   THEN 100000.00
    WHEN 6   THEN 78000.00
    WHEN 16  THEN 60000.00
    WHEN 44  THEN 88000.00
    WHEN 55  THEN 95000.00
    WHEN 23  THEN 110000.00
    WHEN 30  THEN 72000.00
    WHEN 41  THEN 65000.00
    WHEN 14  THEN 115000.00
    WHEN 18  THEN 75000.00
    WHEN 31  THEN 80000.00
    WHEN 87  THEN 70000.00
    WHEN 27  THEN 90000.00
    WHEN 5   THEN 75000.00
    WHEN 10  THEN 85000.00
    WHEN 43  THEN 50000.00
    WHEN 11  THEN 90000.00
    WHEN 77  THEN 80000.00
    WHEN 100 THEN 30000.00
    WHEN 101 THEN 40000.00
    WHEN 102 THEN 25000.00
    WHEN 103 THEN 25000.00
    WHEN 104 THEN 35000.00
    WHEN 105 THEN 35000.00
    ELSE salario
END
WHERE numero IN (
    1, 81, 63, 12, 3, 6, 16, 44, 55, 23,
    30, 41, 14, 18, 31, 87, 27, 5, 10, 43,
    11, 77, 100, 101, 102, 103, 104, 105
);

-- ==================================================
-- 9. CONFERIR QUANTIDADE DE REGISTROS
-- ==================================================

SELECT COUNT(*) AS quantidade_de_paises
FROM tb_paises;

SELECT COUNT(*) AS quantidade_de_equipes
FROM tb_equipes;

SELECT COUNT(*) AS quantidade_de_pilotos
FROM tb_pilotos;

SELECT COUNT(*) AS quantidade_de_corridas
FROM tb_corridas;

SELECT COUNT(*) AS quantidade_de_participantes
FROM tb_participantes;

-- ==================================================
-- ITEM 3: PAISES QUE COMEÇAM COM B E TERMINAM COM L
-- ==================================================

SELECT nome
FROM tb_paises
WHERE nome LIKE 'B%l';

-- ==================================================
-- ITEM 4: PILOTOS DO BRASIL, ITALIA E FRANCA
-- ==================================================

SELECT p.nome AS piloto, pa.nome AS pais
FROM tb_pilotos p
INNER JOIN tb_paises pa
    ON p.cod_pais = pa.codigo
WHERE p.cod_pais IN ('BRA', 'ITA', 'FRA')
ORDER BY pa.nome, p.nome;

-- ==================================================
-- ITEM 5: LISTAR NOMES DOS PILOTOS
-- ==================================================

SELECT nome
FROM tb_pilotos
ORDER BY nome;

-- ==================================================
-- ITEM 6: GPs E QUANTIDADE DE VOLTAS COM ALIAS
-- ==================================================

SELECT
    nome_gp AS 'Nome do Grande Premio',
    qtd_voltas AS 'Total de Voltas'
FROM tb_corridas;

-- ==================================================
-- ITEM 7: NOMES DOS PILOTOS E SEUS PAISES
-- ==================================================

SELECT
    p.nome AS piloto,
    pa.nome AS pais
FROM tb_pilotos p
INNER JOIN tb_paises pa
    ON p.cod_pais = pa.codigo
ORDER BY p.nome;

-- ==================================================
-- ITEM 10: SALARIOS ENTRE 70 MIL E 100 MIL
-- ==================================================

SELECT nome, salario
FROM tb_pilotos
WHERE salario BETWEEN 70000 AND 100000
ORDER BY salario;

-- ==================================================
-- ITEM 11: MEDIA SALARIAL POR COD_PAIS
-- ==================================================

SELECT
    cod_pais,
    AVG(salario) AS media_salarial
FROM tb_pilotos
GROUP BY cod_pais
ORDER BY cod_pais;

-- ==================================================
-- ITEM 12: SALARIOS DISTINTOS EM ORDEM CRESCENTE
-- ==================================================

SELECT DISTINCT salario
FROM tb_pilotos
WHERE salario IS NOT NULL
ORDER BY salario ASC;
