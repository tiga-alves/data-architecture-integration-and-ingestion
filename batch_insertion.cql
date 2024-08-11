USE sapataria;

-- Batch para inserção de clientes
BEGIN BATCH
  INSERT INTO clientes (id_cliente, nome, cpf, endereco, cep, email, telefone) VALUES 
    (uuid(), 'João Silva', '12345678901', 'Rua A, 123', '12345678', 'joao@email.com', '11999999999');
  INSERT INTO clientes (id_cliente, nome, cpf, endereco, cep, email, telefone) VALUES 
    (uuid(), 'Maria Santos', '23456789012', 'Av. B, 456', '23456789', 'maria@email.com', '11988888888');
  INSERT INTO clientes (id_cliente, nome, cpf, endereco, cep, email, telefone) VALUES 
    (uuid(), 'Pedro Oliveira', '34567890123', 'Praça C, 789', '34567890', 'pedro@email.com', '11977777777');
  INSERT INTO clientes (id_cliente, nome, cpf, endereco, cep, email, telefone) VALUES 
    (uuid(), 'Ana Rodrigues', '45678901234', 'Rua D, 321', '45678901', 'ana@email.com', '11966666666');
  INSERT INTO clientes (id_cliente, nome, cpf, endereco, cep, email, telefone) VALUES 
    (uuid(), 'Carlos Ferreira', '56789012345', 'Av. E, 654', '56789012', 'carlos@email.com', '11955555555');
  INSERT INTO clientes (id_cliente, nome, cpf, endereco, cep, email, telefone) VALUES 
    (uuid(), 'Mariana Costa', '67890123456', 'Rua F, 987', '67890123', 'mariana@email.com', '11944444444');
  INSERT INTO clientes (id_cliente, nome, cpf, endereco, cep, email, telefone) VALUES 
    (uuid(), 'José Almeida', '78901234567', 'Av. G, 159', '78901234', 'jose@email.com', '11933333333');
  INSERT INTO clientes (id_cliente, nome, cpf, endereco, cep, email, telefone) VALUES 
    (uuid(), 'Beatriz Lima', '89012345678', 'Praça H, 753', '89012345', 'beatriz@email.com', '11922222222');
  INSERT INTO clientes (id_cliente, nome, cpf, endereco, cep, email, telefone) VALUES 
    (uuid(), 'Antônio Sousa', '90123456789', 'Rua I, 951', '90123456', 'antonio@email.com', '11911111111');
  INSERT INTO clientes (id_cliente, nome, cpf, endereco, cep, email, telefone) VALUES 
    (uuid(), 'Fernanda Gomes', '01234567890', 'Av. J, 357', '01234567', 'fernanda@email.com', '11900000000');
APPLY BATCH;

-- Script de inserção para a tabela de pedidos
BEGIN BATCH
    INSERT INTO pedidos (id_pedido, cliente, endereco, cep, itens, qtdes, valor_pago)
    VALUES (
        uuid(),
        'João Silva',
        'Rua A, 123',
        '12345678',
        ['Tênis Corrida', 'Meias Esportivas'],
        [1, 2],
        199.99
    );

    INSERT INTO pedidos (id_pedido, cliente, endereco, cep, itens, qtdes, valor_pago)
    VALUES (
        uuid(),
        'Maria Santos',
        'Av. B, 456',
        '23456789',
        ['Sandália', 'Chinelo'],
        [1, 1],
        150.50
    );

    INSERT INTO pedidos (id_pedido, cliente, endereco, cep, itens, qtdes, valor_pago)
    VALUES (
        uuid(),
        'Pedro Oliveira',
        'Praça C, 789',
        '34567890',
        ['Sapato Social', 'Cinto'],
        [1, 1],
        300.00
    );

    INSERT INTO pedidos (id_pedido, cliente, endereco, cep, itens, qtdes, valor_pago)
    VALUES (
        uuid(),
        'Ana Rodrigues',
        'Rua D, 321',
        '45678901',
        ['Tênis Casual', 'Meia'],
        [1, 3],
        220.75
    );

    INSERT INTO pedidos (id_pedido, cliente, endereco, cep, itens, qtdes, valor_pago)
    VALUES (
        uuid(),
        'Carlos Ferreira',
        'Av. E, 654',
        '56789012',
        ['Bota', 'Meia', 'Calçadeira'],
        [1, 2, 1],
        450.00
    );
APPLY BATCH;

-- Batch para inserção de produtos
BEGIN BATCH
  INSERT INTO produtos (id_produto, codigo, nome, modelo, fabricante, cor, tamanho) VALUES 
    (uuid(), 'TENIS001', 'Tênis Corrida', 'Runner Pro', 'Nike', 'Azul', 'M');
  INSERT INTO produtos (id_produto, codigo, nome, modelo, fabricante, cor, tamanho) VALUES 
    (uuid(), 'SAPA002', 'Sapato Social', 'Classic', 'Ferracini', 'Preto', 'G');
  INSERT INTO produtos (id_produto, codigo, nome, modelo, fabricante, cor, tamanho) VALUES 
    (uuid(), 'SAND003', 'Sandália', 'Summer', 'Havaianas', 'Rosa', 'P');
  INSERT INTO produtos (id_produto, codigo, nome, modelo, fabricante, cor, tamanho) VALUES 
    (uuid(), 'BOTA004', 'Bota de Couro', 'Cowboy', 'Texana', 'Marrom', 'GG');
  INSERT INTO produtos (id_produto, codigo, nome, modelo, fabricante, cor, tamanho) VALUES 
    (uuid(), 'TENI005', 'Tênis Casual', 'Street', 'Adidas', 'Branco', 'M');
  INSERT INTO produtos (id_produto, codigo, nome, modelo, fabricante, cor, tamanho) VALUES 
    (uuid(), 'CHUT006', 'Chuteira', 'Soccer Pro', 'Puma', 'Verde', 'G');
  INSERT INTO produtos (id_produto, codigo, nome, modelo, fabricante, cor, tamanho) VALUES 
    (uuid(), 'SAPA007', 'Sapatilha', 'Ballet', 'Capezio', 'Rosa', 'PP');
  INSERT INTO produtos (id_produto, codigo, nome, modelo, fabricante, cor, tamanho) VALUES 
    (uuid(), 'MOCA008', 'Mocassim', 'Comfort', 'Democrata', 'Azul', 'G');
  INSERT INTO produtos (id_produto, codigo, nome, modelo, fabricante, cor, tamanho) VALUES 
    (uuid(), 'PANT009', 'Pantufa', 'Home', 'Ricsen', 'Cinza', 'M');
  INSERT INTO produtos (id_produto, codigo, nome, modelo, fabricante, cor, tamanho) VALUES 
    (uuid(), 'CHIN010', 'Chinelo', 'Slide', 'Rider', 'Preto', 'GG');
APPLY BATCH;