//  Função Genérica: A função sextoElementoV2 é uma função genérica, ou seja, ela pode ser usada com qualquer tipo de dado (não só int). O tipo é determinado quando você a chama, como int no exemplo.
//  Tipo Nulo (E?): Quando usamos E?, estamos dizendo que o valor pode ser de tipo E ou null. Isso permite que a função retorne null caso a lista não tenha o número de elementos esperado.

void main() {
  // Cria uma lista de números inteiros.
  var lista = [3, 6, 7, 12, 45, 75, 1];

  // Chama a função 'segundoElementoV1' e imprime o segundo elemento da lista.
  // A função 'segundoElementoV1' retorna o segundo item ou null se a lista não tiver 2 elementos.
  print(segundoElementoV1(lista));

  // Declara uma variável 'segundoElemento' que pode ser nula (int?).
  // Chama a função 'sextoElementoV2' para pegar o sexto elemento da lista.
  // A função retorna o sexto item ou null se a lista não tiver 6 ou mais itens.
  int? segundoElemento = sextoElementoV2<int>(lista);
  print(segundoElemento);  // Imprime o valor retornado, que pode ser null.

  // Chama novamente a função 'sextoElementoV2' mas sem especificar o tipo genérico.
  // Nesse caso, o tipo genérico 'int' é inferido automaticamente pelo compilador.
  segundoElemento = sextoElementoV2(lista);
  print(segundoElemento);  // Imprime o valor retornado, que pode ser null.
}

// Função que recebe uma lista e retorna o segundo elemento ou null
// caso a lista tenha menos de 2 elementos.
Object? segundoElementoV1(List lista) {
  return lista.length >= 2 ? lista[1] : null;  // Retorna o segundo elemento ou null
}

// Função genérica que recebe uma lista e retorna o sexto elemento ou null
// caso a lista tenha menos de 6 elementos. O tipo do elemento é determinado
// pelo tipo genérico 'E', que pode ser qualquer tipo, como int, String, etc.
E? sextoElementoV2<E>(List<E> lista) {
  return lista.length >= 6 ? lista[5] : null;  // Retorna o sexto elemento ou null
}
