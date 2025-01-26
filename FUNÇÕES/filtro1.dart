// Função filter que geralmente é feita 
void main() {
  // Cria uma lista 'notas' com alguns valores de notas dos alunos.
  var notas = [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1];

  // Cria duas listas vazias para armazenar: uma para as notas boas e outra para as notas ruins.
  var notasBoas = [];
  var notasRuins = [];

  // Loop que percorre todas as notas na lista 'notas'.
  for (var nota in notas) {
    // Se a nota for maior ou igual a 7, ela é considerada uma boa nota e é adicionada à lista 'notasBoas'.
    if (nota >= 7) {
      notasBoas.add(nota);
    } else {
      // Caso contrário, a nota é considerada ruim e é adicionada à lista 'notasRuins'.
      notasRuins.add(nota);
    }
  }

  // Imprime a lista original de notas.
  print('As notas foram $notas');

  // Imprime a lista de notas boas (maiores ou iguais a 7).
  print('As melhores notas foram $notasBoas');

  // Imprime a lista de notas ruins (menores que 7).
  print('As piores notas foram $notasRuins');
}