public class practica {

    public static void main(String[] args) {
        int numero = 29; // Puedes cambiar este número para probar otros valores
        boolean esPrimo = esNumeroPrimo(numero);

        if (esPrimo) {
            System.out.println(numero + " es un número primo.");
        } else {
            System.out.println(numero + " no es un número primo.");
        }
    }

    public static boolean esNumeroPrimo(int numero) {
        // Los números menores que 2 no son primos
        if (numero < 2) {
            return false;
        }

        // Comprobar divisibilidad desde 2 hasta la raíz cuadrada del número
        for (int i = 2; i <= Math.sqrt(numero); i++) {
            if (numero % i == 0) {
                return false; // Si encontramos un divisor, el número no es primo
            }
        }

        return true; // Si no encontramos divisores, el número es primo
    }
}
