// Copyright (c) 2020 Razeware LLC
// For full license & permission details, see LICENSE.


/// In Chapter 6 you're refactoring the User class multiple times so
/// various steps are in different comment blocks. The earlier ones are at
/// the top. Uncomment the blocks you want to try.


/// Dart classes

// void main() {
//   final user = User();
//   // final user = new User();
//   user.name = 'Ray';
//   user.id = 42;
//   print(user);
//   print(user.toJson());
// }
//
// class User {
//   int id = 0;
//   String name = '';
//
//   String toJson() {
//     return '{"id":$id,"name":"$name"}';
//   }
//
//   @override
//   String toString() {
//     return 'User(id: $id, name: $name)';
//   }
// }

/// Constructors (before moving User to user.dart)

// class Password {
//   Password();
//   var value = '';
// }
//
// void main() {
//   // final user = User(42, 'Ray');
//   // final user = User(id: 42, name: 'Ray');
//   // final user = User(_id: 42, _name: 'Ray');
//   // print(user);
//   // final anonymousUser = User.anonymous();
//   // print(anonymousUser);
//
//   // final vicki = User(id: 24, name: 'Vicki');
//   // final vicki = User(_id: 24, _name: 'Vicki');
//   // vicki.name = 'Nefarious Hacker';
//   // vicki._name = 'Nefarious Hacker';
//   // print(vicki);
//
//   final vicki = User(id: 24, name: 'Vicki');
//   vicki._name = 'Nefarious Hacker';
// }
//
// class User {
//   // User(int id, String name) {
//   //   this.id = id;
//   //   this.name = name;
//   // }
//
//   // User(this.id, this.name);
//
//   // User({this.id = 0, this.name = 'anonymous'});
//   // User({this._id = 0, this._name = 'anonymous'});
//
//   // User({int id = 0, String name = 'anonymous'})
//   //     : _id = id,
//   //       _name = name {
//   //   print('User name is $_name');
//   // }
//
//   User({int id = 0, String name = 'anonymous'})
//       : _id = id,
//         _name = name;
//
//   // User({int id = 0, String name = 'anonymous'})
//   //     : _id = id,
//   //       _name = name {
//   //   print('User name is $_name');
//   // }
//
//   // User.anonymous() {
//   //   id = 0;
//   //   name = 'anonymous';
//   // }
//
//   // User.anonymous() : this(0, 'anonymous');
//
//   User.anonymous() : this();
//
//   // int id = 0;
//   // String name = '';
//   // int id;
//   // String name;
//   int _id;
//   String _name;
//
//   String toJson() {
//     // return '{"id":$id,"name":"$name"}';
//     return '{"id":$_id,"name":"$_name"}';
//   }
//
//   @override
//   String toString() {
//     // return 'User(id: $id, name: $name)';
//     return 'User(id: $_id, name: $_name)';
//   }
// }

/// Constructors (after moving User to user.dart)

// import 'user.dart';

// void main() {
//   final vicki = User(id: 24, name: 'Vicki');
//   // vicki._name = 'Nefarious Hacker';
//   // final jb = User(id: -1, name: 'JB Lorenzo');
//   const user = User(name: 'Ray', id: 42);
//   const anonymousUser = User.anonymous();
// }

/// Dart objects

// void main() {
//   final myObject = MyClass();
//   final anotherObject = myObject;
//
//   print(myObject.myProperty); // 1
//   anotherObject.myProperty = 2;
//   print(myObject.myProperty); // 2
//
//   // final email = Email();
//   // email.value = 'ray@example.com';
//   final email = Email('ray@example.com');
//   final emailString = email.value;
// }
//
// class MyClass {
//   var myProperty = 1;
// }
//
// // class Email {
// //   var _address = '';
//
// //   String get value => _address;
// //   set value(String address) => _address = address;
// // }
//
// // class Email {
// //   var value = '';
// // }
//
// class Email {
//   Email(this.value);
//   final value;
// }

/// Static members

// void main() {
//   final value = MyClass.myProperty;
//   MyClass.myMethod();
//   final mySingleton = MySingleton.instance;
//   //final user = User.fromJson('{"id":42,"name":"Ray"}');
// }
//
// class MyClass {
//   static int myProperty = 0;
//   static void myMethod() {
//     print('Hello, Dart!');
//   }
// }
//
// class MySingleton {
//   MySingleton._();
//   static final MySingleton instance = MySingleton._();
// }


