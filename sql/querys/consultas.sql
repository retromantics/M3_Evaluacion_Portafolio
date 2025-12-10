-- ================================================
-- Consultas SQL de Ejemplo para AE5_ABP
-- ================================================

-- 1. Obtener todos los pedidos de un cliente específico
SELECT p.id, p.fecha, p.estado, c.nombre, c.apellido
FROM pedidos p
JOIN clientes c ON p.clientes_id = c.id
WHERE c.nombre = 'Juan';

-- 2. Listar productos de un pedido
SELECT pr.nombre, pr.descripcion, pr.precio
FROM productos pr
JOIN pedidos_tiene_productos ptp ON pr.id = ptp.productos_id
WHERE ptp.pedidos_id = 1;

-- 3. Resumen de ventas por producto
SELECT pr.nombre, COUNT(ptp.productos_id) AS total_vendido
FROM productos pr
JOIN pedidos_tiene_productos ptp ON pr.id = ptp.productos_id
GROUP BY pr.nombre;
