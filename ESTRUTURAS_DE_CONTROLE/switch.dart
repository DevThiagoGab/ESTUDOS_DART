import 'dart:math';

main() {
  var nota = Random().nextInt(11);
  print("A nota selecionada foi $nota");

  switch (nota) {
    case 10:
    case 9:
      print("Quadro de honra!");
      print("Parabéns");
      break;
    case 8:
    case 7:
      print("Aprovado!");
      break;
    case 6:
    case 5:
    case 4:
      print("Em recuperação");
      break;
    default:
      print("Reprovado!");
  }
  print("Fim!");
}
