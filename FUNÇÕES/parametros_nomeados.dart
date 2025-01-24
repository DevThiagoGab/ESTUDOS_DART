void main() {
  // A ordem não importa nos parâmetros nomeados
  saudar(nome: 'Thiago', idade: 19);
  saudar(nome: 'Rayssa', idade: 19);
  saudar(idade: 12, nome: 'Ana');

  imprimirData();
  imprimirData(dia: 19);
  imprimirData(mes: 04);
  imprimirData(ano: 2005);
  imprimirData(mes: 04, ano: 2005);

}

// Quando coloca o parâmetro entre chaves, ele é definido como opcional
// Tem que passar um valor padrão, Ex: String nome = Thiago, ou definir nulo
// A interrogação permite valores nulos, nenhum valor mostrando o valor definido como padrão
saudar({String? nome, int? idade}) {
  print('Olá $nome, nem parece que você tem $idade anos.');
}

imprimirData({int? dia = 1, int? mes = 1, int? ano = 1}) {
  print('$dia/$mes/$ano');
}
