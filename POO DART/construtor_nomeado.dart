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

  // Construtor padrão (só pode ter um construtor com o mesmo nome da classe)
  // Data(int dia, int mes, int ano) {
  //  this.dia = dia;
  //  this.mes = mes;
  //  this.ano = ano;
  // }

  // Construtor simples (Os colchetes fazem os parâmetros serem opcionais e passam um valor padrâo)
  Data([this.dia = 1, this.mes = 1, this.ano = 2000]);

  // Construtor nomeado
  // Data = nome da classe, .com = nome do construtor, Chaves definem parâmetros nomeados
  Data.com({this.dia = 1, this.mes = 1, this.ano = 2000});
  Data.ultimoDiaDoAno(this.ano) {
    dia = 31;
    mes = 12;
  }

  // Para que o resultado possa ser armazenado em uma variável, o método tem que ter um retorno
  String dataFormatada() {
    return '$dia/$mes/$ano';
  }

  // Método para retornar o método dataFormatada, pois na exibição sem esse retorno aparece //
  // "Instance of 'Data'"
  String toString() {
    return dataFormatada();
  }
}

void main() {
  // Criação de uma instância (objeto) da classe `Data`
  var dataAniversario = new Data(19, 04, 2005);
  // Inicialização dos valores para os atributos do objeto
  // dataAniversario.dia = 19;
  // dataAniversario.mes = 04;
  // dataAniversario.ano = 2005;

  // Criação de outra instância (objeto) da classe `Data`
  Data dataCompra = new Data(26, 01, 2025);
  Data semValor = new Data();
  // Inicialização dos valores para os atributos do objeto
  // dataCompra.dia = 26;
  // dataCompra.mes = 01;
  // dataCompra.ano = 2025;

  // Exibe no console as datas armazenadas em cada objeto utilizando o método criado.
  String data1 = dataAniversario.dataFormatada();

  print('A data do aniversário é $data1'); // Armazenando retorno em variável
  print(
      'A data da compra foi ${dataCompra.dataFormatada()}'); // Retorno direto na exibição
  print(
      'Data com valor padrão $semValor'); // Retorno padrão do construtor com parâmetro opcional
  print(Data()); // Retorno padrão direto no print
  print(Data(20)); // Retorno padrão adicionando um valor e o resto padrão
  print(
      Data(20, 12)); // Retorno padrão adicionando dois valores e o resto padrão
  print(Data(20, 12, 2024)); // Retorno fornecendo todos valores e nenhum padrão
  // OBS: Precisa estar na ordem pois são posicionais
  // Quando é nomeado a posição não importa

  // Construtor nomeado
  print(Data.com(ano: 2035));

  // A ordem não afeta
  var dataFinal = Data.com(ano: 2070, mes: 12, dia: 31);
  print('A data completa é $dataFinal');

  print(Data.ultimoDiaDoAno(2024));
}
