CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    fecha_registro DATE,
    activo BOOLEAN,
    saldo DECIMAL(10, 2)
);

