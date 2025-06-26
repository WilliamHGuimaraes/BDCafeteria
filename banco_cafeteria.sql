-- Criação da tabela produtos
CREATE TABLE produtos (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    preco REAL NOT NULL
);

-- Criação da tabela pedidos
CREATE TABLE pedidos (
    id INTEGER PRIMARY KEY,
    id_produto INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    data_pedido DATE NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES produtos(id)
);

-- Inserção de dados na tabela produtos
INSERT INTO produtos (id, nome, preco) VALUES (1, 'Café Expresso', 5.00);
INSERT INTO produtos (id, nome, preco) VALUES (2, 'Pão de Queijo', 4.50);
INSERT INTO produtos (id, nome, preco) VALUES (3, 'Café Cappuccino', 8.50);
INSERT INTO produtos (id, nome, preco) VALUES (4, 'Café Pingado', 6.50);

-- Inserção de dados na tabela pedidos
INSERT INTO pedidos (id, id_produto, quantidade, data_pedido) VALUES (1, 1, 2, '2025-06-25');
INSERT INTO pedidos (id, id_produto, quantidade, data_pedido) VALUES (2, 2, 1, '2025-06-25');
INSERT INTO pedidos (id, id_produto, quantidade, data_pedido) VALUES (3, 3, 1, '2025-06-24');
INSERT INTO pedidos (id, id_produto, quantidade, data_pedido) VALUES (4, 4, 3, '2025-06-24');
