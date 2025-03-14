<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List, Models.Reserva, storage.DataStorage" %>
<!DOCTYPE html>
<html>
<head>
<title>Lista de Reservas</title>
</head>
<body>
<h2>Reservas</h2>
<table border="1">
<tr>
<th>ID</th>
<th>Nombre</th>
<th>Fecha</th>
<th>Espacio de Trabajo</th>
<th>Duración (horas)</th>
<th>Acciones</th>
</tr>
<%
    List<Reserva> reservas = DataStorage.getReservas();
    for (Reserva r : reservas) {
%>
<tr>
<td><%= r.getId() %></td>
<td><%= r.getNombre() %></td>
<td><%= r.getFecha() %></td>
<td><%= r.getEspacioTrabajo() %></td>
<td><%= r.getDuracionHoras() %></td>
<td>
    <a href="EliminarReservaServlet?id=<%= r.getId() %>" onclick="return confirm('¿Estás seguro de eliminar esta reserva?')">
        Eliminar
    </a>
</td>
</tr>
<% } %>
</table>
<a href="nuevaReserva.jsp">Agregar Nueva Reserva</a>
</body>
</html>
