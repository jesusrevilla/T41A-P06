CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    fecha_registro DATE,
    activo BOOLEAN,
    saldo NUMERIC(10, 2)
);
