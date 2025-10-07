
--Crear una tabla clientes con los distintos tipos de datos
CREATE TABLE clientes(
  id  SERIAL PRIMARY KEY NOT NULL,  
  nombre VARCHAR(100) NOT NULL, 
  fecha_registro DATE NOT NULL, 
  activo BOOLEAN NOT NULL,
  saldo DECIMAL(10,2) NOT NULL           
);
