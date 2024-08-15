-- Criando o keyspace
CREATE KEYSPACE IF NOT EXISTS sapataria
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 3};

USE sapataria;

-- Tabela de clientes
CREATE TABLE IF NOT EXISTS clientes (
    id_cliente UUID PRIMARY KEY,
    nome text,
    cpf text,
    endereco text,
    cep text,
    email text,
    telefones map<text, text>
);

-- Tabela de pedidos
CREATE TABLE IF NOT EXISTS pedidos (
    id_pedido UUID,
    cliente text,
    endereco text,
    cep text,
    item text,
    qtde int,
    valor_pago decimal,
    PRIMARY KEY ((id_pedido))
);

-- Tabela de produtos
CREATE TABLE IF NOT EXISTS produtos (
    id_produto UUID PRIMARY KEY,
    codigo text,
    nome text,
    modelo text,
    fabricante text,
    estoque map<text, map<text, int>>
);

-- Índices secundários para busca
CREATE INDEX IF NOT EXISTS ON clientes (cpf);
CREATE INDEX IF NOT EXISTS ON produtos (codigo);
