-- Listar todos os usuários cadastrados na corretora:
SELECT * FROM usuario;

-- Exibir o saldo de uma conta específica:
SELECT saldo
FROM conta
WHERE id_conta = 9; -- O Número representa o ID de cada conta.

-- Mostrar todas as transações realizadas por um usuário em um determinado período:
SELECT t.*
FROM transacao t
JOIN conta c ON t.id_conta = c.id_conta
WHERE c.id_usuario = 9 -- ID do usuário específico.
  AND t.id_conta = c.id_conta
  AND c.DataTrasacao BETWEEN '2025-01-06' AND '2025-01-18'; -- Período selecionado.
  
-- Identificar quais usuários possuem investimentos em um determinado produto financeiro:
SELECT DISTINCT u.*
FROM usuario u
JOIN conta c ON u.id_usuario = c.id_usuario
JOIN investimento i ON c.id_conta = i.id_conta
WHERE i.id_produto = 6; -- ID do produto financeiro desejado.

-- Calcular o total investido por cada usuário:
SELECT u.id_usuario, u.nome, SUM(i.valor_investido) AS total_investido
FROM usuario u
JOIN conta c ON u.id_usuario = c.id_usuario
JOIN investimento i ON c.id_conta = i.id_conta
GROUP BY u.id_usuario, u.nome;

-- Exibir o rendimento acumulado de um investimento específico:
SELECT i.id_investimento, SUM(r.valor_rendido) AS rendimento_acumulado
FROM investimento i
JOIN rendimento r ON i.id_investimento = r.id_investimento
WHERE i.id_investimento = 3 -- Aqui colocamos o número 3 pois é um investimento específico.
GROUP BY i.id_investimento;

--  Contar quantas transações de cada tipo foram realizadas no último mês:
SELECT t.id_tip, tt.descricao, COUNT(*) AS total_transacoes
FROM transacao t
JOIN tipotransacao tt ON t.id_tip = tt.id_tip
JOIN conta c ON t.id_conta = c.id_conta
WHERE c.DataTrasacao >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY t.id_tip, tt.descricao;

-- Listar os produtos financeiros mais populares com base na quantidade de investidores:
SELECT pf.id_produto, pf.nome, COUNT(DISTINCT i.id_conta) AS total_investidores
FROM produtofinanceiro pf
JOIN investimento i ON pf.id_produto = i.id_produto
GROUP BY pf.id_produto, pf.nome
ORDER BY total_investidores DESC;

-- Mostrar o histórico de transações ordenado por data para um determinado usuário:
SELECT t.*
FROM transacao t
JOIN conta c ON t.id_conta = c.id_conta
WHERE c.id_usuario = 5 -- No caso aqui o usuário escolhido foi de ID 5.
ORDER BY c.DataTrasacao;

-- Exibir os usuários que possuem mais de um investimento ativo:
SELECT u.id_usuario, u.nome, COUNT(i.id_investimento) AS investimentos_ativos
FROM usuario u
JOIN conta c ON u.id_usuario = c.id_usuario
JOIN investimento i ON c.id_conta = i.id_conta
GROUP BY u.id_usuario, u.nome
HAVING COUNT(i.id_investimento) > 1;