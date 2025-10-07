CREATE TABLE clientes(
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(100),
  fecha_registro DATE,
  activo BOOL,
  saldo numeric(10,2)
);
