import 'dart:math' as math;

class PersonModel {
  //*regra de negócio corporativa
  final double weight;
  final double height;

  PersonModel({
    required this.weight,
    required this.height,
  });

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
