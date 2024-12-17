-- Tables Creation --

CREATE TABLE IF NOT EXISTS clientes (
  id BIGINT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  nome VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS produtos (
  id BIGINT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  nome VARCHAR(255) NOT NULL,
  preco DECIMAL(10, 2) NOT NULL
);

CREATE TABLE IF NOT EXISTS pedidos (
  id BIGINT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  cliente_id BIGINT NOT NULL,
  data_pedido DATETIME NOT NULL,
  FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

CREATE TABLE IF NOT EXISTS itens_pedidos (
  id BIGINT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  pedido_id BIGINT NOT NULL,
  produto_id BIGINT NOT NULL,
  quantidade INT NOT NULL,
  FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
  FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Data Insertion --

INSERT INTO clientes (nome, email) VALUES
('Paul Atreides', 'paul@example.com'),
('Feyd-Rautha Harkonnen', 'feyd@example.com'),
('Chani Kynes', 'chani@example.com'),
('Duncan Idaho', 'duncan@example.com'),
('Gurney Halleck', 'gurney@example.com');

INSERT INTO produtos (nome, preco) VALUES
('Especialiaria Melánge', 1000000.00),
('Arroz-Pundi', 100.00),
('Tragestilador', 1000.00),
('Dagacris', 1500.00),
('Armalês', 250000.00);

INSERT INTO pedidos (cliente_id, data_pedido) VALUES
(1, '2024-12-17 10:00:00'),
(2, '2024-12-16 15:43:23');

INSERT INTO itens_pedidos (pedido_id, produto_id, quantidade) VALUES
(1, 1, 1000),
(1, 2, 100);

INSERT INTO itens_pedidos (pedido_id, produto_id, quantidade) VALUES
(2, 3, 89),
(2, 5, 63);

-- Evaluate clientes
SELECT * FROM clientes;

-- Evaluate produtos
SELECT * FROM produtos;

-- Evaluate pedidos
SELECT * FROM pedidos;

-- Evaluate itens dos pedidos
SELECT * FROM itens_pedidos;
