import 'dart:io';

void main(List<String> arguments) {
  //final harus langsung diinisialisasi dan hanya bisa sekali dipasang
  // final int x = 5;
  // var a = ConstClass(number: 5);
  // var b = ConstClass(number: 5);

  // print(identical(a, b));
  //hasil false

  var a = const ConstClass(number: 5);
  var b = const ConstClass(number: 5);

  print(identical(a, b));
  //hasil true
}

class RegularClass {
  final int number;
  static const myCons = 12;

  RegularClass({this.number});

  //final menunjuk pada alamat(objek) yang sama sedangkan const menunjuk pada nilainya yang akan tetap
}

class ConstClass {
  final int number;

  const ConstClass({this.number});
}
