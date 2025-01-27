/*
Inicialização direta: Quando há um valor padrão óbvio: int mes = 1: // Inicializa a variável com o valor padrão

Construtor: Quando a inicialização depende de valores externos: // Construtor que exige a inicialização da variável. Exemplo(this.mes);

late: Quando você sabe que a inicialização ocorrerá, mas não imediatamente: late int mes;

Nullable (?): Quando faz sentido a variável não ter um valor inicial e ser nula: int? mes; // Agora a variável pode ser null
 */
class Data {
  // Declaração de variáveis de instância para dia, mês e ano.
  // A palavra-chave `late` indica que as variáveis serão inicializadas posteriormente.
  late int dia;
  late int mes;
  late int ano;

  // Para que o resultado possa ser armazenado em uma variável, o método tem que ter um retorno
  String dataFormatada() {
    return '$dia/$mes/$ano';
  }
}

void main() {
  // Criação de uma instância (objeto) da classe `Data`
  var dataAniversario = new Data();
  // Inicialização dos valores para os atributos do objeto
  dataAniversario.dia = 19;
  dataAniversario.mes = 04;
  dataAniversario.ano = 2005;

  // Criação de outra instância (objeto) da classe `Data`
  Data dataCompra = new Data();
  // Inicialização dos valores para os atributos do objeto
  dataCompra.dia = 26;
  dataCompra.mes = 01;
  dataCompra.ano = 2025;

  // Exibe no console as datas armazenadas em cada objeto utilizando o método criado.
  String data1 = dataAniversario.dataFormatada();

  print('A data do aniversário é $data1'); // Armazenando retorno em variável
  print('A data da compra foi ${dataCompra.dataFormatada()}'); // Retorno direto na exibição
}
