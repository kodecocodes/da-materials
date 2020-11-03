// Copyright (c) 2020 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  extendingClasses();
  abstractClasses();
  interfaces();
  mixins();
  extensions();
}

/// Extending classes

void extendingClasses() {
  final john = Person('John', 'Snow');
  final jane = Student('Jane', 'Snow');
  print(john.fullName);
  print(jane.fullName);

  final historyGrade = Grade.B;
  jane.grades.add(historyGrade);

  final jessie = SchoolBandMember('Jessie', 'Jones');
  final marty = StudentAthlete('Marty', 'McFly');

  final students = [jane, jessie, marty];

  print(jessie is Object);
  print(jessie is Person);
  print(jessie is Student);
  print(jessie is SchoolBandMember);
  print(jessie is! StudentAthlete);
}

enum Grade { A, B, C, D, F }

class Person {
  Person(this.givenName, this.surname);
  String givenName;
  String surname;
  String get fullName => '$givenName $surname';
  String toString() => fullName;
}

class Student extends Person {
  Student(String givenName, String surname) : super(givenName, surname);
  var grades = <Grade>[];
  @override
  String get fullName => '$surname, $givenName';
}

class SchoolBandMember extends Student {
  SchoolBandMember(String givenName, String surname)
      : super(givenName, surname);
  static const minimumPracticeTime = 2;
}

class StudentAthlete extends Student {
  StudentAthlete(String givenName, String surname) : super(givenName, surname);
  bool get isEligible => grades.every((grade) => grade != Grade.F);
}

/// Abstract classes

void abstractClasses() {
  // final animal = Animal();
  final platypus = Platypus();
  print(platypus.isAlive);
  platypus.eat();
  platypus.move();
  platypus.layEggs();
  print(platypus);
}

abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();

  @override
  String toString() {
    return "I'm a $runtimeType";
  }
}

// class Platypus extends Animal {
//   @override
//   void eat() {
//     print('Munch munch');
//   }

//   @override
//   void move() {
//     print('Glide glide');
//   }

//   void layEggs() {
//     print('Plop plop');
//   }
// }

/// Interfaces

void interfaces() {
  // final repository = DataRepository();
  // final DataRepository repository = FakeWebServer();
  // final temperature = repository.fetchTemperature('Berlin');

  final repository = DataRepository();
  final temperature = repository.fetchTemperature('Manila');
  print(temperature);

  final someClass = SomeClass();
  print(someClass.myField);
  someClass.myMethod();
}

abstract class DataRepository {
  factory DataRepository() => FakeWebServer();
  double fetchTemperature(String city);
}

class FakeWebServer implements DataRepository {
  @override
  double fetchTemperature(String city) {
    return 42.0;
  }
}

class AnotherClass {
  int myField = 42;
  void myMethod() => print(myField);
}

// class SomeClass extends AnotherClass {}
class SomeClass implements AnotherClass {
  @override
  int myField = 0;

  @override
  void myMethod() => print('Hello');
}

/// Mixins

void mixins() {
  final platypus = Platypus();
  final robin = Robin();
  platypus.layEggs();
  robin.layEggs();
}

abstract class Bird {
  void fly();
  void layEggs();
}

class Robin extends Bird with EggLayer, Flyer {}

class Platypus extends Animal with EggLayer {
  @override
  void eat() {
    print('Munch munch');
  }

  @override
  void move() {
    print('Glide glide');
  }
}

mixin EggLayer {
  void layEggs() {
    print('Plop plop');
  }
}

mixin Flyer {
  void fly() {
    print('Swoosh swoosh');
  }
}

/// Extensions

void extensions() {
  // final original = 'abc';
  // final secret = encode(original);
  // print(secret);

  // final secret = 'abc'.encoded;
  // print(secret);

  final original = 'I like extensions!';
  final secret = original.encoded;
  final revealed = secret.decoded;
  print(secret);
  print(revealed);

  print(5.cubed);

  final language = ProgrammingLanguage.dart;
  print(language.isStronglyTyped);
}

String encode(String input) {
  final output = StringBuffer();
  for (int codePoint in input.runes) {
    output.writeCharCode(codePoint + 1);
  }
  return output.toString();
}

extension on String {
  String get encoded {
    return _code(1);
  }

  String get decoded {
    return _code(-1);
  }

  String _code(int step) {
    final output = StringBuffer();
    for (int codePoint in runes) {
      output.writeCharCode(codePoint + step);
    }
    return output.toString();
  }
}

extension on int {
  int get cubed {
    return this * this * this;
  }
}

enum ProgrammingLanguage { dart, swift, javaScript }

extension on ProgrammingLanguage {
  bool get isStronglyTyped {
    switch (this) {
      case ProgrammingLanguage.dart:
      case ProgrammingLanguage.swift:
        return true;
      case ProgrammingLanguage.javaScript:
        return false;
      default:
        throw Exception('Unknown Programming Language $this');
    }
  }
}