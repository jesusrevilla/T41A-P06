CREATE TABLE clientes(
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  fecha_registro DATE NOT NULL,
  activo BOOLEAN NOT NULL,
  saldo NUMERIC(10,2) NOT NULL
);

