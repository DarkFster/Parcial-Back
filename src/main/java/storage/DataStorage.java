package storage;

import java.util.ArrayList;
import java.util.List;
import java.util.Iterator;
import Models.Reserva;

public class DataStorage {
    private static List<Reserva> reservas = new ArrayList<>();
    private static int contadorId = 1;

    public static void agregarReserva(String nombre, String fecha, String espacioTrabajo, int duracionHoras) {
        reservas.add(new Reserva(contadorId++, nombre, fecha, espacioTrabajo, duracionHoras));
    }

    public static List<Reserva> getReservas() {
        return reservas;
    }

    public static void eliminarReserva(int id) {
        Iterator<Reserva> iterator = reservas.iterator();
        while (iterator.hasNext()) {
            Reserva r = iterator.next();
            if (r.getId() == id) {
                iterator.remove();
                break;
            }
        }
    }
}
