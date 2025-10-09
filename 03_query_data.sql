-- a) Productos disponibles con información de marca (brand) en metadata
SELECT id, name, price, metadata->>'brand' AS brand, available
FROM data_types_demo
WHERE available = TRUE
  AND metadata ? 'brand';
 
-- b) Artículos lanzados después de una fecha específica (ejemplo)
SELECT id, name, launch_date
FROM data_types_demo
WHERE launch_date > DATE '2025-01-01'
ORDER BY launch_date;
 
-- c) Búsqueda por tag (ej. 'wifi')
SELECT id, name, tags
FROM data_types_demo
WHERE tags @> ARRAY['wifi']::text[];
 
-- d) Mostrar IP y dirección MAC
SELECT id, name, ip_address::text AS ip, mac_address::text AS mac
FROM data_types_demo;
 
-- e) Mostrar coordenadas y sus componentes
SELECT id, name, coordinates, x(coordinates) AS x, y(coordinates) AS y
FROM data_types_demo;
