import 'dart:math' as math;

class PersonModel {
  //*regra de negócio corporativa
  final double weight;
  final double height;

  PersonModel({
    required this.weight,
    required this.height,
  })  : assert(weight >= 0, 'weight nao pode ser menor que zero'),
        assert(height >= 0, 'height nao pode ser menor que zero');

  factory PersonModel.empty() => PersonModel(height: 0.0, weight: 0.0);

  //*regra de negócio da aplicação
  double getBMI() => weight / math.pow(height, 2);

  PersonModel copyWith({double? weight, double? height}) {
    return PersonModel(
      weight: weight ?? this.weight,
      height: height ?? this.height,
    );
  }
}
