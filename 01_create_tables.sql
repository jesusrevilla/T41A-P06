-- Crear tabla clientes con los distintos tipos de datos
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fecha_registro DATE,
    activo BOOLEAN,
    saldo DECIMAL(10, 2)
);
