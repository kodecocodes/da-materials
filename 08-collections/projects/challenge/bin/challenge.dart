// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  challenge1();
  challenge2();
  challenge3();
}

const paragraphOfText = 'Once upon a time there was a Dart programmer who '
    'had a challenging challenge to solve. Though the challenge was great, '
    'a solution did come. The end.';

void challenge1() {
  /// Challenge 1: A unique request
  ///
  /// Write a function that takes a paragraph of text and returns a
  /// collection of unique String characters that the text contains.

  Set<String> uniqueCodePoints(String text) {
    return text.runes
        .map((codePoint) => String.fromCharCode(codePoint))
        .toSet();
  }

  print(uniqueCodePoints(paragraphOfText));
}

void challenge2() {
  /// Challenge 2: Counting on you
  ///
  /// Repeat Challenge 1 but this time have the function return a
  /// collection that contains the frequency count of every unique
  /// character.

  Map<String, int> characterFrequencyMap(String text) {
    final characterFrequencyMap = <String, int>{};
    for (var codePoint in text.runes) {
      final character = String.fromCharCode(codePoint);
      final frequency = characterFrequencyMap[character] ?? 0;
      characterFrequencyMap[character] = frequency + 1;
    }
    return characterFrequencyMap;
  }

  print(characterFrequencyMap(paragraphOfText));
}

void challenge3() {
  /// Challenge 3: Mapping users
  ///
  /// Create a class called `User` with properties for `id` and `name`.
  /// Make a `List` with three users, specifying any appropriate names
  /// and IDs you like. Then write a function that converts your user
  /// list to a list of maps whose keys are `id` and `name`.

  final users = [
    User(1, 'Brian'),
    User(2, 'Chris'),
    User(3, 'Pablo'),
  ];

  // Note: You'll find many APIs use `dynamic` instead of `Object` when 
  // converting a custom object to a map. Either one works, though using 
  // `Object` when possible allows you to keep type safety.
  List<Map<String, Object>> usersToMapList(List<User> users) {
    final userMapList = <Map<String, Object>>[];
    for (var user in users) {
      final userMap = {
        'id': user.id,
        'name': user.name,
      };
      userMapList.add(userMap);
    }
    return userMapList;
  }

  print(usersToMapList(users));
}

class User {
  User(this.id, this.name);
  final int id;
  final String name;
}
