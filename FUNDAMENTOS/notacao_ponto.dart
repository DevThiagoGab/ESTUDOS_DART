main() {
  // roundToDouble arredonda para mais
  double nota1 = 6.9.roundToDouble();
  print(nota1);
  // truncateToDouble arredonda para menos
  double nota2 = 6.9.truncateToDouble();
  print(nota2);

  String s1 = 'Thiago Gabriel';
  String s2 = s1.substring(0, 8);
  String s3 = s2.toUpperCase();
  String s4 = s3.padRight(10, "!");

  var s5 = 'Thiago Gabriel'.substring(0, 8).toUpperCase().padRight(15, "!");
  //Pode ser feito quebrando em mais de uma linha 
  //.substring(0, 8)
  //.toUpperCase()
  //.padRight(15, "!");
  print(s2);
  print(s4);
  print(s5);
}
