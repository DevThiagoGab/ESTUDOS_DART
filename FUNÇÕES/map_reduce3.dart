void main() {
  // Lista de alunos, onde cada aluno é representado por um mapa contendo 'nome' e 'nota'.
  var alunos = [
    {'nome': 'Thiago', 'nota': 7.0},
    {'nome': 'Rayssa', 'nota': 9.8},
    {'nome': 'Ana', 'nota': 8.9},
    {'nome': 'Victor', 'nota': 9.9},
    {'nome': 'Nicole', 'nota': 5.5},
  ];

  // Filtra as melhores notas (>= 7.5), arredonda cada nota e calcula a média dessas notas
  var mediaMelhoresNotas = alunos
      .map((aluno) => aluno['nota'])  // Extrai as notas dos alunos
      .map((nota) => (nota as double).roundToDouble())  // Arredonda as notas
      .where((nota) => nota >= 7.5);  // Filtra as notas que são >= 7.5

  // Usa o método reduce para somar todas as notas das melhores notas e depois calcula a média
  var total = mediaMelhoresNotas.reduce((acumulador, elemento) => acumulador + elemento);

  // Para arredondar o resultado da média, deve aplicar o roundToDouble() ao valor da média
  // (que é um double), e não no tamanho da lista.
  /* Errado: print('O valor da média das melhores notas é: ${total / mediaMelhoresNotas.length.roundToDouble()}'); */
  // Certo:
  print('O valor da média das melhores notas é: ${(total / mediaMelhoresNotas.length).roundToDouble()}');

  // Calcula a média de todas as notas, arredondando cada uma e somando com reduce
  var mediaNotas = alunos
      .map((aluno) => aluno['nota'])  // Extrai as notas dos alunos
      .map((nota) => (nota as double).roundToDouble())  // Arredonda as notas
      .reduce((acumulador, elemento) => acumulador + elemento);  // Soma todas as notas

  print('A média de notas é: ${mediaNotas / alunos.length}');
}