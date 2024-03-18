class CpfModel {
  final String value;

  CpfModel(this.value) : assert(value.length == 11, 'Deve conter 11 digitos');

  int _generateResultByDigit(int decrementValue) {
    final numbers = value.split('').map((e) => int.parse(e)).toList();
    int buff = 0;
    int result = 0;

    for (var i = decrementValue; i >= 2; i--) {
      result += numbers[buff] * i;
      buff++;
    }

    result = result * 10;
    return result % 11;
  }

  bool _checkDigits(int digit1, int digit2) {
    return digit1 == int.parse(value[9]) && digit2 == int.parse(value[10]);
  }

  bool isValid() {
    final isEqual = value.split('').every((element) => element == value[0]);
    if (isEqual) {
      return false;
    }

    var digit1 = _generateResultByDigit(10);
    var digit2 = _generateResultByDigit(11);

    return _checkDigits(digit1, digit2);
  }
}

///Calculo de como se valida um cpf
///
///747.123.830-54
///pegar os 9 primeiros digitos, multiplicalos por valor decrescente de 10
///somar os resultados
///multiplicar por 10
///dividir por 11
///o resto dessa divisão deve ser o primeiro digito
///
///(7 * 10) + (4 * 9) + (7 * 8) + (1 * 7) + (2 * 6) + (3 * 5) + (8 * 4) + (3 * 3) + (0 * 2)