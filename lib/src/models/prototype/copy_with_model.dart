class CopyWithModel {
  final String name;
  final String lastName;
  final int age;

  CopyWithModel({
    required this.name,
    required this.lastName,
    required this.age,
  });

  CopyWithModel copyWith({String? name, String? lastName, int? age}) {
    return CopyWithModel(
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      age: age ?? this.age,
    ); //* se utiliza this.variavel por que tem a variavel local e global com mesmo nome.
  }
}
