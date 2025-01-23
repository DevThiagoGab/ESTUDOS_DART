import 'dart:math';

void main() {
  // Com o return eu posso usar o resultado para armazenar em uma variável
  int resultado = somar(2, 3);
  print(resultado);
  resultado *= 2;
  print(resultado);

  print(somarNumerosAleatorios());
  print('O resultado é: ${somarNumerosAleatorios()}');
}

int somar(int a, int b) {
  return a + b;
}

int somarNumerosAleatorios() {
  int numero1 = Random().nextInt(11);
  int numero2 = Random().nextInt(11);
  print("Os número selecionados foram: $numero1 e $numero2");
  return numero1 + numero2;
}
