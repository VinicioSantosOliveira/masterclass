import 'package:flutter/material.dart';
import 'package:masterclass/src/models/cpf_model.dart';

class CpfController extends ChangeNotifier {
  var result = 'Resultado';
  var cpf = '';
  bool? valid;

  void setCpf(String text) {
    cpf = text;
  }

  validate() {
    final cpfModel = CpfModel(cpf);

    if (cpfModel.isValid() == true) {
      result = 'Cpf Valido';
    } else if (cpfModel.isValid() == false) {
      result = 'Cpf Invalido';
    } else {
      result = 'Erro';
    }
    notifyListeners();
  }

  void resultado() {}
}
