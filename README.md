# Tutorial de Java: plataforma web educativa

Plataforma web para el aprendizaje de los conceptos básicos de Java, dirigida a estudiantes de primer y segundo semestre de la Tecnología en Sistematización de Datos de la Universidad Distrital Francisco José de Caldas.

Proyecto académico en equipo (2 personas), desarrollado en 2024-1 para Analisis de sistemas. Fue la **primera fase del proyecto de grado** de la tecnología, que después se llevó a WordPress con más funcionalidades.

## Funcionalidades

### Público general
- Página principal con información del proyecto
- Registro de usuarios (nombre, teléfono, correo y contraseña)
- Inicio de sesión de estudiantes y de administradores

### Estudiante
- **Perfil:** consultar y modificar sus datos
- **Enlaces:** visitar los recursos del tutorial y filtrarlos por tipo (revista, libro, artículo, video)
- **Información:** consultar la descripción, objetivos y equipo del proyecto
- **Validación:** responder las preguntas sobre el uso y la percepción del tutorial

### Administrador
- **Estudiantes:** crear, editar y eliminar
- **Enlaces:** crear, modificar, eliminar y visitar los recursos del tutorial
- **Información del proyecto:** consultar la descripción, objetivos y equipo, y gestionar el seguimiento del proyecto (agregar, modificar y eliminar módulos)
- **Validación:** agregar, editar, eliminar y consultar las preguntas de evaluación

## Tecnologías

- Java, JSP y Servlets (Jakarta EE)
- JSTL
- MySQL y JDBC
- HTML, CSS y Bootstrap
- Apache Tomcat 10.1
- NetBeans 17 (Ant)

## Estructura del proyecto

```
src/java/Config/        Conexión a la base de datos
src/java/Modelo/        Clases del modelo y DAO (acceso a datos)
src/java/Controlador/   Servlets (controladores)
web/                    Vistas JSP, imágenes y configuración web
database/Script.sql     Estructura de la base de datos
lib/                    Librerías (conector MySQL y JSTL)
```

## Base de datos

Seis tablas: `administradores`, `estudiantes`, `enlaces`, `validacion`, `respuestas` y `seguimiento`. El script de creación está en `database/Script.sql` y contiene solo la estructura, sin datos.

## Cómo ejecutarlo

1. Instala NetBeans, Apache Tomcat 10.1 y MySQL (por ejemplo con XAMPP).
2. Clona el repositorio:
   `git clone https://github.com/Aleja-Morales05/[nombre-del-repositorio].git`
3. Ejecuta `database/Script.sql` en MySQL para crear la base de datos `tutorial`.
4. Revisa la conexión en `src/java/Config/Conexion.java`. Por defecto usa `localhost:3307`, usuario `root` y contraseña vacía; cambia el puerto a `3306` si tu MySQL usa el estándar.
5. Abre el proyecto en NetBeans, asocia Tomcat y ejecútalo (F6).
6. Registra un administrador directamente en la tabla `administradores` para acceder al módulo de administración.

## Nota sobre seguridad

Es un proyecto académico: las contraseñas se almacenan en texto plano. En una versión de producción se guardarían cifradas (hash con sal). Las consultas usan `PreparedStatement` para evitar inyección SQL.

## Autoras

- Jennifer Alejandra Morales Vanegas
- Sara Viviana Herrera Bejarano

Dirección del proyecto: Juan Carlos Guevara.
