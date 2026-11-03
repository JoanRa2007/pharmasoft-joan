# PharmaSoft (copia de trabajo) — Joan Rodriguez

Copia del backend del curso **PharmaSoft** (https://github.com/dreyna/pharmaSoft, rama `master`,
commit `fff44f9`) para trabajar el proyecto integrador sin modificar el repositorio original.

- Java 21 · Spring Boot 4 · Oracle (Flyway: `src/main/resources/db/migration`) · JWT
- Ejecutar: `mvnw.cmd spring-boot:run` (Windows) o `./mvnw spring-boot:run`, con Oracle en `localhost:1522/FREEPDB1`
  (ver `src/main/resources/application-dev.yaml`).

## Levantar con Docker (sin instalar Oracle)

```bash
docker compose up -d          # Oracle 23ai Free en localhost:1522 (usuario PHARMADB / 1234567)
docker compose ps             # esperar a que diga "healthy"
mvnw.cmd spring-boot:run      # Windows  (./mvnw spring-boot:run en Linux/Mac)
```

Flyway crea el esquema (V1–V3) y carga datos de ejemplo del catálogo y clientes (V4).
Usuarios: `admin / Admin123`, `vendedor / Vendedor123`, `almacen / Almacen123`.
Swagger: http://localhost:8080/swagger-ui.html
