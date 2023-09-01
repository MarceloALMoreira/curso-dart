


void main(){
  print('Bem vindo');
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



// Nesses casos, nós sobrescrevemos esses métodos, alterando eles usando o comando 
//@override. A habilidade de alterar os métodos é chamada de polimorfismo.