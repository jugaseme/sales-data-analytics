-- =========================================
-- 04_orders.sql
-- Tabla de órdenes y datos iniciales
-- =========================================

-- Crear tabla de órdenes
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    order_date DATE
);

-- Insertar órdenes
INSERT INTO orders (customer_id, product_id, quantity, order_date)
VALUES
    (1, 2, 3, '2026-01-10'),
    (2, 5, 1, '2026-01-12'),
    (3, 1, 4, '2026-01-15'),
    (1, 4, 2, '2026-01-18'),
    (4, 3, 5, '2026-01-20');

-- Verificar los datos
SELECT * FROM orders;
