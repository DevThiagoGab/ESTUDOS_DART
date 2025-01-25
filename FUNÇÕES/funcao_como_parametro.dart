// Explicação sobre funções nullable:
// No Dart com null safety, funções passadas como parâmetros podem ser "nullable" (ex: Function?),
// ou seja, podem ser `null`. Não podemos chamá-las diretamente sem verificar se são nulas, 
// pois isso causa um erro de compilação.
//
// Soluções:
// 1. Usar `!` (null assertion) para forçar o uso, mas isso pode gerar erros se a função for `null`.
// 2. Usar `?.call()` para chamar a função apenas se ela não for `null` (mais seguro).
// 3. Tornar as funções obrigatórias e não nulas com `required Function`, eliminando a necessidade de verificações.
//
// Aqui, usamos `?.call()` para garantir segurança ao chamar funções nullable.

import 'dart:math';

void main() {
  var minhaFuncaoPar = () => print('Eita! O valor é par.');
  var minhaFuncaoImpar = () => print('Legal! O valor é impar.');

  executar(funcaoPar: minhaFuncaoPar, funcaoImpar: minhaFuncaoImpar);
}

executar({Function? funcaoPar, Function? funcaoImpar}) {
  int numeroGerado = Random().nextInt(11);

  print('O número selecionado foi $numeroGerado');

  numeroGerado % 2 == 0 ? funcaoPar?.call() : funcaoImpar?.call();
  // funcaoPar?.call(): O operador ?. chama a função apenas se ela não for null. Se for null, nada acontece.
  // Isso evita o uso do operador de null assertion (!), tornando o código mais seguro.

  // Seria do mesmo jeito com um ifElse
  /*if (Random().nextInt(11) % 2 == 0) {
    funcaoPar();
  } else {
    funcaoImpar();
  }*/
}
