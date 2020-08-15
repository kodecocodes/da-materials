// Copyright (c) 2020 Razeware LLC
// For full license & permission details, see LICENSE.

class User {
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
