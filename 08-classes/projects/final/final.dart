// Copyright (c) 2020 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  final user = User();
  // final user = new User();
  user.name = 'Ray';
  user.id = 42;
  print(user);
  print(user.toJson());
}

class User {
User(int id, String name) {
  this.id = id;
  this.name = name;
}

  int id = 0;
  String name = '';

  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }

  String toJson() {
    return '{"id":$id,"name":"$name"}';
  }
}
