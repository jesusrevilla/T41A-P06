CREATE TABLE clientes (
  id               SERIAL PRIMARY KEY,     
  nombre           VARCHAR(100) NOT NULL,  
  fecha_registro   DATE NOT NULL DEFAULT CURRENT_DATE,
  activo           BOOLEAN NOT NULL DEFAULT TRUE,
  saldo            NUMERIC(10,2) NOT NULL DEFAULT 0.00
);
