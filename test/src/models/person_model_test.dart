import 'package:flutter_test/flutter_test.dart';
import 'package:masterclass/src/models/person_model.dart';

void main() {
  group('Person Model', () {
    test('deve retornar 22.34 ao instanciar PersonModel com peso 70 e altura 1.77', () {
      final dynamic person = PersonModel(weight: 70, height: 1.77);
      expect(person.getBMI(), isA<double>());
      expect(person.getBMI(), 22.34351559258195);
    });
  });

  group('Errors', () {
    //? sempre que for dispara um teste que tem que dar erro tem que colocar o erro dentro da funçao anonima
    test('deve dispar um erro caso o weight for < 0', () {
      expect(() => PersonModel(weight: -1, height: 1.77), throwsAssertionError);
    });

    test('deve dispar um erro caso o height for < 0', () {
      expect(() => PersonModel(weight: 70, height: -1), throwsAssertionError);
    });
  });
}
