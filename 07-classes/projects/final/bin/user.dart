// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.

class User {
  const User({
    this.id = _anonymousId,
    this.name = _anonymousName,
  }) : assert(id >= 0);

  const User.anonymous() : this();

  // User.fromJson(Map<String, Object> json)
  //     : id = json['id'] as int,
  //       name = json['name'] as String;

  // factory User.fromJson(Map<String, Object> json) {
  //   final userId = json['id'] as int;
  //   final userName = json['name'] as String;
  //   return User(id: userId, name: userName);
  // }

  static User fromJson(Map<String, Object> json) {
    final userId = json['id'] as int;
    final userName = json['name'] as String;
    return User(id: userId, name: userName);
  }

  final String name;
  final int id;

  static const _anonymousId = 0;
  static const _anonymousName = 'anonymous';

  String toJson() {
    return '{"id":$id,"name":"$name"}';
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }
}
