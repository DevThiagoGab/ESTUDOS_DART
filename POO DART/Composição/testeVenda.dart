import './clientes.dart';
import './produto.dart';
import './venda_item.dart';
import './venda.dart';

void main() {
  var vendas = [
    Venda(
        clientes: new Clientes(
          nome: 'Thiago Gabriel', 
          cpf: '123.456.789-10'),
        itens: <VendaItem>[
          VendaItem(
              quantidadeDeItens: 10,
              produto: Produto(
                  codigoDoProduto: 1,
                  nomeDoProduto: 'Caneta Bic',
                  precoDoProduto: 3.00,
                  descontoDoProduto: 0.5)),
          VendaItem(
              quantidadeDeItens: 2,
              produto: Produto(
                  codigoDoProduto: 2,
                  nomeDoProduto: 'Caderno',
                  precoDoProduto: 20.00,
                  descontoDoProduto: 0.5)),
          VendaItem(
              quantidadeDeItens: 3,
              produto: Produto(
                  codigoDoProduto: 3,
                  nomeDoProduto: 'Borracha',
                  precoDoProduto: 1.00,
                  descontoDoProduto: 0.5)),
          VendaItem(
              quantidadeDeItens: 2,
              produto: Produto(
                  codigoDoProduto: 4,
                  nomeDoProduto: 'Lápis',
                  precoDoProduto: 2.00,
                  descontoDoProduto: 0.5))
        ]),
        Venda(clientes: new Clientes(
          nome: 'Rayssa Vitoria', 
          cpf: '123.456.789-00'),
        itens: <VendaItem>[
          VendaItem(
            quantidadeDeItens: 10,
            produto: Produto(
              codigoDoProduto: 4, 
              nomeDoProduto: 'Lápis', 
              precoDoProduto: 2.00, 
              descontoDoProduto: 0.5)),
              VendaItem(
                quantidadeDeItens: 10,
                produto: Produto(
                  codigoDoProduto: 3, 
                  nomeDoProduto: 'Borracha', 
                  precoDoProduto: 1.00, 
                  descontoDoProduto: 0.5)),
                  VendaItem(
                    quantidadeDeItens: 2,
                    produto: Produto(
                      codigoDoProduto: 2, 
                      nomeDoProduto: 'Caderno', 
                      precoDoProduto: 20.00, 
                      descontoDoProduto: 0.5))]
        )
  ];

  // Itera sobre cada venda na lista de vendas
  for (var venda in vendas) {
    print('==========================================\n');
    print('Cliente: ${venda.clientes.nome}');
    print('CPF: ${venda.clientes.cpf}');
    print('Itens comprados:');

    // Itera sobre os itens da venda
    for (var item in venda.itens) {
      print(
          '\nProduto: ${item.produto.nomeDoProduto}, Código: ${item.produto.codigoDoProduto}. '
          '\nQuantidade: ${item.quantidadeDeItens}. '
          '\nValor Unitário: R\$${item.produto.precoDoProduto.toStringAsFixed(2)}. '
          'Valor com Desconto: R\$${item.produto.precoComDesconto.toStringAsFixed(2)}.');
    }

    print('\nValor Total da Venda: R\$${venda.valorTotal.toStringAsFixed(2)}');
    
  }
}
  /*
    print('=================================================');

  //Exibe o nome e cpf do cliente
  print('Cliente ${venda.clientes.nome}');
  print('CPF ${venda.clientes.cpf}');
  // Exibe o total
  print("Valor total: R\$ ${venda.valorTotal}");

  print('=================================================');

  // Exibe o código o nome e o preço do primeiro produto da lista
  print('O primeiro produto é ${venda.itens[0].produto.nomeDoProduto}.');
  print('Código: #${venda.itens[0].produto.codigoDoProduto}.');
  print('Preço: R\$ ${venda.itens[0].produto.precoDoProduto}.');

  print('=================================================');

  // Exibe o código o nome e o preço do segundo produto da lista
  print('O segundo produto é ${venda.itens[1].produto.nomeDoProduto}.');
  print('Código: #${venda.itens[1].produto.codigoDoProduto}.');
  print('Preço: R\$ ${venda.itens[1].produto.precoDoProduto}.');

  print('=================================================');

  // Exibe o código o nome e o preço do terceiro produto da lista
  print('O terceiro produto é ${venda.itens[2].produto.nomeDoProduto}.');
  print('Código: #${venda.itens[2].produto.codigoDoProduto}.');
  print('Preço: R\$ ${venda.itens[2].produto.precoDoProduto}.');

  print('=================================================');

  // Exibe o código o nome e o preço do quarto produto da lista
  print('O quarto produto é ${venda.itens[3].produto.nomeDoProduto}.');
  print('Código: #${venda.itens[3].produto.codigoDoProduto}.');
  print('Preço: R\$ ${venda.itens[3].produto.precoDoProduto}.');

  print('=================================================');
   */

