import 'dart:ffi';
import 'dart:io';

double luasSegiEmpat(double panjang, double lebar) {
  double hasil;
  hasil = panjang * lebar;
  return hasil;
}

//Jika tidak mengembalikan sesuatu maka menggunakan void
void nama() {
  print("Krisna");
}

//Penggunaan optional parameter yang mana parameter boleh diisi atau tidak
String pesan(String from, String message, {String to, String via}) {
  return from +
      ' say ' +
      message +
      ((to != null) ? ' to ' + to : "") +
      ((via != null) ? ' via ' + via : "");
}

String pesan2(String from, String message, [String to, String via]) {
  return from +
      ' say ' +
      message +
      ((to != null) ? ' to ' + to : "") +
      ((via != null) ? ' via ' + via : "");
}

void main(List<String> arguments) {
  // double p, l, luas;

  // p = double.tryParse(stdin.readLineSync());
  // l = double.tryParse(stdin.readLineSync());

  // luas = luasSegiEmpat(p, l);
  // print(luas);

  // nama();

  print(pesan("Johnny", "Sins", to: "You", via: "PH"));
  print(pesan2('Me', 'Hi', 'You'));
}
