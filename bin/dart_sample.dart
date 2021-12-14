import 'dart:io';

import 'package:dart_sample/dart_sample.dart';

void main(List<String> arguments) {
  var p = Person('David', 70);

  print(p.age);
  //setelah menggunakan static tidak bisa mengakses p.maxAge
  print(Person.maxAge);
}
