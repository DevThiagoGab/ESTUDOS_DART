import 'dart:async';
import '../modelo/carro.dart';

void main() {
  // Cria um carro com velocidade máxima de 312 km/h.
  var civic = new Carro(312);

  // Acelera o carro até atingir a velocidade máxima.
  while (!civic.estaNoLimite()) {
    print('A velocidade é ${civic.acelerar()}km/h');
  }
  // Mostra a mensagem quando a velocidade máxima é atingida.
  print(
      'O carro chegou no máximo com velocidade ${civic.velocidadeAtual}km/h.');

  // Reduz a velocidade do carro até ele parar (velocidade = 0).
  while (civic.velocidadeAtual > 0) {
    print('Freando carro ${civic.frear()}');
  }

  // Tenta alterar a velocidade para valores arbitrários (sem seguir as regras do setter).
  civic.velocidadeAtual = 500; // Não altera, pois diferença é maior que 5.
  civic.velocidadeAtual = 3; // Altera, pois está dentro das regras do setter.
  
  // Mostra que o carro parou com velocidade final (seguindo as regras do setter).
  print('O carro parou com velocidade ${civic.velocidadeAtual}km/h.');
}
