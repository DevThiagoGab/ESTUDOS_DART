class Produto {
  int codigoDoProduto;
  String nomeDoProduto;
  double precoDoProduto;
  double descontoDoProduto = 0;

  Produto
    ({required this.codigoDoProduto,
      required this.nomeDoProduto,
      required this.precoDoProduto,
      required this.descontoDoProduto});

  double get precoComDesconto {
    return (1 - descontoDoProduto) * precoDoProduto;
  }
}
