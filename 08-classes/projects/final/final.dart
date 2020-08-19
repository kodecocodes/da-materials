// Copyright (c) 2020 Razeware LLC
// For full license & permission details, see LICENSE.

import 'user.dart';

void main() {
  /// Dart classes

  // final user = User(id: 42, name: 'Ray');
  // final user = new User();
  // user.name = 'Ray';
  // user.id = 42;
  // print(user);
  // print(user.toJson());

  /// Contructors

  // final user = User(42, 'Ray');
  // final user = User(id: 42, name: 'Ray');
  // final user = User(_id: 42, _name: 'Ray');
  // print(user);
  // final anonymousUser = User.anonymous();
  // print(anonymousUser);
  // final vicki = User(id: 24, name: 'Vicki');
  // final vicki = User(_id: 24, _name: 'Vicki');
  // vicki.name = 'Nefarious Hacker';
  // vicki._name = 'Nefarious Hacker';
  // print(vicki);
  // final vicki = User(id: 24, name: 'Vicki');
  // vicki._name = 'Nefarious Hacker';
  // final vicki = User(id: 24, name: 'Vicki');
  // vicki._name = 'Nefarious Hacker';
  // final jb = User(id: -1, name: 'JB Lorenzo');
  // const user = User(name: 'Ray', id: 42);
  // const anonymousUser = User.anonymous();

  /// Dart objects

  // final myObject = MyClass();
  // final anotherObject = myObject;
  // print(myObject.myProperty); // 1
  // anotherObject.myProperty = 2;
  // print(myObject.myProperty); // 2
  // final email = Email();
  // email.value = 'ray@example.com';
  // final email = Email('ray@example.com');
  // final emailString = email.value;

  /// Static members

  final value = MyClass.myProperty;
  MyClass.myMethod();
  final mySingleton = MySingleton.instance;
  // final user = User.fromJson('{"id":42,"name":"Ray"}');
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
  static int myProperty = 0;
  static void myMethod() {
    print('Hello, Dart!');
  }
}

class MySingleton {
  MySingleton._();
  static final MySingleton instance = MySingleton._();
}
