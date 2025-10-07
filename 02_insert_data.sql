-- Insertar datos simulando una petición de cliente
-- Dos clientes activos y uno inactivo
INSERT INTO clientes (nombre, fecha_registro, activo, saldo) VALUES
('Juan Pérez', '2024-01-15', TRUE, 1500.75),
('María García', '2024-01-20', TRUE, 2300.50),
('Carlos López', '2024-02-01', FALSE, 500.25);
