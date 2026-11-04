# 🏎️ Sistema de Banco de Dados – Fórmula 01

## 📌 Sobre o Projeto

Este projeto foi desenvolvido como uma atividade acadêmica em grupo para a disciplina de **Banco de Dados**, do curso de **Engenharia de Software**, ministrada pela professora **Josyane Lannes**.

A atividade consiste na criação e manipulação de um banco de dados relacional utilizando **MySQL**, simulando um sistema de gerenciamento de informações da Fórmula 01.

O banco de dados permite registrar países, equipes, pilotos, corridas e participantes, estabelecendo relacionamentos entre essas informações por meio de chaves primárias e estrangeiras.

## 🎯 Objetivos

- Desenvolver um banco de dados relacional utilizando MySQL.
- Criar tabelas e estabelecer relacionamentos entre elas.
- Inserir e manipular registros relacionados ao universo da Fórmula 01.
- Aplicar consultas SQL para recuperar e organizar informações.
- Utilizar funções de agregação, filtros e ordenação.
- Compreender a aplicação prática dos comandos SQL.

## 🗂️ Estrutura do Banco de Dados

O sistema é composto por cinco tabelas principais:

| Tabela | Descrição |
|---|---|
| `tb_paises` | Armazena os países cadastrados no sistema. |
| `tb_equipes` | Registra as equipes participantes da Fórmula 01. |
| `tb_pilotos` | Armazena os dados dos pilotos e seus respectivos países e equipes. |
| `tb_corridas` | Registra os Grandes Prêmios (GPs) e suas informações. |
| `tb_participantes` | Relaciona os pilotos às corridas, armazenando informações sobre suas participações. |

As tabelas são relacionadas por meio de chaves primárias (PRIMARY KEY) e chaves estrangeiras (FOREIGN KEY), garantindo a integridade e a organização dos dados.

## 💻 Tecnologias e Recursos Utilizados

- **MySQL:** Sistema de gerenciamento de banco de dados relacional.
- **SQL:** Linguagem utilizada para criação, manipulação e consulta dos dados.
- **Comandos DDL:** Definição da estrutura do banco de dados.
- **Comandos DML:** Inserção e atualização dos registros.
- **Comandos DQL:** Consulta e recuperação de informações.

## ⚙️ Atividades Desenvolvidas

Durante o desenvolvimento do projeto, foram implementadas consultas e operações SQL para atender aos seguintes requisitos:

### 1. Inserção e população de dados
- Inserir no mínimo 5 pilotos brasileiros, 3 italianos e 2 franceses.
- Popular todas as tabelas do banco de dados.

### 2. Consultas e filtros
- Listar os países cujos nomes começam com a letra B e terminam com a letra L.
- Listar os pilotos provenientes do Brasil, Itália e França.
- Listar o nome de todos os pilotos.
- Listar os nomes dos Grandes Prêmios e suas respectivas quantidades de voltas, utilizando ALIAS.
- Listar os nomes dos pilotos e seus respectivos países.

### 3. Alteração e atualização de dados
- Adicionar o atributo `salario` à tabela `tb_pilotos`.
- Preencher o atributo de salário dos pilotos cadastrados.

### 4. Consultas com funções e condições
- Listar os pilotos cujos salários estejam entre 70 mil e 100 mil.
- Calcular a média salarial dos pilotos agrupada por código de país (`cod_pais`).
- Exibir os diferentes valores de salários cadastrados, organizados em ordem crescente.

## 📚 Conhecimentos Aplicados

O desenvolvimento deste projeto proporcionou a aplicação prática dos seguintes conceitos:

- Criação e estruturação de bancos de dados relacionais.
- Criação de tabelas e definição de atributos.
- Chaves primárias e estrangeiras.
- Relacionamentos entre tabelas.
- Inserção e atualização de registros.
- Consultas com `SELECT`, `WHERE` e `LIKE`.
- Junções entre tabelas (`JOIN`).
- Utilização de alias com `AS`.
- Funções de agregação, como `COUNT()` e `AVG()`.
- Agrupamento de resultados com `GROUP BY`.
- Eliminação de resultados duplicados com `DISTINCT`.
- Ordenação de resultados com `ORDER BY`.
- Alteração da estrutura de tabelas com `ALTER TABLE`.

## 🚀 Como Executar o Projeto

Para reproduzir o projeto em seu ambiente:

1. Instale o MySQL ou utilize um ambiente online compatível.
2. Abra o arquivo SQL disponibilizado neste repositório.
3. Execute os comandos de criação do banco de dados e das cinco tabelas.
4. Execute os comandos de inserção para popular as tabelas.
5. Execute as consultas SQL para visualizar os resultados das atividades.

**Observação:** Recomenda-se executar os comandos na ordem em que aparecem no arquivo SQL, respeitando as dependências entre as tabelas e seus relacionamentos.

## Desenvolvimento Acadêmico
  
**Disciplina:** Banco de Dados  
**Professora:** Josyane Lannes  
**Projeto:** Sistema de Banco de Dados – Fórmula 01  
**Desenvolvimento:** Trabalho realizado em grupo.

## Autores

1. Nilton Alves dos Santos - Engenharia de Software - link: https://github.com/Nilton700
   
2. Raiane Santos de Oliveira - Análise e Desenvolvimento de Sistemas - link: https://github.com/Raiane19
   
3. Arthur Ribeiro Ferreira - Engenharia de Software - link: https://github.com/arthurxfe
   
4. Daniel Ferreira dos Santos - Ciência da Computação - link: https://github.com/DanielFerreiradosSantos
   
---
*Projeto acadêmico desenvolvido com o objetivo de consolidar conhecimentos sobre modelagem, manipulação e consulta de bancos de dados relacionais utilizando MySQL.*
