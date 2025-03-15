<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Nueva Reserva</title>
</head>
<body>
<h2>Agregar Reserva</h2>
<form action="ReservaServlet" method="post">
    Nombre: <input type="text" name="nombre" required><br>
    Fecha: <input type="date" name="fecha" required><br>
    
    Espacio de Trabajo:
    <select name="espacioTrabajo" required>
        <option value="Escritorio">Escritorio</option>
        <option value="Sala de reuniones">Sala de reuniones</option>
        <option value="Oficina privada">Oficina privada</option>
    </select><br>

    Duración (horas): <input type="number" name="duracionHoras" min="1" required><br>
    
    <input type="submit" value="Guardar">
</form>
</body>
</html>
