void main() {
  juntar(1, 9);
  juntar('Bom ', 'dia!');
  juntar('O valor de PI é: ', 3.1415);
  String resultado = juntar('Hello ', 'Word!');
  print(resultado.toUpperCase());
}

String juntar(dynamic a, b) {
  print(a.toString() + b.toString());
  return a.toString() + b.toString();
}
