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
}

// fazendo a hereça, fruta é herença de Alimentos.
class Fruta extends Alimento {
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
  
  void fazerSuco(){
  print('voce fez um ótimo suco de $nome');
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

class Legumes extends Alimento {
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
}

class Citricas {
  String nome;
  double peso;
  String cor;
  int diasDesdeColheita;
  bool? isMadura;
  double nivelAzeo;

  Citricas(this.nome, this.peso, this.cor, this.diasDesdeColheita,
      this.isMadura, this.nivelAzeo);
}

class Nozes {
  String nome;
  double peso;
  String cor;
  int diasDesdeColheita;
  bool isMadura;
  double porcetagemOleNatural;

  Nozes(this.nome, this.peso, this.cor, this.diasDesdeColheita, this.isMadura,
      this.porcetagemOleNatural);
}
