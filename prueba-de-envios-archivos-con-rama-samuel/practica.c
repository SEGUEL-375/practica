#include <stdio.h>

// Función para calcular el factorial
int calcularFactorial(int num)
{
    int factorial = 1;
    for (int i = 1; i <= num; ++i)
    {
        factorial *= i;
    }
    return factorial;
}

int main()
{
    int numero;


    // Solicitar al usuario que ingrese un número
    printf("Ingrese un número para calcular su factorial: ");
    scanf("%d", &numero);

    // Verificar que el número sea positivo
    if (numero < 0)
    {
        printf("El factorial no está definido para números negativos.\n");
    }
    else
    {
        // Calcular y mostrar el factorial del número ingresado
        int resultado = calcularFactorial(numero);
        printf("El factorial de %d es: %d\n", numero, resultado);
    }

    return 0;
}
