# M3_Evaluacion_Portafolio

Repositorio del proyecto académico **M3_Evaluacion_Portafolio**, un sistema de gestión y evaluación con base de datos MySQL.

---

## Descripción del Proyecto

Este proyecto fue desarrollado como parte de un módulo de evaluación académica. Permite gestionar información de manera estructurada y realizar consultas sobre la base de datos diseñada. Incluye diagramas, scripts SQL y ejemplos de manipulación de datos.

---
## Diagrama ER
![Diagrama ER AE5_ABP](diagramas/ER_AE5_ABP_Portafolio.png)

El diagrama muestra las cuatro tablas principales y sus relaciones:  
- `Clientes (1) -> Pedidos (N)`  
- `Pedidos (N) <-> Productos (N)` a través de `Pedidos_Tiene_Productos`  

Cada tabla incluye sus **claves primarias (PK)** y **foráneas (FK)**.

---

## Estructura del Proyecto
```text
M3_Evaluacion_Portafolio/
├── diagramas/
│   └── ER_ae5_abp.png          # Diagrama entidad-relación del proyecto
├── sql/
│   ├── ddl/
│   │   └── crear_tablas.sql    # Scripts para crear tablas en la base de datos
│   ├── dml/
│   │   └── manipulacion_datos.sql  # Scripts para insertar datos de ejemplo
│   └── consultas/
│       └── consultas_ejemplo.sql   # Consultas de ejemplo sobre la base de datos
└── README.md

