CREATE TABLE clientes (
  id_cliente SERIAL PRIMARY KEY,
  nombre varchar(100) NOT NULL,
  fecha_registro date NOT NULL,
  activo bool NOT NULL,
  saldo NUMERIC(10,2)
);
