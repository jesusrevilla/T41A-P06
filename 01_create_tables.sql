
CREATE TABLE clientes (
    id SERIAL,
    nombre VARCHAR(100),
    fecha_registro DATE,
    activo BOOLEAN,
    saldo NUMERIC(10,2),
    PRIMARY KEY (id)
);
