DROP TABLE IF EXISTS clientes;

-- Tabla requerida por el test
-- (El test verifica: existencia de la tabla, tipo de 'nombre' = VARCHAR,
--  tipo de 'saldo' = NUMERIC y conteo de activos >= 2)
CREATE TABLE clientes (
    id       SERIAL PRIMARY KEY,
    nombre   VARCHAR(120)  NOT NULL,  -- <- character varying
    saldo    NUMERIC(12,2) NOT NULL,  -- <- numeric
    activo   BOOLEAN       NOT NULL   -- el test cuenta activos = TRUE
);
