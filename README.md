# Tienda Perritos — [Frontend / Backend]


## Descripción
Aplicación CRUD para gestión de productos de una tienda de alimentos
para mascotas. Desplegada en AWS EC2 con Docker.


## Arquitectura
- Frontend: Nginx + HTML/JS (EC2 pública, puerto 80)
- Backend: Node.js + Express (EC2 privada, puerto 3001)
- Base de datos: MySQL 8 (contenedor en EC2 backend)


## Requisitos previos
- Docker >= 24.x
- Docker Compose >= 2.x
- Cuenta AWS Academy (para EC2)


## Cómo ejecutar localmente
```bash
docker-compose up --build
```


## Variables de entorno
| Variable | Descripción | Valor por defecto |
|----------|-------------|-------------------|
| DB_HOST  | Host de la BD | db |
| DB_USER  | Usuario de la BD | alumno |
| DB_PASSWORD | Contraseña | alumno123 |
| PORT | Puerto del servidor | 3001 |


## Pipeline CI/CD
Se activa con push a la rama `deploy`.
Pasos: build → push a Docker Hub → deploy en EC2 via SSH.


## Endpoints (solo backend)
- GET    /api/productos
- GET    /api/productos/:id
- POST   /api/productos
- PUT    /api/productos/:id
- DELETE /api/productos/:id
- GET    /api/health


## Integrantes
- Deymon Gonzalez
- Juan Carlos Tapia

## Licencia
DuocUC — ISY1101 — 2025


















