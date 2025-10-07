CREATE TABLE cliente(
id SERIAL PRIMARY KEY,               -- tipo entero autoincremental
nombre VARCHAR(100),           -- cadena de texto, 100 caracteres
fecha_registro TIMESTAMP,   -- fecha
activo BOOLEAN,          -- valor verdadero/falso
saldo NUMERIC(10,2)            -- Número decinal con presición (10, 2)
);
