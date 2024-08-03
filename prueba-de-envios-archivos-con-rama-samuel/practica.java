public class practica {

    public static void main(String[] args) {
        int numero = 29; // Puedes cambiar este número para probar otros valores
        int numero_2 = 30;
        boolean esPrimo = esNumeroPrimo(numero);
        boolean esPrimo2 = esNumeroPrimo_Two(numero_2);

        if (esPrimo) {
            System.out.println(numero + " es un número primo.");
        } else {
            System.out.println(numero_2 + " no es un número primo.");
        }

        if (esPrimo2){
            System.out.println(numero_2 + "es un numero primo");
        } else{
            System.out.println(numero_2 + "no es un numero pirmo");
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

    public static boolean esNumeroPrimo_Two(int numero_2){
        if (numero_2 <2) {
           return false;
        }
        for (int i =2; i <= Math.sqrt(numero_2); i++){
            if (numero_2 % i ==0){
            return false;
            }
        }
        return true;
    }
 
}
