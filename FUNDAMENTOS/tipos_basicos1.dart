/*
  -Números (int, double)
  -String
  -Booleano (bool)
  -dynamic
*/

main() {
  //var entende qual o tipo está sendo usado assim que a variável é declarada

  int n1 = 3;
  double n2 = -5.67.abs();
  //  O método abs (absoluto) retorna o número sem considerear o sinal
  double n3 = double.parse("12.765");
  // Parse converte de string para valor numérico
  num n4 = 6;
  print(n1 + n2 + n3 + n4);

  n4 = 6.7;
  print(n1 + n2 + n3 + n4);

  String s1 = "Bom";
  String s2 = " dia";
// O método toUpperCase transforma todas as letras em maiúsculas
  print(s1 + s2.toUpperCase() + "!!!");

  bool estaChovendo = true;
  bool muitoFrio = false;
  print(estaChovendo && muitoFrio);

  dynamic x = "Um texto bem legal";
  print(x);

  x = 123;
  print(x);

  x = false;
  print(x);
}
