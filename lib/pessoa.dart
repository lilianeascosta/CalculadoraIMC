class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);

  double imc(double peso, double altura) {
    return peso / (altura * altura);
  }
}
