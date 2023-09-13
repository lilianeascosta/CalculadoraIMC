import 'package:main/calculadora_imc.dart';
import 'package:test/test.dart';

void main() {
  group('should validate resultadoIMC method', () {
    test('IMC < 17', () {
      expect(CalculoIMC.resultadoIMC(16), 'Muito abaixo do peso ideal');
    });
    test('IMC > 17 && < 18.49', () {
      expect(CalculoIMC.resultadoIMC(18), 'Abaixo do peso');
    });
    test('IMC> 18.5 && < 24.99', () {
      expect(CalculoIMC.resultadoIMC(20), 'Peso normal');
    });
    test('IMC > 25 && < 29.99', () {
      expect(CalculoIMC.resultadoIMC(28), 'Acima do peso');
    });
    test('IMC > 30 && < 34.99', () {
      expect(CalculoIMC.resultadoIMC(34), 'Obesidade grau 1');
    });
    test('IMC > 35 && < 39.99', () {
      expect(CalculoIMC.resultadoIMC(36), 'Obesidade grau 2');
    });
    test('IMC > 40', () {
      expect(CalculoIMC.resultadoIMC(50), 'Obesidade grau 3 (mórbida)');
    });
  });
}
