// MaxNumber.kt

fun main() {
    val numbers = listOf(3, 5, 7, 2, 8, 1)
    val maxNumber = findMax(numbers)
    println("El número máximo es: $maxNumber")
}

fun findMax(numbers: List<Int>): Int {
    if (numbers.isEmpty()) {
        throw IllegalArgumentException("La lista no puede estar vacía")
    }

    var max = numbers[0]
    for (number in numbers) {
        if (number > max) {
            max = number
        }
    }
    return max
}
