INSERT INTO data_types_demo
(name, description, price, discount, available, created_at, launch_date, uuid_col, ip_address, mac_address, tags, metadata, coordinates, file_data)
VALUES
('Cámara HD',
'Cámara para seguridad en interiores/exteriores',
1999.99, 0.15, TRUE, NOW(), DATE '2025-03-15',
'550e8400-e29b-41d4-a716-446655440000',
'192.168.1.10', '08:00:2b:01:02:03',
ARRAY['camera','security']::text[],
'{"brand":"Acme","warranty_months":24}'::jsonb,
POINT(22.151, -100.98),
E'\\xDEADBEEF'
),
('Router Wi-Fi 6',
'Router doméstico Wi-Fi 6 con 4 puertos LAN',
1299.00, 0.10, FALSE, NOW(), DATE '2024-11-20',
'f47ac10b-58cc-4372-a567-0e02b2c3d479',
'10.0.0.5', '00:1B:44:11:3A:B7',
ARRAY['network','wifi']::text[],
'{"brand":"NetX","ports":4}'::jsonb,
POINT(20.67, -103.35),
E'\\xA1B2C3D4'
),
('Smartwatch',
'Reloj inteligente con monitoreo de actividad',
2499.00, 0.00, TRUE, NOW(), DATE '2025-07-01',
'123e4567-e89b-12d3-a456-426614174000',
'2001:db8::1', '3C:5A:B4:7E:1F:AA',
ARRAY['wearable','fitness']::text[],
'{"brand":"Pulse","color":"black"}'::jsonb,
POINT(19.43, -99.13),
E'\\x0011223344'
);
