void main() { 
  // Primeiro exemplo - Sem usar o método 'reduce'
  var notas1 = [7.3, 5.4, 7.7, 8.1, 5.5, 4.9, 9.1, 10.0];
  double total1 = 0;  // Variável para acumular a soma das notas

  // Percorre cada nota na lista e vai somando no 'total1'
  for (var nota in notas1) {
    total1 += nota;  // Soma a nota atual no total
  }
  print(total1);

  // Segundo exemplo - Usando o método 'reduce' para somar as notas
  // Lista de notas
  var notas2 = [7.3, 5.4, 7.7, 8.1, 5.5, 4.9, 9.1, 10.0];
  
  // 'reduce' aplica a função 'somar' para combinar os elementos da lista em um único valor
  // Aqui, ele soma todos os valores da lista, acumulando o resultado em 'total2'
  var total2 = notas2.reduce(somar);  // 'reduce' usa a função 'somar' para combinar os elementos
  print(total2);  // Exibe o resultado da soma usando 'reduce'

  // Exemplo de uso de 'reduce' com uma lista de nomes
  var nomes = ['Thiago', 'Rayssa', 'Ana', 'Victor', 'Dimitrys', 'Izabelle', 'Elson', 'Nicole'];
  
  // 'reduce' também pode ser usado para concatenar strings
  var totalNomes = nomes.reduce(juntar);  // 'reduce' usa a função 'juntar' para concatenar os nomes
  print(totalNomes);  // Exibe todos os nomes juntos, separados por vírgulas
}

// Função 'somar' para somar dois valores (acumulador e o elemento da lista)
// Nota: Os print() dentro das funções somar e juntar mostram como o reduce está processando os
// dados, imprimindo o valor do acumulador e o valor do elemento sendo combinado.
double somar(double acumulador, double elemento) {
  print('$acumulador + $elemento =');  // Exibe o valor atual do acumulador e o elemento
  return acumulador + elemento;  // Retorna a soma dos dois valores
}

// Função 'juntar' para concatenar duas strings
String juntar(String acumulador, String elemento) {
  print('$acumulador => $elemento');  // Exibe o acumulador e o elemento sendo concatenados
  return "$acumulador,$elemento";  // Retorna o acumulador com o elemento concatenado
}