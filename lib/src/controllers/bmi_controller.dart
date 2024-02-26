import 'package:flutter/material.dart';

import '../models/person_model.dart';

class BmiController extends ChangeNotifier {
  //Regra de negócio da view consumino a regra de negócio da PersonModel()
  var result = 'Resultado';
  var _weight = 0.0;
  var _height = 0.0;

  void setWeight(String text) {
    _weight = double.tryParse(text) ?? 0;
  }

  void setHeight(String text) {
    _height = double.tryParse(text) ?? 0;
  }

  calcBMI() {
    final model = PersonModel(
      weight: _weight,
      height: _height,
    );

    final bmi = model.getBMI();

    if (bmi < 18) {
      result = 'IMC: ${bmi.toStringAsFixed(2)} - Abaixo do peso';
    } else if (bmi < 25) {
      result = 'IMC: ${bmi.toStringAsFixed(2)} - Peso ideal';
    } else if (bmi >= 25) {
      result = 'IMC: ${bmi.toStringAsFixed(2)} - Acima do peso';
    }

    notifyListeners();
  }
}
