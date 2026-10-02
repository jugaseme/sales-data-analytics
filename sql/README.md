# Sales Data Analytics

Proyecto personal para aprender y aplicar **SQL y análisis de datos** utilizando PostgreSQL, con el objetivo de construir progresivamente un proyecto de análisis de ventas orientado a situaciones de negocio reales.

## Objetivo

Construir progresivamente un proyecto de análisis de ventas utilizando:

* PostgreSQL
* SQL
* Python
* Pandas
* Power BI

El proyecto busca pasar de los fundamentos de SQL a la construcción de análisis y métricas que permitan obtener **insights de negocio a partir de datos de ventas**.

## Progreso

### SQL

#### Fundamentos

* [x] Crear base de datos
* [x] Crear tabla de clientes
* [x] Crear tabla de productos
* [x] Crear tabla de órdenes
* [x] Insertar datos
* [x] SELECT
* [x] WHERE
* [x] AND / OR
* [x] ORDER BY
* [x] ASC / DESC
* [x] LIMIT
* [x] DISTINCT
* [x] COUNT()
* [x] AS
* [x] GROUP BY
* [x] SUM()
* [x] AVG()
* [x] HAVING

#### Relaciones y análisis

* [x] JOIN
* [x] Cálculos con SQL
* [x] Análisis de ventas
* [x] Análisis de productos
* [x] Análisis de clientes
* [x] Cálculo de ingresos
* [x] Análisis de gasto por cliente

#### SQL avanzado

* [x] Subconsultas
* [x] CTE (Common Table Expressions)
* [🔄] Window Functions
* [ ] RANK()
* [ ] ROW_NUMBER()
* [ ] Análisis temporal
* [ ] Análisis de crecimiento
* [ ] Consultas orientadas a preguntas de negocio

### Python

* [ ] Conectar Python con PostgreSQL
* [ ] Pandas
* [ ] Limpieza de datos
* [ ] Análisis exploratorio
* [ ] Visualizaciones

### Power BI

* [ ] Conectar base de datos
* [ ] Crear modelo
* [ ] Crear KPIs
* [ ] Crear dashboard

## Estado actual

Actualmente estamos trabajando en el análisis de datos de ventas utilizando **PostgreSQL y SQL**.

Ya se han construido las tablas principales de **clientes, productos y órdenes**, y se han realizado consultas utilizando `JOIN`, `GROUP BY`, `SUM()`, `AVG()`, `HAVING`, `ORDER BY`, `LIMIT` y subconsultas.

También se han comenzado a utilizar **CTEs (Common Table Expressions)** para dividir consultas complejas en bloques más fáciles de entender y reutilizar.

Actualmente se están introduciendo las **Window Functions**, comenzando con `SUM() OVER()` para calcular totales generales manteniendo el detalle de cada cliente.

## Análisis realizados

Entre los análisis realizados hasta ahora se encuentran:

* Identificación de productos con precios superiores al promedio.
* Identificación del producto con mayor precio.
* Identificación de clientes que han realizado compras.
* Análisis de productos comprados por encima del precio promedio.
* Cálculo del gasto total por cliente.
* Identificación de clientes cuyo gasto supera un valor determinado.
* Comparación del gasto de clientes frente al gasto promedio.
* Cálculo del porcentaje que representa cada cliente sobre los ingresos totales.

## Próximos pasos

1. Continuar con Window Functions.
2. Aprender `RANK()` y `ROW_NUMBER()`.
3. Resolver más preguntas de negocio utilizando SQL.
4. Trabajar con fechas y análisis temporal.
5. Ampliar el dataset para hacerlo más realista.
6. Conectar PostgreSQL con Python.
7. Realizar análisis utilizando Pandas.
8. Crear visualizaciones.
9. Construir un dashboard en Power BI.
10. Documentar los principales insights encontrados.

## Tecnologías

* PostgreSQL
* SQL
* Python
* Pandas
* Power BI

## Estado del proyecto

🟡 **En desarrollo**

El proyecto se encuentra actualmente en la etapa de aprendizaje y aplicación de SQL avanzado. Posteriormente se incorporarán Python, Pandas y Power BI para construir un flujo completo de análisis de datos.
