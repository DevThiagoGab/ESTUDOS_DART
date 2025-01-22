void main() {
  bool ehFragil = true;
  bool ehCaro = false;

  // Operador "E" => AND lógico
  print("É frágil e caro? ${ehFragil && ehCaro}");

  // Operador "OU" => OR lógico
  print("É frágil ou caro? ${ehFragil || ehCaro}");

  // Operador "OU (exclusivo)" =>XOR lógico (só funciona se escolhe apenas um)
  print("É frágil ou caro? ${ehFragil ^ ehCaro}"); // Um tem que ser verdadeiro para ser verdadeiro

  // Operador "! (negação)" => NOT (unário/prefix)
  print(!ehCaro);

  // Exemplo de "OU EXCLUSIVO"
  bool chave1 = true; // A primeira chave foi inserida
  bool chave2 = false; // A segunda chave não foi inserida

  // XOR lógico: apenas uma das chaves deve estar inserida
  bool portaAbre = (chave1 || chave2) && !(chave1 && chave2);

  /*
  (chave1 || chave2): Verifica se pelo menos uma das chaves foi inserida.
  !(chave1 && chave2): Garante que ambas as chaves não estão inseridas ao mesmo tempo.
  A combinação das duas condições cria o comportamento do XOR.
  Resultados possíveis
  chave1 = true, chave2 = false → Porta abre (XOR = true).
  chave1 = false, chave2 = true → Porta abre (XOR = true).
  chave1 = true, chave2 = true → Porta NÃO abre (XOR = false).
  chave1 = false, chave2 = false → Porta NÃO abre (XOR = false).
   */

  if (portaAbre) {
    print("A porta abriu porque apenas uma chave está inserida.");
  } else {
    print("A porta NÃO abriu porque ambas ou nenhuma chave estão inseridas.");
  }
}
