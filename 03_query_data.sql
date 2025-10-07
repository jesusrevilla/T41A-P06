-- Columnas de 'factura'
SELECT column_name
FROM information_schema.columns
WHERE table_schema = 'public'
  AND table_name   = 'factura'
ORDER BY ordinal_position;

-- PKs y FKs de 'factura'
SELECT tc.constraint_type,
       kcu.column_name,
       tc.constraint_name
FROM information_schema.table_constraints tc
JOIN information_schema.key_column_usage kcu
  ON  tc.constraint_name  = kcu.constraint_name
  AND tc.constraint_schema = kcu.constraint_schema
  AND tc.table_name        = kcu.table_name
WHERE tc.table_schema = 'public'
  AND tc.table_name   = 'factura'
ORDER BY kcu.ordinal_position;

-- Columnas de 'detalle_de_factura'
SELECT column_name
FROM information_schema.columns
WHERE table_schema = 'public'
  AND table_name   = 'detalle_de_factura'
ORDER BY ordinal_position;

-- PKs y FKs de 'detalle_de_factura'
SELECT tc.constraint_type,
       kcu.column_name,
       tc.constraint_name
FROM information_schema.table_constraints tc
JOIN information_schema.key_column_usage kcu
  ON  tc.constraint_name  = kcu.constraint_name
  AND tc.constraint_schema = kcu.constraint_schema
  AND tc.table_name        = kcu.table_name
WHERE tc.table_schema = 'public'
  AND tc.table_name   = 'detalle_de_factura'
ORDER BY kcu.ordinal_position;

-- Datos
SELECT * FROM clientes;
SELECT * FROM articulo;
SELECT * FROM factura;
SELECT * FROM detalle_de_factura;

-- Join factura + detalle
SELECT f.sucursal, f.numero_de_factura, f.codigo_del_cliente,
       d.codigo_de_articulo, d.cantidad_del_articulo,
       d.precio_unitario_del_articulo, d.subtotal_del_articulo
FROM factura f
JOIN detalle_de_factura d
  ON f.sucursal = d.sucursal
 AND f.numero_de_factura = d.numero_de_factura;

 
-- Consulta que junta factura y su detalle
SELECT f.sucursal, f.numero_de_factura, f.codigo_del_cliente, d.codigo_de_articulo, d.cantidad_del_articulo, d.precio_unitario_del_articulo, d.subtotal_del_articulo
FROM factura f
JOIN detalle_de_factura d ON f.sucursal = d.sucursal AND f.numero_de_factura = d.numero_de_factura;
