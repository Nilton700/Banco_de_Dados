# 🚗 Sistema de Reserva de Carros — Banco de Dados

## 📚 Sobre o Projeto

Este projeto foi desenvolvido como atividade acadêmica da disciplina **Banco de Dados**, ministrada pela professora **Josyane Lannes**, no curso de **Engenharia de Software**.

A proposta consiste em simular a estrutura de um banco de dados para um **Sistema de Reserva de Carros**, permitindo organizar e relacionar informações sobre sedes, veículos, classes de carros, clientes e reservas.

Para a elaboração do modelo, utilizamos como referência o material **ARTIGO-SQL-MAGAZINE_074BD**, que serviu de base para a construção da estrutura do banco de dados.

O projeto foi desenvolvido utilizando **MySQL** e contempla exclusivamente a linguagem **DDL (Data Definition Language)**.

## 🎯 Objetivo

O principal objetivo é desenvolver a estrutura de um banco de dados relacional capaz de representar as operações de um sistema de locação de veículos.

A estrutura foi planejada para organizar as informações e estabelecer relacionamentos entre as entidades, garantindo a integridade referencial e a consistência dos dados.

## 🗂️ Estrutura do Banco de Dados

O banco de dados foi denominado `db_reservaCar` e é composto por cinco tabelas:

| Tabela | Descrição |
|---|---|
| `tb_sedes` | Armazena informações sobre as sedes da locadora. |
| `tb_carros` | Armazena os dados dos veículos disponíveis no sistema. |
| `tb_class_carro` | Registra as classes dos veículos e seus respectivos valores de diária. |
| `tb_cliente` | Armazena informações pessoais e dados da CNH dos clientes. |
| `tb_reserva` | Registra as reservas, relacionando clientes, veículos e sedes. |

## 🔗 Relacionamentos

Para estabelecer a conexão entre as tabelas, foram utilizadas chaves primárias (PRIMARY KEY) e chaves estrangeiras (FOREIGN KEY).

Os relacionamentos definidos são:

- **tb_class_carro → tb_carros:** cada veículo está associado a uma classe de carro.
- **tb_sedes → tb_reserva:** cada reserva está vinculada a uma sede.
- **tb_carros → tb_reserva:** cada reserva identifica o veículo reservado.
- **tb_cliente → tb_reserva:** cada reserva identifica o cliente responsável.

Esses relacionamentos permitem organizar os dados de maneira estruturada e evitar referências a registros inexistentes.

## 🛠️ Tecnologias e Recursos Utilizados

- **MySQL:** Sistema Gerenciador de Banco de Dados (SGBD) utilizado no desenvolvimento.
- **SQL:** Linguagem utilizada para definir a estrutura do banco.
- **DDL (Data Definition Language):** conjunto de comandos utilizado para criar e estruturar o banco de dados.

### Principais comandos e restrições DDL

| Comando / Restrição | Finalidade |
|---|---|
| `CREATE DATABASE` | Criação do banco de dados. |
| `USE` | Seleção do banco de dados. |
| `CREATE TABLE` | Criação das tabelas. |
| `ALTER TABLE` | Alteração da estrutura das tabelas. |
| `PRIMARY KEY` | Definição das chaves primárias. |
| `FOREIGN KEY` | Estabelecimento dos relacionamentos. |
| `AUTO_INCREMENT` | Geração automática de identificadores. |
| `NOT NULL` | Impede valores nulos em campos obrigatórios. |
| `UNIQUE` | Impede valores duplicados em determinadas colunas. |
| `CHECK` | Estabelece condições para a inserção de dados. |

## ▶️ Como Utilizar

Para executar o projeto, é necessário possuir o **MySQL** instalado ou utilizar um ambiente que disponibilize esse SGBD.

1. Clone este repositório ou faça o download dos arquivos.
2. Abra o MySQL Workbench ou outro ambiente compatível com MySQL.
3. Localize e abra o arquivo SQL do projeto.
4. Execute o script para criar o banco de dados e suas respectivas tabelas.
5. Verifique a criação das cinco tabelas e dos relacionamentos definidos.

Após a execução, o banco de dados estará estruturado para representar o sistema de reserva de carros.

## 📖 Contexto Acadêmico

**Curso:** Engenharia de Software  
**Disciplina:** Banco de Dados  
**Professora:** Josyane Lannes  
**Linguagem:** SQL  
**SGBD:** MySQL  
**Conteúdo aplicado:** DDL (Data Definition Language)  
**Referência de desenvolvimento:** ARTIGO-SQL-MAGAZINE_074BD

## 👨‍💻 Autor

- Nilton Alves dos Santos - Estudante de Engenharia de Software

---

*Projeto acadêmico desenvolvido com o objetivo de aplicar conceitos de modelagem e definição de estruturas de bancos de dados relacionais utilizando MySQL.*
