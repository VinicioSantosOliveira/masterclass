import 'package:masterclass/src/models/person_model.dart';

void main() {
  final person = PersonModel(weight: 70, height: 1.77);
  print(person.getBMI() == 22.34351559258195);
  print(person.getBMI());
}
