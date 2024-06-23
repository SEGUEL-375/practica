import math

def practica(numero):
    # Los números menores que 2 no son primos
    if numero < 2:
        return False
    
    # Comprobar divisibilidad desde 2 hasta la raíz cuadrada del número
    for i in range(2, int(math.sqrt(numero)) + 1):
        if numero % i == 0:
            return False  # Si encontramos un divisor, el número no es primo
    
    return True  # Si no encontramos divisores, el número es primo

# Definir un número para comprobar
numero = 29  # Puedes cambiar este número para probar otros valores
es_primo = practica(numero)

if es_primo:
    print(f"{numero} es un número primo.")
else:
    print(f"{numero} no es un número primo.")
