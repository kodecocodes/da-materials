// Copyright (c) 2020 Razeware LLC
// For full license & permission details, see LICENSE.

// If you get the error "Target of URI doesn't exist", make sure you have 
// run `pub get`. Then restart VS Code.
import 'package:characters/characters.dart';

void main() {
  /// Type conversion

  var integer = 100;
  var decimal = 12.5;
  // integer = decimal;
  integer = decimal.toInt();
  print(integer);

  /// Operators with mixed types

  const hourlyRate = 19.5;
  const hoursWorked = 10;
  // const totalCost = hourlyRate * hoursWorked;
  // const totalCost = (hourlyRate * hoursWorked).toInt();
  final totalCost = (hourlyRate * hoursWorked).toInt();
  print(totalCost);

  /// Type inference

  // int myInteger = 10;
  // double myDouble = 3.14;
  // const int myInteger = 10;
  // const double myDouble = 3.14;
  // final int myInteger = 10;
  // final double myDouble = 3.14;
  const myInteger = 10;
  const myDouble = 3.14;

  // const wantADouble = 3;
  // final actuallyDouble = 3.toDouble();
  const double actuallyDouble = 3;
  const wantADouble = 3.0;

  /// Strings and characters

  print('Hello, Dart!');
  var greeting = 'Hello, Dart!';
  greeting = 'Hello, Flutter!';
  print(greeting);

  /// Getting characters

  const letter = 'a';

  var salutation = 'Hello!';
  print(salutation.codeUnits);

  const dart = '🎯';
  print(dart.codeUnits);
  print(dart.runes);

  /// Unicode grapheme clusters

  const flag = '🇲🇳';
  print(flag.runes);

  const family = '👨‍👩‍👧‍👦';
  print(family.runes);

  print(family.length);
  print(family.codeUnits.length);
  print(family.runes.length);
  print(family.characters.length);

  /// Single-quotes vs double-quotes

  print('I like cats');
  print("I like cats");
  print("my cat's food");
  print('my cat\'s food');

  /// Concatenation

  // var message = 'Hello' + ' my name is ';
  // const name = 'Ray';
  // message += name;
  // print(message);

  final message = StringBuffer();
  message.write('Hello');
  message.write(' my name is ');
  message.write('Ray');
  message.toString();
  print(message);

  /// Interpolation

  const name = 'Ray';
  const introduction = 'Hello my name is $name';
  print(introduction);

  const oneThird = 1 / 3;
  // const sentence = 'One third is $oneThird.';
  final sentence = 'One third is ${oneThird.toStringAsFixed(3)}.';
  print(sentence);

  /// Multi-line strings

  const bigString = '''
You can have a string 
that contains multiple 
lines
by
doing this.''';
  print(bigString);

  // const oneLine = 'This is only '
  //   'a single '
  //   'line '
  //   'at runtime.';
  const oneLine = 'This is only ' + 'a single ' + 'line ' + 'at runtime.';
  print(oneLine);

  const twoLines = 'This is\ntwo lines.';
  print(twoLines);

  const rawString = r'My name \n is $name.';
  print(rawString);

  /// Inserting characters from their codes

  print('I \u2764 Dart\u0021');
  print('I love \u{1F3AF}');

  /// Object and dynamic types

  // var myVariable = 42;
  // myVariable = 'hello'; // compile-time error

  // dynamic myVariable = 42;
  // myVariable = 'hello'; // OK

  // var myVariable;       // defaults to dynamic
  // myVariable = 42;      // OK
  // myVariable = 'hello'; // OK

  Object myVariable = 42;
  myVariable = 'hello';    // OK
}
