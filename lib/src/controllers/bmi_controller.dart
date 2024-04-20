import 'package:flutter/material.dart';
import '../models/person_model.dart';

class BmiController extends ChangeNotifier {
  //Regra de negócio da view consumindo a regra de negócio da PersonModel()
  var result = 'Resultado';
  var _model = PersonModel.empty();
  var _weight = 0.0;
  var _height = 0.0;

  void setWeight(String text) {
    _weight = double.tryParse(text) ?? 0;
    _model = _model.copyWith(weight: _weight);
  }

  void setHeight(String text) {
    _height = double.tryParse(text) ?? 0;
    _model = _model.copyWith(height: _height);
  }

  calcBMI() {
    final bmi = _model.getBMI();

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
