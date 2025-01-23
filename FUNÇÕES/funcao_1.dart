import 'dart:math';

void main() {
  //int a = 2;
  //int b = 3;
  //print(a + b);
  somaComPrint(2, 3);

  int c = 4;
  int d = 5;
  somaComPrint(c, d);

  somaAleatorio();
}

void somaComPrint(int a, int b) {
  print(a + b);
}

void somaAleatorio() {
  int numero1 = Random().nextInt(11);
  int numero2 = Random().nextInt(11);
  print('Os valores selecionados foram $numero1 e $numero2');
  print('Soma: ${numero1 + numero2}');
}
