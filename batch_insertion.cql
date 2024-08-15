-- Inserções em lote para a tabela clientes
BEGIN BATCH

INSERT INTO clientes (id_cliente, nome, cpf, endereco, cep, email, telefones)
VALUES (uuid(), 'João Silva', '123.456.789-00', 'Rua A, 123', '12345-678', 'joao@email.com', {'residencial': '1111-1111', 'celular': '99999-9999'});

INSERT INTO clientes (id_cliente, nome, cpf, endereco, cep, email, telefones)
VALUES (uuid(), 'Maria Santos', '987.654.321-00', 'Av B, 456', '87654-321', 'maria@email.com', {'residencial': '2222-2222', 'celular': '88888-8888'});

INSERT INTO clientes (id_cliente, nome, cpf, endereco, cep, email, telefones)
VALUES (uuid(), 'Pedro Oliveira', '111.222.333-44', 'Rua C, 789', '11111-222', 'pedro@email.com', {'residencial': '3333-3333', 'celular': '77777-7777'});

INSERT INTO clientes (id_cliente, nome, cpf, endereco, cep, email, telefones)
VALUES (uuid(), 'Ana Rodrigues', '444.555.666-77', 'Av D, 1010', '44444-555', 'ana@email.com', {'residencial': '4444-4444', 'celular': '66666-6666'});

INSERT INTO clientes (id_cliente, nome, cpf, endereco, cep, email, telefones)
VALUES (uuid(), 'Carlos Ferreira', '777.888.999-00', 'Rua E, 1212', '77777-888', 'carlos@email.com', {'residencial': '5555-5555', 'celular': '55555-5555'});

INSERT INTO clientes (id_cliente, nome, cpf, endereco, cep, email, telefones)
VALUES (uuid(), 'Mariana Costa', '222.333.444-55', 'Av F, 1414', '22222-333', 'mariana@email.com', {'residencial': '6666-6666', 'celular': '44444-4444'});

INSERT INTO clientes (id_cliente, nome, cpf, endereco, cep, email, telefones)
VALUES (uuid(), 'Lucas Pereira', '555.666.777-88', 'Rua G, 1616', '55555-666', 'lucas@email.com', {'residencial': '7777-7777', 'celular': '33333-3333'});

INSERT INTO clientes (id_cliente, nome, cpf, endereco, cep, email, telefones)
VALUES (uuid(), 'Juliana Alves', '888.999.000-11', 'Av H, 1818', '88888-999', 'juliana@email.com', {'residencial': '8888-8888', 'celular': '22222-2222'});

INSERT INTO clientes (id_cliente, nome, cpf, endereco, cep, email, telefones)
VALUES (uuid(), 'Roberto Souza', '333.444.555-66', 'Rua I, 2020', '33333-444', 'roberto@email.com', {'residencial': '9999-9999', 'celular': '11111-1111'});

INSERT INTO clientes (id_cliente, nome, cpf, endereco, cep, email, telefones)
VALUES (uuid(), 'Fernanda Lima', '666.777.888-99', 'Av J, 2222', '66666-777', 'fernanda@email.com', {'residencial': '1010-1010', 'celular': '10101-1010'});

APPLY BATCH;

-- Inserções em lote para a tabela pedidos
BEGIN BATCH

INSERT INTO pedidos (id_pedido, cliente, endereco, cep, item, qtde, valor_pago)
VALUES (uuid(), 'João Silva', 'Rua A, 123', '12345-678', 'Produto 1', 2, 100.00);

INSERT INTO pedidos (id_pedido, cliente, endereco, cep, item, qtde, valor_pago)
VALUES (uuid(), 'Maria Santos', 'Av B, 456', '87654-321', 'Produto 2', 1, 50.00);

INSERT INTO pedidos (id_pedido, cliente, endereco, cep, item, qtde, valor_pago)
VALUES (uuid(), 'Pedro Oliveira', 'Rua C, 789', '11111-222', 'Produto 3', 3, 150.00);

INSERT INTO pedidos (id_pedido, cliente, endereco, cep, item, qtde, valor_pago)
VALUES (uuid(), 'Ana Rodrigues', 'Av D, 1010', '44444-555', 'Produto 4', 1, 75.00);

INSERT INTO pedidos (id_pedido, cliente, endereco, cep, item, qtde, valor_pago)
VALUES (uuid(), 'Carlos Ferreira', 'Rua E, 1212', '77777-888', 'Produto 5', 2, 120.00);

INSERT INTO pedidos (id_pedido, cliente, endereco, cep, item, qtde, valor_pago)
VALUES (uuid(), 'Mariana Costa', 'Av F, 1414', '22222-333', 'Produto 6', 1, 80.00);

INSERT INTO pedidos (id_pedido, cliente, endereco, cep, item, qtde, valor_pago)
VALUES (uuid(), 'Lucas Pereira', 'Rua G, 1616', '55555-666', 'Produto 7', 4, 200.00);

INSERT INTO pedidos (id_pedido, cliente, endereco, cep, item, qtde, valor_pago)
VALUES (uuid(), 'Juliana Alves', 'Av H, 1818', '88888-999', 'Produto 8', 2, 160.00);

INSERT INTO pedidos (id_pedido, cliente, endereco, cep, item, qtde, valor_pago)
VALUES (uuid(), 'Roberto Souza', 'Rua I, 2020', '33333-444', 'Produto 9', 1, 90.00);

INSERT INTO pedidos (id_pedido, cliente, endereco, cep, item, qtde, valor_pago)
VALUES (uuid(), 'Fernanda Lima', 'Av J, 2222', '66666-777', 'Produto 10', 3, 180.00);

APPLY BATCH;


