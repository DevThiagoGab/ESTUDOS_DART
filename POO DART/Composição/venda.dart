import './clientes.dart';
import './venda_item.dart';

class Venda {
  Clientes clientes;
  List<VendaItem> itens;

  // Não é possível definir um valor padrão para parâmetros nomeados que são marcados com
  // required.
  // Quando você marca um parâmetro como required, ele é obrigatório e não deve ter um valor padrão
  // atribuído.
  Venda({required this.clientes, this.itens = const []});

  double get valorTotal {
    return itens.map((item) => item.preco * item.quantidadeDeItens)
    .reduce((total, atual) => total + atual);
  }
}
