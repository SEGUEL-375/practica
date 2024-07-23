function numero_primo(numero: number): boolean{
    if (numero <= 1){
        return false;
    }

    for (let i=2; i <=Math.sqrt(numero); i++) {

        if (numero % i === 0){
          return false;
        }
    }

    return false;
}

const numero : number = 17;

if(numero_primo(numero)){
    console.error ('${numero} es un numero primo')
}

else {
  console.error ('${numero} no es numero primo')
}


