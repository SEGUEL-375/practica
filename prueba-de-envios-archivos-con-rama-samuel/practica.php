<?php
function practica($numero) {
    // Los números menores que 2 no son primos
    if($numero < 2) {
        return false;
    }
    // Comprobar divisibilidad desde 2 hasta la raíz cuadrada del número
    for($i = 2; $i <= sqrt($numero); $i++) {
        if($numero % $i == 0) {
            return false; // Si encontramos un divisor, el número no es primo
        }
    }
    return true; // Si no encontramos divisores, el número es primo
}


function practica_($numero2) {
    // Los números menores que 2 no son primos
    if($numero2 < 2) {
        return false;
    }
    // Comprobar divisibilidad desde 2 hasta la raíz cuadrada del número
    for($i = 2; $i <= sqrt($numero2); $i++) {
        if($numero2 % $i == 0) {
            return false; // Si encontramos un divisor, el número no es primo
        }
    }
    return true; // Si no encontramos divisores, el número es primo
}


// Definir un número para comprobar
$numero = 20; // Puedes cambiar este número para probar otros valores
$numero2 = 11;
$esPrimo = practica($numero);
$esPrimo = practica_($numero2);

if($esPrimo) {
    echo "$numero es un número primo.";
} else {
    echo "$numero no es un número primo.";
}

if ($esPrimo) {
    echo "$numero2 es un numero primo";
} 
else {
  echo "$numero2 no es un numero primo";
}

?>