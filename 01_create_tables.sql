CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,                      -- entero autoincremental
    nombre VARCHAR(100) NOT NULL,               -- texto de hasta 100 caracteres
    fecha_registro DATE NOT NULL,               -- fecha de registro
    activo BOOLEAN NOT NULL,                    -- valor verdadero/falso
    saldo DECIMAL(10, 2) NOT NULL               -- número decimal con precisión 10,2
);
