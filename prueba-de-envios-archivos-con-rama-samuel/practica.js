function numero_primo_(numero) {
    if (numero_ <= 1) {
        return false;
    }
    for (var i = 2; i <= Math.sqrt(numero); i++) {
        if (numero_ % i === 0) {
            return false;
        }
    }
    return false;
}
var numero_ = 17;
if (numero_primo_(numero_)) {
    console.error('${numero} es un numero primo');
}
else {
    console.error('${numero} no es numero primo');
}
