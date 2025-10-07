DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes (
  id SERIAL PRIMARY KEY,                     -- entero autoincremental
  nombre VARCHAR(100) NOT NULL,              -- tipo character varying
  fecha_registro DATE NOT NULL,              -- tipo fecha
  activo BOOLEAN NOT NULL,                   -- valor verdadero/falso
  saldo NUMERIC(10, 2) NOT NULL              -- tipo numérico con precisión
);
