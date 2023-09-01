void main() {
  String nome = 'laranja';
  double peso = 100.2;
  String cor = 'verde e Amarela';
  String sabor = 'Doce e cítrica';
  int diasDesdeColheita = 25;
  bool isMadura;

  if (diasDesdeColheita >= 30) {
    isMadura = true;
  } else {
    isMadura = false;
  }

  Fruta fruta01 = Fruta(nome, peso, cor, sabor, diasDesdeColheita);

  Legumes madioca1 = Legumes('Macaxeira', 1200, 'Marrom', true);

  Fruta banna1 = Fruta('Banana', 75, 'Amarela', 'Doce', 12);

  Nozes macadamia = Nozes('Macadâmia', 2, 'Branco Amarelado', 'Doce', 20, 35);

  Citricas limao1 = Citricas('Limão', 100, 'Verde', 'Azedo', 5, 9);

// Chamando a Função printAlimento da classe Alimento, aqui estamos usando os metedos da class passando paramentros para elas.
  madioca1.conzinha();
  banna1.printAlimento();
  macadamia.printAlimento();
  limao1.fazerSuco();

  banna1.separarIngredientes();
  macadamia.fazerMassa();
}

// fazendo a hereça, fruta é herença de Alimentos.
class Fruta extends Alimento implements Bolo {
  // Propriedade da class
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;
  // Contrutor da class
  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

// Metedos
  void estaMaduda(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        "A sua $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura para comer! Ela está madura? $isMadura ");
  }

  void fazerSuco() {
    print('voce fez um ótimo suco de $nome');
  }

  @override
  void separarIngredientes() {
    // TODO: implement separarIngredientes

    print('Pegar as frutas $nome');
  }

  @override
  void fazerMassa() {
    // TODO: implement fazerMassa
    print('Misturar toda as frutas depois de batida');
  }

  @override
  void assar() {
    // TODO: implement assar
    print('Colocar no forno');
  }
}

//  Aqui eu tenho varias class que repete os atributos
class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print('Este(a) $nome pesa $peso gramas e é $cor. ');
  }
}

class Legumes extends Alimento implements Bolo {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  // Outro metedo

  void conzinha() {
    if (isPrecisaCozinhar) {
      print('Ponto, o $nome, está cozinhando!');
    } else {
      print('Nem precisa conzinha!');
    }
  }

  @override
  void separarIngredientes() {
    // TODO: implement separarIngredientes

    print('Pegar as frutas');
  }

  @override
  void fazerMassa() {
    // TODO: implement fazerMassa
    print('Misturar toda as frutas depois de batida');
  }

  @override
  void assar() {
    // TODO: implement assar
    print('Colocar no forno');
  }
}

class Citricas extends Fruta {
  // String nome;
  // double peso;
  // String cor;
  // int diasDesdeColheita;
  // bool? isMadura;
  double nivelAzeo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelAzeo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe) {
    if (existe) {
      print('Existe Refrigerante de $nome');
    } else {
      print('Não exisre refri de $nome');
    }
  }
}

class Nozes extends Fruta {
  // String nome;
  // double peso;
  // String cor;
  // int diasDesdeColheita;
  // bool isMadura;
  double porcetagemOleNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.porcetagemOleNatural)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  // Aqui eu vou adicionar mais um passo na função fazerMassa e em seguida chamar ela novamente.
  // essa função está dentro da class abstract bolo. que implmentamos na class fruta

  @override //a função que eu acessar com override ele
  void fazerMassa() {
    if (nome == nome && nome == '') {
      print('a $nome precisa ser ');
    } else {
      print('a $nome precisa ser descascada');
    }
    super.fazerMassa();
  }
}

// classes Abstratas

// tudo que é conceitual é abstrato  &&
abstract class Bolo {
  // criando os metedos da class Abstrata

  // 1º Separar os ingredientes
  void separarIngredientes();

  // 2º fazer a massa
  void fazerMassa();

  //  3º Colocar para assar
  void assar();
}
