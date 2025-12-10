-- ================================================
-- Script DML: Manipulación de Datos para AE5_ABP
-- ================================================

-- -----------------------------------------------------
-- Insertar clientes
-- -----------------------------------------------------
INSERT INTO clientes (nombre, apellido, direccion, email)
VALUES
('Juan', 'Pérez', 'Calle Falsa 123', 'juan@example.com'),
('Ana', 'Gómez', 'Av. Siempre Viva 742', 'ana@example.com');

-- -----------------------------------------------------
-- Insertar productos
-- -----------------------------------------------------
INSERT INTO productos (nombre, descripcion, precio)
VALUES
('Teclado', 'Teclado mecánico', 49.99),
('Mouse', 'Mouse óptico', 29.99),
('Monitor', 'Monitor 24 pulgadas', 199.99);

-- -----------------------------------------------------
-- Insertar pedidos
-- -----------------------------------------------------
INSERT INTO pedidos (clientes_id, fecha, estado)
VALUES
(1, '2025-07-01', 'Procesado'),
(2, '2025-07-02', 'Pendiente');

-- -----------------------------------------------------
-- Relacionar pedidos con productos
-- -----------------------------------------------------
INSERT INTO pedidos_tiene_productos (pedidos_id, productos_id)
VALUES
(1, 1), (1, 2),
(2, 2), (2, 3);

-- -----------------------------------------------------
-- Actualización de datos
-- -----------------------------------------------------
UPDATE clientes
SET direccion = 'Calle Nueva 456'
WHERE id = 1;

-- -----------------------------------------------------
-- Eliminación de datos
-- -----------------------------------------------------
DELETE FROM pedidos
WHERE id = 2;
