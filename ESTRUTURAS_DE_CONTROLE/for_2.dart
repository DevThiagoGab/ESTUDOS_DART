// For in
main() {
  // Método tradicional para percorrer a lista
  var notas = [8.9, 9.3, 10.0, 5.5];
  for (var i = 0; i < notas.length; i++) {
    print("Nota ${i + 1} = ${notas[i]}.");
  }

  // Método indicado usando For in
  var notas2 = [8.9, 9.3, 10.0, 5.5];
  // Lado direito a lista, lado esquerdo é a variável que armazenará os valores das notas
  for (var nota in notas2) {
    print("O valor da nota é $nota.");
  }

  print("Fim!");
  
}
