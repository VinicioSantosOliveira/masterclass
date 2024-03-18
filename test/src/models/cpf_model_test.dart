import 'package:flutter_test/flutter_test.dart';
import 'package:masterclass/src/models/cpf_model.dart';

void main() {
  group('isValid', () {
    test('o cpf deve ser valido', () {
      CpfModel cpf = CpfModel('74712383054');
      expect(cpf.isValid(), true);
    });
    test('o cpf deve ser invalido', () {
      CpfModel cpf2 = CpfModel('74712383055');
      expect(cpf2.isValid(), false);
    });
    test('o cpf deve ser invalido quando todos os digitos sao ==', () {
      CpfModel cpf3 = CpfModel('11111111111');
      expect(cpf3.isValid(), false);
    });
  });

  group('Erros de instancias', () {
    test('deve ser invalido quando a quantia de numeros digitados for menor que 11 digitos', () {
      expect(() => CpfModel('2222222222'), throwsAssertionError);
    });
    test('deve ser invalido quando a quantia de numeros digitados for maior que 11 digitos', () {
      expect(() => CpfModel('222222222222'), throwsAssertionError);
    });
  });
}
