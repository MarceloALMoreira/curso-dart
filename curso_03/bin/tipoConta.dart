void main() {
  TiposConta.tiposContasAtivas();
}




enum TiposConta {
  salario,
  popanca,
  corrente,
  investimentos;

  static void tiposContasAtivas() {
    print(
        'Conta Salario, Conta Poupança, Conta Corrente e Conta Investimentos.');
  }
}
