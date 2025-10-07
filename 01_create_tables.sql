CREATE TABLE clientes (
  id SERIAL NOT NULL,
  nombre VARCHAR(50) NOT NULL,
  fecha_registro DATE NOT NULL,
  activo BOOLEAN NOT NULL,
  saldo FLOAT(10,2) NOT NULL
);
