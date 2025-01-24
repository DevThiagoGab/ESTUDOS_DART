void main() {
  saudar('Thiago');
  saudar('Rayssa', 'Olá');

  imprimirData(19, 04, 2005);
  imprimirData(19, 04);
  imprimirData(19);
  imprimirData();
}

// Quando coloca o parâmetro entre colchetes, ele é definido como opcional
void saudar(String nome, [String mensagem = 'Bem-vindo']) {
  print('$mensagem, $nome!');
}

imprimirData([int dia = 1, int mes = 1, int ano = 2000]) {
  print('$dia/$mes/$ano');
}
