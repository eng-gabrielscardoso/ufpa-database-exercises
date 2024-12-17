-- Turning Off Foreigns

SET FOREIGN_KEY_CHECKS = 0;

-- Drop Tables

DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS produtos;
DROP TABLE IF EXISTS pedidos;
DROP TABLE IF EXISTS itens_pedidos;

-- Turning On Foreigns

SET FOREIGN_KEY_CHECKS = 1;
