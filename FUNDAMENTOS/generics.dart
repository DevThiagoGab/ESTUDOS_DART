main() {
  var listaCoisas = [  'banana', true, 123, 4.76, [1, 2, 3]];
  // Quando define o tipo de uma lista, ela só pode conter elementos do mesmo tipo
  List<String> frutas = ['banana', 'maca', 'melancia'];
  frutas.add('laranja');
  print(listaCoisas);
  print(frutas);

  Map<String, double> salarios = {
    'Gerente': 5000.50,
    'Vendedor': 1412.50,
    'Estagiário': 700.50,
  };

  print(salarios);
}
