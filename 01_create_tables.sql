CREATE TABLE clientes(
  id SERIAL PRIMARY KEY, -- tipo entero autoincremental
  nombre VARCHAR(100) NOT NULL, -- cadena de texto, 100 caracteres
  fecha_registro DATE NOT NULL,  -- fecha
  activo BOOL NOT NULL, -- valor verdadero/falso
  saldo NUMERIC(10,2)  -- Número decinal con presición (10, 2)
);
