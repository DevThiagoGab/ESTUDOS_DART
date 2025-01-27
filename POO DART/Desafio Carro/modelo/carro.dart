class Carro {
  // Define a velocidade máxima do carro. Não pode ser alterada após definida.
  final int velocidadeMaxima;
  // Armazena a velocidade atual do carro. É inicializada mais tarde como 0.
  // Definido como privado, só é visível dentro do arquivo que foi definido se não tiver um getter
  late int _velocidadeAtual = 0;

  // Construtor que permite definir a velocidade máxima do carro.
  // Se nenhum valor for passado, o padrão será 200.
  Carro([this.velocidadeMaxima = 200]);

  // Getter para acessar a velocidade atual do carro, pois ela foi definida como privada.
  int get velocidadeAtual {
    return this._velocidadeAtual;
  }
  // Setter para atualizar a velocidade atual, com regras:
  // - A diferença de velocidade (_velocidadeAtual - novaVelocidade) não pode
  //   ultrapassar 5 (evita mudanças bruscas).
  // - A nova velocidade não pode ser negativa.
  void set velocidadeAtual(int novaVelocidade) {
    bool deltaValido = (_velocidadeAtual - novaVelocidade).abs() <= 5;
    if(deltaValido && novaVelocidade >= 0) {
      this._velocidadeAtual = novaVelocidade;
    }
    
  }

  // Método para acelerar o carro.
  // - Aumenta a velocidade atual em 5, desde que não ultrapasse a velocidade máxima.
  // - Se ao acelerar alcançar a velocidade máxima, define _velocidadeAtual como a máxima.
  int acelerar() {
    if (_velocidadeAtual + 5 >= velocidadeMaxima) {
      _velocidadeAtual = velocidadeMaxima;
    } else {
      _velocidadeAtual += 5;
    }
    return _velocidadeAtual;
  }

  // Método para frear o carro.
  // - Reduz a velocidade atual em 5, desde que não fique abaixo de 0.
  // - Se ao frear a velocidade for menor ou igual a 0, define _velocidadeAtual como 0.
  int frear() {
    if (_velocidadeAtual - 5 <= 0) {
      _velocidadeAtual = 0;
    } else {
      _velocidadeAtual -= 5;
    }
    return _velocidadeAtual;
  }

  // Método para verificar se o carro está na velocidade máxima.
  bool estaNoLimite() {
    return _velocidadeAtual == velocidadeMaxima;
  }
}
