CREATE TABLE clientes (
  id SERIAL PRIMARY KEY,        
  nombre varchar(100),
  fecha_registro date,
  activo boolean,     
  saldo numeric(10,2)         
);
