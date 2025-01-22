import 'dart:io';

// While é indicado para quando não tem uma quantidade certa de vezes que irá executar
main() {
  // Pode ser usado o For
  int a = 0;
  while (a <= 10) {
    stdout.write(" $a ");
    a++;
  }
  // Maneira correta de usar o while 
  var digitado = '';
  while (digitado != 'Sair') {
    stdout.write(" Digite algo ou sair: ");
    digitado = stdin.readLineSync().toString();
  }
  print("Fim!");
}
