//#
//##
//###
//####
//#####
//######

main() {
  // Como eu resolvi 
  var jogoDaVelha = ['#', '##', '###', '####', '#####', '######'];
  for (var ler in jogoDaVelha) {
    print(ler);
  }
  // Como o professor queria
  for (var valor = '#'; valor != '#######'; valor += '#') {
    print(valor);
  }
}

