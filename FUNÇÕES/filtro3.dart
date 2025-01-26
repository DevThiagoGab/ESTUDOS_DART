// Criação de uma Função genérica que filtra uma lista com base em uma condição fornecida 
// pela função 'funcao'.
// Ela recebe uma lista e uma função que retorna um valor booleano (verdadeiro ou falso).
// Function filtra os elementos da lista e retornar uma lista filtrada
// Lista filtrada               Lista completa
List<generic>? filtrar<generic>(List<generic> lista, bool Function(generic) funcao) {
  List<generic> listaFiltrada = [];  // Lista onde os elementos filtrados serão armazenados.

  // Loop que percorre toda a lista original.
  for (generic elemento in lista) {
    // Aplica a função de filtro para verificar se o elemento deve ser mantido.
    if (funcao(elemento)) {
      // Se a função retornar 'true', o elemento é adicionado à lista filtrada.
      listaFiltrada.add(elemento);
    }
  }

  return listaFiltrada;  // Retorna a lista filtrada.
}

void main() {

  var notas = [8.2, 7.3, 6.8, 5.4, 2.7, 9.3];

  // Função que define a condição de boas notas (maior ou igual a 7).
  var boasNotasFuncao = (double nota) => nota >= 7;

  // Função que define a condição de notas ruins (menor que 7).
  var notasRuinsFuncao = (double nota) => nota < 7;

  // Chama a função 'filtrar' para obter apenas as boas notas e armazena na variável 
  // (maiores ou iguais a 7).
  var soNotasBoas = filtrar(notas, boasNotasFuncao);

  // Chama a função 'filtrar' para obter apenas as notas ruins e armazena na variável 
  // (menores que 7).
  var soNotasRuins = filtrar(notas, notasRuinsFuncao);

  print('As notas boas foram $soNotasBoas');
  print('As piores notas foram $soNotasRuins');


  var nomes = ['Thiago', 'Ana', 'Rayssa', 'Victor', 'Nic'];

  // Função que define a condição para nomes grandes (com 5 ou mais letras).
  var nomesGrandesFuncao = (String nome) => nome.length >= 5;

  // Função que define a condição para nomes pequenos (com menos de 5 letras).
  var nomesPequenosFuncao = (String nome) => nome.length < 5;

  // Chama a função 'filtrar' para obter apenas os nomes grandes e armazena na variável  
  // (com 5 ou mais letras).
  var soNomesGrandes = filtrar(nomes, nomesGrandesFuncao);

  // Chama a função 'filtrar' para obter apenas os nomes pequenos e armazena na variável 
  // (com menos de 5 letras).
  var soNomesPequenos = filtrar(nomes, nomesPequenosFuncao);


  print('Os maiores nomes são $soNomesGrandes');
  print('Os menores nomes são $soNomesPequenos');
}
