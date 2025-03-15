Informe del parcial de Gestión de Reservas

Este proyecto es una aplicación web desarrollada en Java utilizando Servlets y JSP para la gestión de reservas. No se utilizó una base de datos, por lo que los datos se almacenan temporalmente en memoria mediante la clase DataStorage.java. El proyecto está configurado para ejecutarse en Apache Tomcat.

Desarrollo

1. Arquitectura de mi parcial

El proyecto sigue una arquitectura basada en:

Modelo: Reserva.java representa la entidad reserva.

Controlador: ReservaServlet.java y EliminarReservaServlet.java manejan las solicitudes del usuario.

Vista: Archivos JSP (listaReservas.jsp, nuevaReserva.jsp) que muestran la información.

2. Funcionalidad Implementada

Listar reservas: Se muestra un listado de las reservas activas en listaReservas.jsp.

Crear nueva reserva: Un formulario en nuevaReserva.jsp permite registrar nuevas reservas.

Eliminar reserva: EliminarReservaServlet.java gestiona la eliminación de reservas.

3. Configuración del Servidor

El archivo web.xml define las rutas de los servlets.

context.xml asegura que el servidor Tomcat pueda desplegar la aplicación correctamente.

Desafíos y Soluciones

Persistencia de Datos: Opte por almacenar los datos en memoria con DataStorage.java, lo cual simplifica el desarrollo pero implica que las reservas se pierden al reiniciar el servidor.
