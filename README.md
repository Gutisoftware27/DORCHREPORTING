# DorchReporting - Control Dorchester

**Evidencia:** GA7-220501096-AA3-EV01
**Aprendiz:** Juan Gutierrez
**Programa:** Análisis y Desarrollo de Software - SENA

## Descripción
Módulo web para la gestión de novedades e incidentes (DorchReporting) del proyecto Control Dorchester. Permite insertar, consultar, actualizar y eliminar reportes de novedades/incidentes.

## Tecnologías
- Java 11+
- Spring Boot
- Spring Data JPA
- MySQL
- Git

## Estructura de paquetes
- `model`: Entidad Reporte
- `repository`: Interfaz ReporteRepository
- `service`: Lógica de negocio ReporteService
- `controller`: API REST ReporteController

## Requisitos previos
- Java 11 o superior
- MySQL
- Maven

## Configuración de la base de datos
Crea la base de datos y la tabla ejecutando:

```sql
CREATE DATABASE control_dorchester;
USE control_dorchester;
CREATE TABLE reportes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  tipo VARCHAR(50),
  descripcion TEXT,
  fecha_reporte DATE,
  turno VARCHAR(10),
  nombre_reportante VARCHAR(100),
  ubicacion VARCHAR(100)
);
```

## Configuración de la aplicación
Edita `src/main/resources/application.properties` con tus credenciales de MySQL.

## Ejecución
1. Clona el repositorio o descomprime la carpeta.
2. Ejecuta: `mvn spring-boot:run`
3. Accede a la API en: `http://localhost:8080/api/reportes`

## Endpoints principales
- `POST /api/reportes` - Insertar reporte
- `GET /api/reportes` - Consultar todos los reportes
- `GET /api/reportes/{id}` - Consultar reporte por ID
- `PUT /api/reportes/{id}` - Actualizar reporte
- `DELETE /api/reportes/{id}` - Eliminar reporte

## Autor
Juan Gutierrez 