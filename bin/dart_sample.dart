import 'dart:ffi';
import 'dart:io';

void main(List<String> arguments) {
  PersegiPanjang kotak1, kotak2;

  kotak1 = new PersegiPanjang();
  kotak1.panjang = 2;
  kotak1.lebar = 3;

  kotak2 = PersegiPanjang();
  kotak2.panjang = double.tryParse(stdin.readLineSync());
  kotak2.lebar = double.tryParse(stdin.readLineSync());
  print(kotak2.luasPersegiPanjang());

  // print(kotak1.panjang);
}

class PersegiPanjang {
  double panjang, lebar;

  double luasPersegiPanjang() {
    return this.panjang * this.lebar;
  }
}
