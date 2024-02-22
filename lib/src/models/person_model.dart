import 'dart:math' as math;

class PersonModel {

  //*regra de negócio corporativa
  final double weight;
  final double height;

  PersonModel({
    required this.weight,
    required this.height,
  });

  //*regra de negócio da aplicação
  double getBMI() {
    var result = weight / math.pow(height, 2);
    return result;
  }
}
