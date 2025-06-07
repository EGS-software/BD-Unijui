# 📊 Modelagem de Banco de Dados – Corretora Digital  
**Universidade Regional do Noroeste do Estado do Rio Grande do Sul – UNIJUÍ**  
**Disciplina:** Banco de Dados  
**Professor:** Prof. Rafael Barasuol Rohden  
**Grupo:** 3

## 📌 Descrição do Projeto

Este repositório contém a modelagem completa de um banco de dados desenvolvida como parte do trabalho acadêmico da disciplina de Banco de Dados. O tema proposto envolve a criação de um sistema para uma **corretora digital**, com funcionalidades de **operações financeiras** e **investimentos**.

O objetivo principal é aplicar técnicas de modelagem de banco de dados para representar, estruturar e implementar as operações de uma corretora digital de forma eficiente, íntegra e normalizada.

## 🎯 Objetivos

- Modelar os dados de uma corretora digital que realiza transações financeiras e oferece produtos de investimento.
- Criar o Modelo Entidade-Relacionamento (ER).
- Desenvolver o Modelo Lógico (relacional).
- Implementar o Modelo Físico com SQL.
- Preencher as tabelas com ao menos 20 registros.
- Criar consultas SQL que respondam a perguntas de negócio específicas.

## 🧩 Estrutura da Modelagem

### 1. Modelo Entidade-Relacionamento (ER)
- Identificação das entidades: Usuário, Conta, Transação, Investimento, Produto Financeiro, Rendimento, etc.
- Definição de atributos e relacionamentos entre as entidades.
- Representação de cardinalidades e integridade referencial.
- Diagrama ER incluso no repositório.  

### 2. Modelo Lógico
- Conversão do modelo ER para o modelo relacional.
- Definição de tabelas, atributos, chaves primárias e estrangeiras.
- Normalização das tabelas.  

### 3. Modelo Físico
- Implementação do banco em SQL.
- Criação de constraints, índices e regras de integridade.
- Inclusão de dados: ao menos 20 registros por tabela.

## 🔍 Principais Entidades

| Entidade              | Descrição                                                                 |
|-----------------------|--------------------------------------------------------------------------|
| **Usuário**           | Representa os clientes da corretora.                                     |
| **Conta**             | Associada a um usuário, contém saldo e histórico de transações.          |
| **Transação**         | Registra depósitos, retiradas e transferências.                          |
| **Tipo de Transação** | Define o tipo de operação financeira.                                    |
| **Investimento**      | Registra as aplicações dos usuários em produtos financeiros.             |
| **Produto Financeiro**| Representa produtos como LCA, LCI e CDB.                                 |
| **Rendimento**        | Histórico de ganhos dos investimentos realizados.                        |

## 📄 Consultas SQL Sugeridas

1. Listar todos os usuários cadastrados na corretora.  
2. Exibir o saldo de uma conta específica.  
3. Mostrar todas as transações realizadas por um usuário em um determinado período.  
4. Identificar quais usuários possuem investimentos em um determinado produto financeiro.  
5. Calcular o total investido por cada usuário.  
6. Exibir o rendimento acumulado de um investimento específico.  
7. Contar quantas transações de cada tipo foram realizadas no último mês.  
8. Listar os produtos financeiros mais populares com base na quantidade de investidores.  
9. Mostrar o histórico de transações ordenado por data para um determinado usuário.  
10. Exibir os usuários que possuem mais de um investimento ativo.

## 👥 Autores

- João Alfredo Williges Cunha  
- João Victor Benetti  
- Mauro Roncata  

---
