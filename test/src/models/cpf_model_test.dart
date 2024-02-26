import 'package:masterclass/src/models/cpf_model.dart';

void main() {
  CpfModel cpf = CpfModel('74712383054');
  CpfModel cpf2 = CpfModel('74712383055');
  CpfModel cpf3 = CpfModel('11111111111');

  print(cpf.isValid());
  print(cpf2.isValid());
  print(cpf3.isValid());
}
