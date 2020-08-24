// Copyright (c) 2020 Razeware LLC
// For full license & permission details, see LICENSE.

class User {
  const User({
    this.id = _anonymousUserId,
    this.name = _anonymousUserName,
  })  : assert(name != null),
        assert(id >= 0);

  const User.anonymous() : this();

  // factory User.fromJson(Map<String, Object> json) {
  //   final userId = json['id'];
  //   final userName = json['name'];
  //   return User(id: userId, name: userName);
  // }

  // static User fromJson(Map<String, Object> json) {
  //   final userId = json['id'];
  //   final userName = json['name'];
  //   return User(id: userId, name: userName);
  // }

  User.fromJson(Map<String, Object> json)
    : id = json['id'],
      name = json['name'];

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
