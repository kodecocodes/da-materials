// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.

import 'user.dart';

void main() {
  dartClasses();
  constructors();
  dartObjects();
  staticMembers();
}

void dartClasses() {
  final user = User();
  // final user = new User();
  // user.name = 'Ray';
  // user.id = 42;
  print(user);
  print(user.toJson());
}

void constructors() {
  // final user = User(42, 'Ray');
  // final user = User(id: 42, name: 'Ray');
  // final user = User(_id: 42, _name: 'Ray');
  // final anonymousUser = User.anonymous();
  final vicki = User(id: 24, name: 'Vicki');
  // final vicki = User(_id: 24, _name: 'Vicki');
  // vicki.name = 'Nefarious Hacker';
  // vicki._name = 'Nefarious Hacker';
  print(vicki);
  // final vicki = User(id: 24, name: 'Vicki');
  // vicki._name = 'Nefarious Hacker';
  // final vicki = User(id: 24, name: 'Vicki');
  // vicki._name = 'Nefarious Hacker';
  // final jb = User(id: -1, name: 'JB Lorenzo');
  final jb = User(id: 100, name: 'JB Lorenzo');
  print(jb);
  const user = User(name: 'Ray', id: 42);
  print(user);
  const anonymousUser = User.anonymous();
  print(anonymousUser);
  final map = {'id': 10, 'name': 'Manda'};
  final manda = User.fromJson(map);
  print(manda);
}

void dartObjects() {
  final myObject = MyClass();
  final anotherObject = myObject;
  print(myObject.myProperty); // 1
  anotherObject.myProperty = 2;
  print(myObject.myProperty); // 2
  // final email = Email();
  // email.value = 'ray@example.com';
  final email = Email('ray@example.com');
  final emailString = email.value;
  print(emailString);
}

void staticMembers() {
  final value = SomeClass.myProperty;
  SomeClass.myMethod();
  final mySingleton = MySingleton.instance;
  // final user = User.fromJson('{"id":42,"name":"Ray"}');
  final map = {'id': 10, 'name': 'Manda'};
  final manda = User.fromJson(map);
  print(manda);
}

class Address {
  Address();
  var value = '';
}

class Email {
  Email(this.value);
  final value;
}

class MyClass {
  int myProperty = 0;
  void myMethod() {
    print('Hello, Dart!');
  }
}

class SomeClass {
  static int myProperty = 0;
  static void myMethod() {
    print('Hello, Dart!');
  }
}

class MySingleton {
  MySingleton._();
  static final MySingleton instance = MySingleton._();
}
