import 'package:main/calculadora_imc.dart';

void main(List<String> arguments) {
  print("Hello World!");
  final double valorIMC = CalculoIMC.calculateIMC();
  print("Valor IMC: ${valorIMC.toStringAsFixed(2)}");
  final String resultadoIMC = CalculoIMC.resultadoIMC(valorIMC);
  print("Resultado IMC: $resultadoIMC");
}
