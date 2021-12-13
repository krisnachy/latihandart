import 'package:dart_sample/ignore_parameter.dart';

void main(List<String> arguments) {
  // var p = Person('David');
  // p.takeARest();

  // var q = Person('Dave', doingHobby: daveHobby);
  // q.takeARest();

  var r = Person('Dove', doingHobby: (String name) {
    print('$name is running');
  });
  r.takeARest();

  var s = Person('Deve', doingHobby: (_) {
    print('Is using underscore');
  });
  s.takeARest();
}

// void daveHobby(String name) {
//   print('$name is swimming');
// }
