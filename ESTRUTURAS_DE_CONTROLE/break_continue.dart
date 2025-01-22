main() {
  for (int a = 0; a <= 10; a++) {
    if (a == 6) {
      break;
    }
    print(a);
  }
  print("Depois do laço for #01");

  for (int a = 0; a <= 10; a++) {
    if (a % 2 == 0) {
      continue; // Pula para a próxima iteração se 'a' for par.
    }
    print(a); //Só será executado para valores de 'a' que não forem pares.
  }
  print("Depois do laço for #02");
}
