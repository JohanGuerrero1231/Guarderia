/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clasess;


public class Felino extends Mascota {
    private boolean libreDeToxoplasmosis;

    public Felino(String nombre, String raza, String color, int edad, boolean libreDeToxoplasmosis) {
        super(nombre, raza, color, edad);
        this.libreDeToxoplasmosis = libreDeToxoplasmosis;
    }

    public boolean isLibreDeToxoplasmosis() {
        return libreDeToxoplasmosis;
    }

    public void setLibreDeToxoplasmosis(boolean libreDeToxoplasmosis) {
        this.libreDeToxoplasmosis = libreDeToxoplasmosis;
    }
    
}
