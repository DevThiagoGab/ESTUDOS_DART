// Função filter de maneira simples com ferramentas do dart
void main() { 
  // Cria uma lista chamada 'notas' com algumas notas de alunos.
  var notas = [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1];

  // Cria uma função chamada 'notasBoasFuncao', que retorna 'true' se a nota for maior ou igual a 7.
  var notasBoasFuncao = (double nota) => nota >= 7;

  // Cria uma função chamada 'notasRuinsFuncao', que retorna 'true' se a nota for menor que 7.
  var notasRuinsFuncao = (double nota) => nota < 7;

  // Where retorna um valor bool, se o valor for verdadeiro o elemento fará parte da lista gerada,
  // se for falso o elemento não fará parte da lista gerada
  // Dentro do where ele percorre toda a lista e testa com if
  // O método 'where' percorre toda a lista 'notas' e aplica a função 'notasBoasFuncao' ou 'notasRuinsFuncao'.
  // Ele cria uma nova lista com os valores que atendem à condição (verdadeiro).
  var notasBoas = notas.where(notasBoasFuncao);
  var notasRuins = notas.where(notasRuinsFuncao);

  // Imprime a lista original de notas.
  print('As notas foram $notas');

  // Imprime as notas boas (maiores ou iguais a 7).
  print('As melhores notas foram $notasBoas');

  // Imprime as notas ruins (menores que 7).
  print('As piores notas foram $notasRuins');
}