import 'dart:io';

void main(List<String> arguments) {
  List<Person> persons = [
    Person('Administrator', 32),
    Person('User', 18),
    Person('User', 43),
    Person('User', 14),
    Person('User', 33),
    Person('User', 21),
    Person('Merchant', 29)
  ];

  // persons.sort((p1, p2) => p1.age - p2.age);
  // persons.sort((p1, p2) => p1.role.compareTo(p2.role));
  // persons.sort((p1, p2) {
  //   if(p1.role.compareTo(p2.role) != 0) {
  //     return p1.role.compareTo(p2.role);
  //   } else {
  //     return p1.age.compareTo(p2.age);
  //   }
  // });
  persons.sort((p1, p2) {
    if (p1.roleWeight - p2.roleWeight != 0) {
      return p1.roleWeight - p2.roleWeight;
    } else {
      return p1.age.compareTo(p2.age);
    }
  });

  persons.forEach((element) {
    print(element.role + ' - ' + element.age.toString());
  });
}

class Person {
  final String role;
  final int age;

  Person(this.role, this.age);

  int get roleWeight {
    switch(role) {
      case 'Merchant': return 1;
      break;
      case 'User': return 2;
      break;
      default: return 3;
    }
  }
}
