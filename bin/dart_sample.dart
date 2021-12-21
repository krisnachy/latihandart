import 'dart:io';

void main(List<String> arguments) {
  // String a = "Hello";
  // String b = "World";

  // print(a+b);
  var a = Hero(10);
  var b = Hero(20);

  // print((a+b).power);
  // print(a == b);
  print((a + 12).power);
}

class Hero {
  final int power;

  Hero(this.power);

  // Hero operator +(Hero other) {
  //   return Hero(power + other.power);
  // }

  Hero operator +(var other) {
    if (other is Hero) {
      return Hero(power + other.power);
    } else if (other is int) {
      return Hero(power + other);
    } else {
      return this;
    }
  }

  @override
  bool operator == (var other) {
    if (other is Hero) {
      if (other.power == power) {
        return true;
      }
    }

    return false;
  }
}
