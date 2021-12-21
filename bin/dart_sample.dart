import 'dart:io';

void main(List<String> arguments) {
  // String a = "Hello";
  // String b = "World";

  // print(a+b);
  var a = Hero(10);
  var b = Hero(20);

  print((a+b).power);
}

class Hero {
  final int power;

  Hero(this.power);

  Hero operator +(Hero other) {
    return Hero(power + other.power);
  }
}
