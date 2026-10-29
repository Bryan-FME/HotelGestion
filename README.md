Sistema de Gestión de Hotel
Proyecto final del curso Programación II.

Descripción
Sistema web desarrollado en Java para la gestión de un hotel. La aplicación permite administrar clientes, habitaciones, reservaciones y ocupaciones, además de realizar procesos relacionados con el check-in y check-out.

Tecnologías utilizadas
Java
JavaServer Pages (JSP)
Servlets
JDBC
Maven
MySQL
Apache Tomcat
XAMPP
HTML
CSS
JavaScript
Apache NetBeans

Requisitos
Para ejecutar el proyecto se requiere:

Java JDK
Apache NetBeans
Apache Tomcat
XAMPP / MySQL
Navegador web
Maven
Base de datos
El respaldo de la base de datos se encuentra dentro de:

database/hotel_gestion.sql

Importar la base de datos
Abrir XAMPP.
Iniciar MySQL.
Abrir phpMyAdmin.
Crear una base de datos llamada:
hotel_gestion

Seleccionar la base de datos creada.
Ir a la opción "Importar".
Seleccionar el archivo:
database/hotel_gestion.sql

Ejecutar la importación.
Verificar que las tablas se hayan creado correctamente.
Configuración del proyecto
Abrir Apache NetBeans.
Seleccionar "File > Open Project".
Seleccionar la carpeta del proyecto.
Esperar a que Maven cargue las dependencias necesarias.
Verificar la configuración de conexión a MySQL.
Configurar Apache Tomcat como servidor de la aplicación.
Ejecutar "Clean and Build".
Ejecutar el proyecto.
Funcionalidades principales
El sistema incluye funcionalidades relacionadas con:

Gestión de clientes.
Gestión de habitaciones.
Consulta de disponibilidad.
Gestión de reservaciones.
Control de ocupaciones.
Check-in.
Check-out.
Bloqueo y liberación de habitaciones.
Gestión de la información almacenada en MySQL.
Estructura general
src/: código fuente y recursos del proyecto.
database/: respaldo de la base de datos.
pom.xml: configuración y dependencias de Maven.
nb-configuration.xml: configuración utilizada por NetBeans.
.gitignore: archivos y carpetas excluidos del repositorio.
Base de datos utilizada
Nombre:

hotel_gestion

El archivo de respaldo se encuentra en:

database/hotel_gestion.sql

Ejecución
Una vez configurados MySQL y Apache Tomcat:

Abrir el proyecto en Apache NetBeans.
Comprobar que MySQL se encuentre iniciado.
Verificar la conexión a la base de datos.
Ejecutar "Clean and Build".
Ejecutar el proyecto.
Abrir la aplicación web desde la dirección proporcionada por Apache Tomcat.
Autor
Bryan Francisco Mejía Escobar

Curso
Programación II
Ingeniería en Sistemas de Información
Universidad Mariano Gálvez de Guatemala
2026