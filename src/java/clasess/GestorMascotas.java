package clasess;

import java.util.ArrayList;
import java.util.List;

public class GestorMascotas {

    private ArrayList<Mascota> mascotas;

    public GestorMascotas() {
        this.mascotas = new ArrayList<>();
    }

    public void agregarMascota(Mascota mascota) {
        mascotas.add(mascota);
    }

    public boolean retirarMascota(Mascota mascota) {
        return mascotas.remove(mascota);
    }

    public double calcularEdadPromedio() {
        if (mascotas.isEmpty()) {
            return 0;
        }

        int totalEdad = 0;
        for (Mascota mascota : mascotas) {
            totalEdad += mascota.getEdad();
        }
        return (double) totalEdad / mascotas.size();
    }

    public int contarFelinos() {
        int count = 0;
        for (Mascota mascota : mascotas) {
            if (mascota instanceof Felino) {
                count++;
            }
        }
        return count;
    }

    public int contarCaninos() {
        int count = 0;
        for (Mascota mascota : mascotas) {
            if (mascota instanceof Canino) {
                count++;
            }
        }
        return count;
    }

    public List<Mascota> getMascotas() {
        return mascotas;
    }
}
