void main() {
  int Function(int, int) soma1 = somaFn;
  print(soma1(20, 313));

// Pode ser dynamic utilizando o var
  int Function(int, int) soma2 = (x, y) {
    return x + y;
  };
  print(soma2(20, 313));
}

int somaFn(int a, int b) {
  return a + b;
}
