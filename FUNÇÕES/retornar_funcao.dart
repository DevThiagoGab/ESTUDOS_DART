void main() {
  print(somaParcial(2)(10));

  var somaCom10 = somaParcial(10);

  print(somaCom10(3));
  print(somaCom10(7));
  print(somaCom10(19));
  print(somaCom10(31));
}

int Function(int) somaParcial(int a) {
  return (int b) {
    return a + b;
  };
}
