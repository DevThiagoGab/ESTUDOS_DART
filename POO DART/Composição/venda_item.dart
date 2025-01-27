import './produto.dart';

class VendaItem {
  final Produto produto;
  int quantidadeDeItens;
  double? _preco; // Usar nullable para permitir valor null

  VendaItem({required this.produto, this.quantidadeDeItens = 1})  {

  }

  // Getter para preco com inicialização tardia
  double get preco {
    // Se _preco for nulo, inicializa com o valor do preco com desconto
    if (_preco == null) {
      _preco = produto.precoComDesconto; // Inicializa o preco
    }
    return _preco!; // Usa o operador '!' para garantir que não será nulo
  }

  // Setter para preco, garantindo que o valor seja maior que 0
  void set preco(double novoPreco) {
    if (novoPreco > 0) {
      _preco = novoPreco;
    }
  }
}
