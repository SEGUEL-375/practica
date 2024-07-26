<?php

// Definimos un array con los números a verificar
$numeros = [20, 11, 19];

// Función para verificar si un número es primo
function esPrimo($numero) {
    if ($numero < 2) {
        return false;
    }
    for ($i = 2; $i <= sqrt($numero); $i++) {
        if ($numero % $i == 0) {
            return false;
        }
    }
    return true;
}

// Iteramos sobre el array de números
foreach ($numeros as $numero) {
    if (esPrimo($numero)) {
        echo "$numero es un número primo. ";
    } else {
        echo "$numero no es un número primo. ";
}
}
?>