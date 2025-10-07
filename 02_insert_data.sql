INSERT INTO clientes (nombre, fecha_registro, activo, saldo) VALUES
  ('María López', CURRENT_DATE - INTERVAL '2 day', TRUE, 1500.50),
  ('Juan Pérez',  CURRENT_DATE - INTERVAL '1 day', TRUE,  200.00),
  ('Ana Gómez',   CURRENT_DATE - INTERVAL '3 day', FALSE,   0.00);
