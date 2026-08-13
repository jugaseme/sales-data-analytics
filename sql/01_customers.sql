-- =====================================================
-- SALES DATA ANALYTICS
-- Proyecto de aprendizaje de SQL con PostgreSQL
-- =====================================================

-- 1. CREACIÓN DE LA TABLA CUSTOMERS

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50),
    registration_date DATE
);


-- 2. INSERTAR DATOS

INSERT INTO customers
    (first_name, last_name, email, city, registration_date)
VALUES
    ('Juan', 'Garcia', 'juan.garcia@email.com', 'Soacha', '2026-01-15'),
    ('Laura', 'Martinez', 'laura.martinez@email.com', 'Bogota', '2026-01-20'),
    ('Carlos', 'Rodriguez', 'carlos.rodriguez@email.com', 'Medellin', '2026-02-03'),
    ('Maria', 'Gomez', 'maria.gomez@email.com', 'Cali', '2026-02-10'),
    ('Andres', 'Lopez', 'andres.lopez@email.com', 'Bogota', '2026-02-18'),
    ('Sofia', 'Torres', 'sofia.torres@email.com', 'Neiva', '2026-03-01'),
    ('Daniel', 'Perez', 'daniel.perez@email.com', 'Soacha', '2026-03-12'),
    ('Valentina', 'Ramirez', 'valentina.ramirez@email.com', 'Bogota', '2026-03-20'),
    ('Sebastian', 'Moreno', 'sebastian.moreno@email.com', 'Neiva', '2026-04-05'),
    ('Camila', 'Castro', 'camila.castro@email.com', 'Medellin', '2026-04-15');


-- 3. CONSULTAS PRACTICADAS

-- Mostrar todos los clientes
SELECT *
FROM customers;


-- Clientes de Bogotá
SELECT city, first_name, last_name
FROM customers
WHERE city = 'Bogota';


-- Clientes de Soacha
SELECT city, first_name, last_name
FROM customers
WHERE city = 'Soacha';


-- Clientes ordenados por nombre de Z a A
SELECT city, first_name, last_name
FROM customers
ORDER BY first_name DESC;


-- Tres clientes registrados más recientemente
SELECT first_name, last_name, registration_date
FROM customers
ORDER BY registration_date DESC
LIMIT 3;


-- Cantidad de clientes registrados en Soacha
SELECT COUNT(*)
FROM customers
WHERE city = 'Soacha';

-- =====================================================
-- 4. ANÁLISIS CON GROUP BY
-- =====================================================

-- Cantidad de clientes por ciudad
SELECT city, COUNT(*) AS total_clientes
FROM customers
GROUP BY city;


-- Ciudades ordenadas de mayor a menor cantidad de clientes
SELECT city, COUNT(*) AS total_clientes
FROM customers
GROUP BY city
ORDER BY total_clientes DESC;
