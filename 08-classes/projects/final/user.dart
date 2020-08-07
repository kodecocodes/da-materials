// Copyright (c) 2020 Razeware LLC
// For full license & permission details, see LICENSE.

/// Final version

class User {
  // const User({this.id = 0, this.name = 'anonymous'})
  //     : assert(id >= 0),
  //       assert(name != null);

  const User({
    this.id = _anonymousUserId,
    this.name = _anonymousUserName,
  })  : assert(name != null),
        assert(id >= 0);

  const User.anonymous() : this();

  // static User fromJson(String json) {
  //   // extract userId and userName from json
  //   // ...
  //   return User(id: userId, name: userName);
  // }

  final String name;
  final int id;

  static const _anonymousUserId = 0;
  static const _anonymousUserName = 'anonymous';

  String toJson() {
    return '{"id":$id,"name":"$name"}';
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }
}

/// Intermediate version

// class User {
//   // User({int id = 0, String name = 'anonymous'})
//   //     : _id = id,
//   //       _name = name;
//
//   const User({String name = 'anonymous', int id = 0})
//       : assert(id >= 0),
//         assert(name != null),
//         _name = name,
//         _id = id;
//
//   const User.anonymous() : this();
//
//   // int _id;
//   // String _name;
//   final String _name;
//   final int _id;
//   int get id => _id;
//   String get name => _name;
//   bool get isBigId => _id > 1000;
//
//   String toJson() {
//     return '{"id":$_id,"name":"$_name"}';
//   }
//
//   @override
//   String toString() {
//     return 'User(id: $_id, name: $_name)';
//   }
// }
