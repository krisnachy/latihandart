import 'dart:io';

void main(List<String> arguments) {
  // String input = stdin.readLineSync();
  // print(input);

  int number = int.tryParse(stdin.readLineSync());

  // if (number > 0) {
  //   print('positif');
  // } else if (number < 0) {
  //   print('negatif');
  // } else {
  //   print('nol');
  // }

  //Penyingkatan if else jika menentukan nilai output
  String output;
  output = (number > 0) ? "positif" : "negatif atau nol";

  print(output);

  //atau
  print((number > 0) ? "positif" : "negatif atau nol");
}
