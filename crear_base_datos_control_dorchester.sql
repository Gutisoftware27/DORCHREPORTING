-- Script para crear la base de datos y la tabla 'reportes' para el proyecto Control Dorchester

-- 
CREATE DATABASE IF NOT EXISTS control_dorchester;

-- Usar la base de datos
USE control_dorchester;

CREATE TABLE IF NOT EXISTS reportes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  tipo VARCHAR(50),
  descripcion TEXT,
  fecha_reporte DATE,
  turno VARCHAR(10),
  nombre_reportante VARCHAR(100),
  ubicacion VARCHAR(100)
); 