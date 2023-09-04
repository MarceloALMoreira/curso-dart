// Criamos um ENUM de meios de locomoção:

void escolherMeioDeLocamocaoEnum(Tramporte locomocao) {

  // Aqui estamos utilizando o switch case para ser a estrutura condicionais:
  
  switch (locomocao) {
    case Tramporte.uber:
      print('Vou de Uber para o trabalho.');
      break;
    case Tramporte.taxi:
      print('Vou de taxi para o trabalho.');
      break;
    default:
      print('Estou indo de pé');
  }
}

enum Tramporte { uber, moto, bike, onibus, aviao, taxi }
