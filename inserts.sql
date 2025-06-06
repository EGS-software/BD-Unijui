	INSERT INTO usuario (id_usuario, nome, cpf) VALUES
	(1, 'Ana Lima', '12345678901'),
	(2, 'Bruno Silva', '12345678902'),
	(3, 'Carlos Souza', '12345678903'),
	(4, 'Daniela Rocha', '12345678904'),
	(5, 'Eduardo Melo', '12345678905'),
	(6, 'Fernanda Luz', '12345678906'),
	(7, 'Gustavo Nunes', '12345678907'),
	(8, 'Helena Costa', '12345678908'),
	(9, 'Igor Santos', '12345678909'),
	(10, 'Joana Dias', '12345678910'),
	(11, 'Kleber Lima', '12345678911'),
	(12, 'Larissa Souza', '12345678912'),
	(13, 'Marcelo Rocha', '12345678913'),
	(14, 'Natália Melo', '12345678914'),
	(15, 'Otávio Luz', '12345678915'),
	(16, 'Paula Nunes', '12345678916'),
	(17, 'Quésia Costa', '12345678917'),
	(18, 'Rafael Santos', '12345678918'),
	(19, 'Simone Dias', '12345678919'),
	(20, 'Thiago Lima', '12345678920');

	INSERT INTO conta (id_conta, saldo, data_invest, DataTrasacao, id_usuario) VALUES
	(1, 1000, '2025-01-01', '2025-01-10', 1),
	(2, 1500, '2025-01-02', '2025-01-11', 2),
	(3, 2000, '2025-01-03', '2025-01-12', 3),
	(4, 2500, '2025-01-04', '2025-01-13', 4),
	(5, 3000, '2025-01-05', '2025-01-14', 5),
	(6, 1200, '2025-01-06', '2025-01-15', 6),
	(7, 1800, '2025-01-07', '2025-01-16', 7),
	(8, 2200, '2025-01-08', '2025-01-17', 8),
	(9, 1700, '2025-01-09', '2025-01-18', 9),
	(10, 2600, '2025-01-10', '2025-01-19', 10),
	(11, 1100, '2025-01-11', '2025-01-20', 11),
	(12, 1300, '2025-01-12', '2025-01-21', 12),
	(13, 1400, '2025-01-13', '2025-01-22', 13),
	(14, 1900, '2025-01-14', '2025-01-23', 14),
	(15, 2100, '2025-01-15', '2025-01-24', 15),
	(16, 2300, '2025-01-16', '2025-01-25', 16),
	(17, 2700, '2025-01-17', '2025-01-26', 17),
	(18, 2900, '2025-01-18', '2025-01-27', 18),
	(19, 3100, '2025-01-19', '2025-01-28', 19),
	(20, 3300, '2025-01-20', '2025-01-29', 20);

	INSERT INTO tipotransacao (id_tip, descricao) VALUES
	(1, 'Depósito'),
	(2, 'Saque'),
	(3, 'Transferência'),
	(4, 'Aplicação'),
	(5, 'Resgate'),
	(6, 'Pagamento'),
	(7, 'Recebimento'),
	(8, 'Tarifa'),
	(9, 'Crédito'),
	(10, 'Débito'),
	(11, 'Investimento automático'),
	(12, 'Bônus'),
	(13, 'Taxa de serviço'),
	(14, 'Cobrança'),
	(15, 'Compra'),
	(16, 'Venda'),
	(17, 'Reembolso'),
	(18, 'Juros'),
	(19, 'Multa'),
	(20, 'Outros');

	INSERT INTO transacao (id_transacao, valor, id_tip, id_conta) VALUES
	(1, 500, 1, 1),
	(2, 200, 2, 2),
	(3, 1000, 3, 3),
	(4, 150, 4, 4),
	(5, 300, 5, 5),
	(6, 450, 6, 6),
	(7, 100, 7, 7),
	(8, 75, 8, 8),
	(9, 250, 9, 9),
	(10, 600, 10, 10),
	(11, 350, 11, 11),
	(12, 800, 12, 12),
	(13, 95, 13, 13),
	(14, 180, 14, 14),
	(15, 500, 15, 15),
	(16, 400, 16, 16),
	(17, 700, 17, 17),
	(18, 60, 18, 18),
	(19, 120, 19, 19),
	(20, 50, 20, 20);

	INSERT INTO produtofinanceiro (nome, vencimento, id_produto, taxa_juros, tipo_invest) VALUES
	('Tesouro Selic', '2027-01-01', 1, 0.13, 'Renda Fixa'),
	('Tesouro IPCA+', '2028-01-01', 2, 0.15, 'Renda Fixa'),
	('LCI Banco A', '2026-01-01', 3, 0.12, 'Imobiliário'),
	('LCA Banco B', '2026-06-01', 4, 0.11, 'Agronegócio'),
	('CDB Banco C', '2025-12-01', 5, 0.14, 'Renda Fixa'),
	('Fundo Ações', '2030-01-01', 6, 0.2, 'Variável'),
	('Fundo Multimercado', '2029-01-01', 7, 0.17, 'Misto'),
	('Debênture XP', '2031-01-01', 8, 0.16, 'Privado'),
	('Cripto Fund', '2035-01-01', 9, 0.25, 'Digital'),
	('REITs USA', '2032-01-01', 10, 0.18, 'Internacional'),
	('ETF IBOV', '2030-01-01', 11, 0.21, 'Índice'),
	('ETF S&P500', '2030-01-01', 12, 0.22, 'Internacional'),
	('Previdência VGBL', '2045-01-01', 13, 0.1, 'Previdência'),
	('Fundo Cambial', '2033-01-01', 14, 0.13, 'Câmbio'),
	('Fundo Imobiliário', '2034-01-01', 15, 0.12, 'FIIs'),
	('Fundo ESG', '2031-01-01', 16, 0.19, 'Sustentável'),
	('Crédito Privado', '2027-06-01', 17, 0.15, 'Privado'),
	('Fundo Quantitativo', '2036-01-01', 18, 0.23, 'Algorítmico'),
	('ETF Bitcoin', '2037-01-01', 19, 0.3, 'Digital'),
	('Fundo Imobiliário XP', '2030-06-01', 20, 0.14, 'FIIs');

	INSERT INTO investimento (id_investimento, valor_investido, id_conta, id_produto, data_rendi) VALUES
	(1, 500, 1, 1, '2025-01-31'),
	(2, 1000, 2, 2, '2025-02-01'),
	(3, 1200, 3, 3, '2025-02-02'),
	(4, 800, 4, 4, '2025-02-03'),
	(5, 650, 5, 5, '2025-02-04'),
	(6, 700, 6, 6, '2025-02-05'),
	(7, 900, 7, 7, '2025-02-06'),
	(8, 1100, 8, 8, '2025-02-07'),
	(9, 1300, 9, 9, '2025-02-08'),
	(10, 1400, 10, 10, '2025-02-09'),
	(11, 950, 11, 11, '2025-02-10'),
	(12, 1250, 12, 12, '2025-02-11'),
	(13, 1350, 13, 13, '2025-02-12'),
	(14, 1450, 14, 14, '2025-02-13'),
	(15, 1550, 15, 15, '2025-02-14'),
	(16, 1650, 16, 16, '2025-02-15'),
	(17, 1750, 17, 17, '2025-02-16'),
	(18, 1850, 18, 18, '2025-02-17'),
	(19, 1950, 19, 19, '2025-02-18'),
	(20, 2050, 20, 20, '2025-02-19');

	INSERT INTO rendimento (id_rendimento, valor_rendido, id_investimento) VALUES
	(1, 25, 1),
	(2, 50, 2),
	(3, 60, 3),
	(4, 40, 4),
	(5, 32, 5),
	(6, 35, 6),
	(7, 45, 7),
	(8, 55, 8),
	(9, 65, 9),
	(10, 70, 10),
	(11, 48, 11),
	(12, 62, 12),
	(13, 67, 13),
	(14, 72, 14),
	(15, 77, 15),
	(16, 82, 16),
	(17, 87, 17),
	(18, 92, 18),
	(19, 97, 19),
	(20, 102, 20);

----- Transaçoes diferentes:
-- Novas contas (não conflitam com as já existentes: id_conta de 21 a 24, usuários de 1 a 4 já existem)
INSERT INTO conta (id_conta, saldo, data_invest, DataTrasacao, id_usuario) VALUES
(21, 5000, '2025-05-10', '2025-06-01', 1),
(22, 6000, '2025-05-12', '2025-06-02', 2),
(23, 7000, '2025-05-14', '2025-06-03', 3),
(24, 8000, '2025-05-16', '2025-06-04', 4);

-- Novas transações, usando tipos já existentes e contas recém-criadas, para datas no último mês
INSERT INTO transacao (id_transacao, valor, id_tip, id_conta) VALUES
(21, 100, 1, 21),      -- Depósito
(22, 50, 2, 22),       -- Saque
(23, 200, 3, 23),      -- Transferência
(24, 75, 4, 24),       -- Aplicação

-- Para mostrar repetição de tipos:
(25, 180, 1, 22),      -- Depósito em outra conta
(26, 90, 2, 23),       -- Saque em outra conta
(27, 220, 3, 24),      -- Transferência em outra conta
(28, 60, 4, 21);       -- Aplicação em outra conta

----- Usuários com múltiplos investimentos:
-- Usuário 1 (Ana Lima) já tem conta 1, vamos dar uma segunda conta a ela
INSERT INTO conta (id_conta, saldo, data_invest, DataTrasacao, id_usuario) VALUES
(25, 1500, '2025-03-01', '2025-06-05', 1);

-- Usuário 1 com dois investimentos ativos (um em cada conta, produtos diferentes)
INSERT INTO investimento (id_investimento, valor_investido, id_conta, id_produto, data_rendi) VALUES
(21, 800, 1, 2, '2025-06-06'),
(22, 900, 25, 3, '2025-06-06');

-- Usuário 2 (Bruno Silva) já tem conta 2, vamos dar uma segunda conta a ele
INSERT INTO conta (id_conta, saldo, data_invest, DataTrasacao, id_usuario) VALUES
(26, 1800, '2025-04-01', '2025-06-05', 2);

-- Usuário 2 com dois investimentos ativos (um em cada conta, produtos diferentes)
INSERT INTO investimento (id_investimento, valor_investido, id_conta, id_produto, data_rendi) VALUES
(23, 1100, 2, 4, '2025-06-06'),
(24, 1200, 26, 5, '2025-06-06');

-- Usuário 3 (Carlos Souza) usando somente uma conta, mas dois investimentos diferentes
INSERT INTO investimento (id_investimento, valor_investido, id_conta, id_produto, data_rendi) VALUES
(25, 1300, 3, 6, '2025-06-06'),
(26, 1400, 3, 7, '2025-06-06');