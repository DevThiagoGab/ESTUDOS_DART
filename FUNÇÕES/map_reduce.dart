void main() { 
  // Lista de alunos onde cada elemento é um aluno, cada aluno é representado por um mapa com 
  // 'nome' e 'nota'.
  var alunos = [
    {'nome': 'Thiago', 'nota': 7.0},
    {'nome': 'Rayssa', 'nota': 9.8},
    {'nome': 'Ana', 'nota': 8.9},
    {'nome': 'Victor', 'nota': 9.9},
    {'nome': 'Nicole', 'nota': 5.5},
  ];
  
  // Função para pegar apenas o nome de um aluno (dado um mapa de aluno).
  // O parâmetro 'aluno' é um mapa e a função retorna o valor associado à chave 'nome'.
  String Function(Map) pegarApenasONome = (aluno) => aluno['nome'];

  // A função .map percorre a lista de alunos e aplica a função 'pegarApenasONome' a cada aluno.
  // Resultado: uma lista contendo apenas os nomes dos alunos.
  var nomes = alunos.map(pegarApenasONome);
  
  // Função que recebe uma string (nome de um aluno) e retorna a quantidade de letras no nome.
  int Function(String) quantidadeDeLetras = (texto) => texto.length;

  // A função .map percorre a lista de nomes e aplica a função 'quantidadeDeLetras' a cada nome.
  // Resultado: uma lista contendo a quantidade de letras de cada nome.
  var quantidadesDeLetras = nomes.map(quantidadeDeLetras);

  // Exibe a lista de nomes dos alunos.
  print(nomes); // Exibe: (Thiago, Rayssa, Ana, Victor, Nicole)

  // Exibe a lista de quantidades de letras de cada nome.
  print(quantidadesDeLetras); // Exibe: (6, 6, 3, 6, 6)
}