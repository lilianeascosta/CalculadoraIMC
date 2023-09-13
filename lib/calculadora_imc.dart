import 'dart:convert';
import 'dart:io';

import 'package:main/pessoa.dart';

class CalculoIMC {
  static double calculateIMC() {
    Pessoa pessoa = _criaPessoa();
    double valorIMC = pessoa.imc(pessoa.peso, pessoa.altura);
    return valorIMC;
  }

  static String resultadoIMC(double valorIMC) {
    switch (valorIMC) {
      case < 17:
        return "Muito abaixo do peso ideal";
      case > 17 && < 18.49:
        return "Abaixo do peso";
      case > 18.5 && < 24.99:
        return "Peso normal";
      case > 25 && < 29.99:
        return "Acima do peso";
      case > 30 && < 34.99:
        return "Obesidade grau 1";
      case > 35 && < 39.99:
        return "Obesidade grau 2";
      case > 40:
        return "Obesidade grau 3 (mórbida)";
      default:
        return "não foi possível obter o resultado do IMC";
    }
  }

  static dynamic _lerDadosConsole(String mensagem) {
    try {
      print(mensagem);
      return stdin.readLineSync(encoding: utf8) ?? "";
    } catch (e) {
      throw Exception("O campo não foi informado corretamente.");
    }
  }

  static Pessoa _criaInstanciaPessoa(nome, peso, altura) {
    try {
      return Pessoa(nome, peso, altura);
    } catch (e) {
      throw Exception(
          'Não foi possível criar o objeto pessoa com os dados informados');
    }
  }

  static Pessoa _criaPessoa() {
    String nome = _lerDadosConsole("Informe seu nome: ");
    double peso =
        double.parse(_lerDadosConsole("Informe seu peso em kg (ex: 44): "));
    double altura = double.parse(
        _lerDadosConsole("Informe sua altura em metros (ex: 1.54): "));

    return _criaInstanciaPessoa(nome, peso, altura);
  }
}
