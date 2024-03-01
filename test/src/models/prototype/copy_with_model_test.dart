import 'package:masterclass/src/models/prototype/copy_with_model.dart';

void main() {
  var person = CopyWithModel(name: 'vinicio', lastName: 'oliveira', age: 20);
  print(person.age);

  person = person.copyWith(age: 21);

  print("${person.name}\n${person.lastName}\n${person.age}");
}
