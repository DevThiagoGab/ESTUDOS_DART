// Este código define uma função chamada `executarPor`, que executa outra função (`funcao`)
// várias vezes, com base no número especificado (`quantidade`). A função `funcao` recebe
// um valor (`valor`) como parâmetro em cada execução.
//
// No exemplo do `main`, a função `print` é passada como parâmetro para `executarPor`,
// que a chama 10 vezes, exibindo a mensagem 'Muito legal!' no console.

void main() {
  // Definindo uma função anônima e atribuindo a ela a variável 'meuPrint'.
  // A função recebe uma String e imprime no console, depois retorna a mesma String.
  var meuPrint = (String valor) {
    print(valor);
    return valor;
  };
  // Chamando a função 'executarPor', passando os parâmetros:
  // 10 (quantidade de vezes), 'meuPrint' (a função a ser executada),
  // e 'Muito legal!' (o valor a ser impresso e retornado pela função 'meuPrint')
  int tamanho = executarPor(10, meuPrint, 'Muito Legal!!');
  print('O tamanho da String é $tamanho');
}

// Função 'executarPor' recebe três parâmetros:
// - 'quantidade' (int) para definir quantas vezes a função será executada.
// - 'funcao' (String Function(String)) que é um tipo de função que recebe um String e retorna um String.
// - 'valor' (String) que é o valor a ser passado para a função 'funcao'.
int executarPor(int quantidade, String Function(String) funcao, String valor) {
  String textoCompleto = '';
  for (int i = 0; i < quantidade; i++) {
    textoCompleto += funcao(valor);
  }
  // Retorna o tamanho do texto gerado pela execução da função
  return textoCompleto.length;
}
