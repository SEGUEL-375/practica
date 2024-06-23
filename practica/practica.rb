def practica_numeros_primos(numero)
  # Los números menores que 2 no son primos
  return false if numero < 2
  
  # Comprobar divisibilidad desde 2 hasta la raíz cuadrada del número
  (2..Math.sqrt(numero).to_i).each do |i|
    return false if numero % i == 0  # Si encontramos un divisor, el número no es primo
  end

  true  # Si no encontramos divisores, el número es primo
end

# Definir un número para comprobar
numero = 29  # Puedes cambiar este número para probar otros valores
es_primo = practica_numeros_primos(numero)

if es_primo
  puts "#{numero} es un número primo."
else
  puts "#{numero} no es un número primo."
end
