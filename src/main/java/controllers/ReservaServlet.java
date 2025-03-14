package controllers;

import storage.DataStorage;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ReservaServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String fecha = request.getParameter("fecha");
        String espacioTrabajo = request.getParameter("espacioTrabajo");
        int duracionHoras = Integer.parseInt(request.getParameter("duracionHoras"));

        DataStorage.agregarReserva(nombre, fecha, espacioTrabajo, duracionHoras);
        response.sendRedirect("listaReservas.jsp");
    }
}
