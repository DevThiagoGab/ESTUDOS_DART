import 'dart:io';

main() {
  // Área da circunferência: PI * raio * raio
  // final é uma constante em Dart
  // O print pula para a linha de baixo, para exibir na mesma linha usa o stdout.write
  // final é usado para quando a variável está em execução 
  // Const é para um valor definido no código
  const PI = 3.1415;
  stdout.write('Informe o raio: ');
  var entradaDoUsuario = stdin.readLineSync()!;
  final double raio = double.parse(entradaDoUsuario);

  final area = PI * raio * raio;

  print("O valor da área é: " + area.toString());
}
