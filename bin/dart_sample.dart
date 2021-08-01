import 'dart:io';

void main(List<String> arguments) {
  // for (int count = 0; count < 5; count = count + 1) {
  //   print('Hai');
  // }

  //Penggunaan while
  // int i = 0;

  // while (i < 5) {
  //   print('Hai');
  //   // i++;
  //   //atau
  //   i += 1;
  // }

  int a, b, c, d;
  a = 10;
  b = a++;
  print(a.toString() + " - " + b.toString());

  c = 10;
  d = ++c;
  print(c.toString() + " - " + d.toString());
}
