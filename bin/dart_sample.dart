import 'dart:io';
import 'person.dart';
import 'student.dart';

void main(List<String> arguments) {
  Person p = Person('Joko');
  Person q = Person();
  // p.name = 'Joko';

  print(p.name);
  print(q.name);
}
