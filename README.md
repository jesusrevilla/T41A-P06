# T41A-P06

## Objetivo:    

Simular una interación cliente-servidor

## 1.- Crear una tabla clientes con los distintos tipos de datos
´´´sql
id               -- tipo entero autoincremental
nombre           -- cadena de texto, 100 caracteres
fecha_registro   -- fecha
activo           -- valor verdadero/falso
saldo            -- Número decinal con presición (10, 2)
´´´
## 2.- Insertar datos simulando una petición de cliente

Inserta dos clientes activos y uno inactivo

## 3.- Consultar datos como si fueras el cliente solicitando información
´´´sql
-- Mostrar todos los clientes activos
SELECT nombre, saldo 
FROM clientes 
WHERE activo = TRUE;
´´´
