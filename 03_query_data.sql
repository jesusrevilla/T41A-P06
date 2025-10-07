-- 03_query_data.sql
-- Mostrar todos los clientes activos (tal como pide el enunciado)
SELECT nombre, saldo
FROM clientes
WHERE activo = TRUE;

