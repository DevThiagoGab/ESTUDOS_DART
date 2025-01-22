/*
  -List
  -Set
  -Map
*/

import 'dart:math';

main() {
  //List (permite elementos repetidos)
  // 0        1       2
  var aprovados = ['Thiago', 'Ana', 'Rayssa'];
  aprovados.add('Girlene');
  // var aprovados = ['Thiago', 'Ana', 'Rayssa'];
  print(aprovados is List);
  print(aprovados);
  // Acessar os elementos
  print(aprovados.elementAt(2));
  print(aprovados[1]);
  print(aprovados.length);

  //Map (as chaves não aceitam repetição, os valores aceitam)
  // As chaves servem tanto para definir um bloco de comandos quanto a estrutura de um Map
  var telefones = {
    //chave       valor
    'Thiago': '81 982237886',
    'Ana': '81 912345678',
    'Rayssa': '81 987654321',
  };
  print(telefones is Map);
  print(telefones);
  print(telefones['Thiago']);
  print(telefones.length);
  print(telefones.values);
  print(telefones.keys);
  print(telefones.entries);

  // Set (não permite elementos repetidos)
  // Como todos os elemtentos foram do tipo string, o set não permite a adição de elementos de outro tipo
  var times = {'Sport', 'Santa Cruz', 'Náutico'};
  print(times is Set);
  times.add('Retrô');
  print(times.length);
  print(times.contains('Sport'));
  print(times.contains('Bahia'));
  print(times.first);
  print(times.last);
  print(times);
}
