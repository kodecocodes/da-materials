// Copyright (c) 2020 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  challenge1();
  challenge2();
  challenge3();
}

void challenge1() {
  /// Challenge 1: Heavy monotremes
  ///
  /// Dart has a class named `Comparable` which is used by the the `sort` method
  /// of `List` to sort its elements. Add a `weight` field to the `Platypus` 
  /// class you made in this lesson. Then make `Platypus` implement `Comparable`
  /// so that when you have a list of `Platypus` objects, calling sort on the
  /// list will sort them by weight.

  final willi = Platypus(weight: 1.0);
  final billi = Platypus(weight: 2.4);
  final nilli = Platypus(weight: 2.1);
  final jilli = Platypus(weight: 0.4);
  final silli = Platypus(weight: 1.7);

  final platypi = [willi, billi, nilli, jilli, silli];

  platypi.forEach((platypus) => print(platypus.weight));
  print('---');

  platypi.sort();
  platypi.forEach((platypus) => print(platypus.weight));
}

class Platypus extends Animal with EggLayer implements Comparable {
  Platypus({this.weight});
  final weight;

  @override
  void eat() {
    print('Munch munch');
  }

  @override
  void move() {
    print('Glide glide');
  }

  @override
  int compareTo(other) {
    if (this.weight > other.weight) {
      return 1;
    } else if (this.weight < other.weight) {
      return -1;
    }
    return 0;
  }
}

mixin EggLayer {
  void layEggs() {
    print('Plop plop');
  }
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

void challenge2() {
  /// Challenge 2: Fake notes
  ///
  /// Design an interface to sit between the business logic of your
  /// note-taking app and a SQL database. After that, implement a fake
  /// database class that will return mock data.
  
  final database = DataStorage();
  final note = database.findNote(42);
  final allNotes = database.allNotes();
  database.saveNote('Water the flowers.');
  print(note);
  print(allNotes);
}

abstract class DataStorage {
  factory DataStorage() => FakeDatabase();
  String findNote(int id);
  List<String> allNotes();
  void saveNote(String note);
}

class FakeDatabase implements DataStorage {
  @override
  String findNote(int id) {
    return 'This is a note.';
  }

  @override
  List<String> allNotes() {
    return [
      'This is a note.',
      'This is another note.',
      'Buy milk.',
      'Platypuses are nice.',
    ];
  }

  @override
  void saveNote(String note) {
    // Saving note to cyberspace....
  }
}

void challenge3() {
  /// Challenge 3: Time to code
  /// 
  /// Dart has a `Duration` class for expressing lengths of time. Make an 
  /// extension on `int` so that you can express a duration like so:
  /// 
  /// ```
  /// final timeRemaining = 3.minutes;
  /// ```
  
  final timeRemaining = 3.minutes;
  print(timeRemaining);
}

extension on int {
  Duration get minutes => Duration(minutes: this);
}