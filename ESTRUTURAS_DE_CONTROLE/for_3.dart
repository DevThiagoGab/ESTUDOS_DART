// For é indicado para quando tem uma quantidade certa de vezes que irá executar
main() {
  Map<String, double> notas = {
    'Thiago Gabriel': 9.9,
    'Ana Leticia': 9.8,
    'Rayssa Vitoria': 9.7,
    'Victor Rafael': 9.6,
    'Dimitrys Belarmino': 9.5,
    'Izabelle Freire': 9.4,
    'Elson Luiz': 9.3,
  };

  for (String nome in notas.keys) {
    print("Nome do aluno é $nome");
  }

  for (double notas in notas.values) {
    print("As notas são $notas");
  }

  for (var registro in notas.entries) {
    print("O ${registro.key} tem nota ${registro.value}");
  }
}
