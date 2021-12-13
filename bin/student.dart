import 'person.dart';

class Student extends Person {
  // Student() {
  //   print('constructor student');
  // }

  // Student() : super('student baru') {
  //   print('constructor student');
  // }

  // Student({String studentName = 'nama baru'}) : super(name: studentName) {
  //   print('constructor name');
  // }

  Student({String studentName = 'nama baru'}) : super(name: studentName);
}
