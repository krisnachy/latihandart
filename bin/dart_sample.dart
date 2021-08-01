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

String pesan3(String from, String message,
    [String to = 'You', String via = 'WhatsApp']) {
  return from +
      ' say ' +
      message +
      ((to != null) ? ' to ' + to : "") +
      ((via != null) ? ' via ' + via : "");
}
//End optional parameter

//Lambda Expression untuk menyingkat return HANYA YANG MEMILIKI NILAI
double luasPersegi(double sisi1, double sisi2) => sisi1 * sisi2;

//Anonymous Function
int doMathOperation(int number1, int number2, Function mathFunction) {
  return mathFunction(number1, number2);
}

int mathOperation(int number1, int number2, Function(int, int) operation) {
  return operation(number1, number2);
}

void main(List<String> arguments) {
  // double p, l, luas;

  // p = double.tryParse(stdin.readLineSync());
  // l = double.tryParse(stdin.readLineSync());

  // luas = luasSegiEmpat(p, l);
  // print(luas);

  // nama();

  print(pesan("Johnny", "Sins", to: "You", via: "PH"));
  print(pesan("Johnny", "Sins", via: "PH"));
  print(pesan2('Me', 'Hi', 'You'));
  print(pesan3('Me', 'Hello'));

  print(luasPersegi(4, 4));

  //Anonymous Function
  print(doMathOperation(1, 2, (int a, int b) {
    return a + b;
  }));

  print(doMathOperation(1, 2, (int a, int b) => a + b));
  print(mathOperation(1, 2, (a, b) => a + b));
  //Error
  // print(mathOperation(1, 2, (a) => a + 2));
}
