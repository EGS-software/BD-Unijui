drop database if exists corretoradigital;
CREATE database corretoradigital;
use corretoradigital;

DROP TABLE IF EXISTS usuario;
CREATE TABLE usuario (
id_usuario INTEGER PRIMARY KEY,
nome varchar(40),
cpf varchar(11)
);

DROP TABLE IF EXISTS conta;
create table conta (
id_conta int primary key,
saldo float,
data_invest date,
DataTrasacao date,
id_usuario integer
);


DROP TABLE IF EXISTS transacao;
create table transacao(
id_transacao int primary key,
valor float,
id_tip int,
id_conta int
);

DROP TABLE IF EXISTS tipotrasacao;
create table tipotransacao(
id_tip int primary key,
descricao varchar(99)
);

DROP TABLE IF EXISTS investimento;
create table investimento(
id_investimento int primary key,
valor_investido float,
id_conta int,
id_produto int,
data_rendi date
);

DROP TABLE IF EXISTS rendimento;
create table rendimento(
id_rendimento int primary key,
valor_rendido float,
id_investimento int
);
 
DROP TABLE IF EXISTS produtofinanceiro;
create table produtofinanceiro(
nome varchar(40),
vencimento date,
id_produto int primary key,
taxa_juros float,
tipo_invest varchar(20)
);

alter table transacao add foreign key (id_tip) references tipotransacao(id_tip);
alter table conta add foreign key (id_usuario) references usuario(id_usuario);
alter table investimento add foreign key (id_conta) references conta(id_conta);
alter table investimento add foreign key (id_produto) references produtofinanceiro(id_produto);
alter table rendimento add foreign key (id_investimento) references investimento(id_investimento);


