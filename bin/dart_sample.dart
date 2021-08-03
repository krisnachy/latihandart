import 'dart:ffi';
import 'dart:io';
import 'package:dart_sample/persegi_panjang.dart';

void main(List<String> arguments) {
  PersegiPanjang kotak1, kotak2;

  kotak1 = new PersegiPanjang();
  kotak1.setPanjang(-2);
  kotak1.lebar = 3;

  kotak2 = PersegiPanjang();
  kotak2.setPanjang(double.tryParse(stdin.readLineSync()));
  kotak2.lebar = double.tryParse(stdin.readLineSync());
  print(kotak2.luasPersegiPanjang());
  print(kotak2.getPanjang());

  print(kotak1.luas);

  // print(kotak1.panjang);
}
