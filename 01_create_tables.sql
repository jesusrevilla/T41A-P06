
CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fecha_registro DATE,
    activo BOOLEAN,
    saldo NUMERIC(10, 2)
);
