CREATE DATABASE db_reservaCar;

USE db_reservaCar;

CREATE TABLE tb_sedes (
  id_sede INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nome_sede VARCHAR(50) NOT NULL,
  endereco_sede VARCHAR(80),
  telefone VARCHAR(14) NOT NULL,
  multa DECIMAL(8,2) NOT NULL
);

CREATE TABLE tb_carros (
  placa VARCHAR(7) NOT NULL,
  id_classe INTEGER not NULL,
  modelo VARCHAR(50) NOT NULL,
  quilometragem DECIMAL(8,2) NOT NULL,
  descricao VARCHAR (120) NOT NULL,
  
  PRIMARY KEY(placa)
);

CREATE TABLE tb_class_carro (
  id_classe INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nome VARCHAR(50) NOT NULL,
  valorDiaria DECIMAL(8,2) NOT NULL
);

CREATE TABLE tb_reserva (
  numero INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  id_sede INTEGER NOT NULL,
  placa VARCHAR(7) NOT NULL,
  id_cliente INTEGER NOT NULL,
  quantidadeDiarias INTEGER NOT NULL,
  dataLocacao DATE NOT NULL,
  dataRetorno DATE NOT NULL,
  quilometroRodado DECIMAL(8,2) NOT NULL,
  multa DECIMAL(8,2),
  situacao VARCHAR(120),
  valorTotal DECIMAL(8,2),
  
  CHECK (dataRetorno >= dataLocacao)
);

CREATE TABLE tb_cliente (
  id_cliente INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nome_cliente VARCHAR(100) NOT NULL,
  CPF VARCHAR(14) UNIQUE NOT NULL,
  numeroCNH VARCHAR(11) UNIQUE NOT NULL,
  validadeCNH DATE NOT NULL,
  categoriaCNH VARCHAR(3) NOT NULL,
  
  CHECK (categoriaCNH IN ('ACC', 'A', 'B', 'C', 'D', 'E'))
);

ALTER TABLE tb_carros ADD FOREIGN KEY (id_classe) REFERENCES tb_class_carro(id_classe);
ALTER TABLE tb_reserva ADD FOREIGN KEY (id_sede) REFERENCES tb_sedes(id_sede);
ALTER TABLE tb_reserva ADD FOREIGN KEY (placa) REFERENCES tb_carros(placa);
ALTER TABLE tb_reserva ADD FOREIGN KEY (id_cliente) REFERENCES tb_cliente(id_cliente);
