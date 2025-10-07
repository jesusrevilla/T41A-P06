CREATE TABLE clientes(
  id_cliente INTEGER PRIMARY KEY, 
  nombre VARCHAR(50),
  fecha_registro DATE,
  saldo NUMERIC(10,2),
  activo BOOLEAN
);
