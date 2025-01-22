main() {
  // Sem interpolação

  String nome1 = 'Thiago';
  String status1 = 'Aprovado';
  double nota1 = 9.2;
  // Como nota é do tipo double, usa o toString para transfomar em string
  String frase1 =
      nome1 + " está " + status1 + " com a nota " + nota1.toString() + '!';

  // Com interpolção

  String nome2 = 'Rayssa';
  String status2 = 'Aprovada';
  double nota2 = 9.9;
  // A variável nota não precisa do toString pois na interpolação já é chamado
  // $ interpreta como uma variável, com uma \ ele interpreta como o valor real (caso precise usar o simbolo cifrão)
  String frase2 = ("$nome2 está $status2 com a nota $nota2!");
  String frase3 = ("\$nome2 está $status2 com a nota $nota2!");
  String frase4 = ("\$nome2 está $status2 com a nota $nota2.toString()!");
  String frase5 = ("\$nome2 está $status2 com a nota ${nota2.toString()}!");

  print(frase1);
  print(frase2);
  print(frase3);
  print(frase4);
  print(frase5);

  // A chave interpreta o que está no dolar
  print("1 + 1 = ${1 + 1}");
}
