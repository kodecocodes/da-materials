// Copyright (c) 2020 Razeware LLC
// For full license & permission details, see LICENSE.

import 'dart:math';

void main() {
  /// Comparison operators

  // const bool yes = true;
  // const bool no = false;
  const yes = true;
  const no = false;

  /// Boolean operators

  const doesOneEqualTwo = (1 == 2);
  // const doesOneEqualTwo = 1 == 2;
  print('doesOneEqualTwo: $doesOneEqualTwo');

  const doesOneNotEqualTwo = (1 != 2);
  print('doesOneNotEqualTwo: $doesOneNotEqualTwo');

  const alsoTrue = !(1 == 2);
  print('alsoTrue: $alsoTrue');

  const isOneGreaterThanTwo = (1 > 2);
  const isOneLessThanTwo = (1 < 2);
  print('isOneGreaterThanTwo: $isOneGreaterThanTwo');
  print('isOneLessThanTwo: $isOneLessThanTwo');

  /// Boolean logic

  const and = true && true;
  print('and: $and');

  const or = true || false;
  print('or: $or');

  const andTrue = 1 < 2 && 4 > 3;
  const andFalse = 1 < 2 && 3 > 4;
  const orTrue = 1 < 2 || 3 > 4;
  const orFalse = 1 == 2 || 3 == 4;
  print('andTrue: $andTrue');
  print('andFalse: $andFalse');
  print('orTrue: $orTrue');
  print('orFalse: $orFalse');

  const andOr = 3 > 4 && (1 < 2 || 1 < 4);
  print('andOr: $andOr');

  const withoutParentheses = 3 > 4 && 1 < 2 || 1 < 4;
  const withParentheses = (3 > 4 && 1 < 2) || 1 < 4;
  print('withoutParentheses: $withoutParentheses');
  print('withParentheses: $withParentheses');

  /// String equality

  const guess = 'dog';
  const dogEqualsCat = guess == 'cat';
  print('dogEqualsCat: $dogEqualsCat');

  /// The if statement

  if (2 > 1) {
    print('Yes, 2 is greater than 1.');
  }

  const animal = 'Fox';
  if (animal == 'Cat' || animal == 'Dog') {
    print('Animal is a house pet.');
  } else {
    print('Animal is not a house pet.');
  }

  const trafficLight = 'yellow';
  var command = '';
  if (trafficLight == 'red') {
    command = 'Stop';
  } else if (trafficLight == 'yellow') {
    command = 'Slow down';
  } else if (trafficLight == 'green') {
    command = 'Go';
  } else {
    command = 'INVALID COLOR!';
  }
  print(command);

  /// Short circuiting

  const name = 'Vicki Wenderlich';
  if (1 > 2 && name == 'Ray Wenderlich') {
    // ...
  }

  if (1 < 2 || name == 'Ray Wenderlich') {
    // ...
  }

  /// Encapsulating variables

  // const isHungry = true;
  // var decision = 'Skip lunch';
  // if (isHungry) {
  //   decision = 'Eat lunch.';
  // }
  // print(decision);

  const isHungry = true;
  if (isHungry) {
    var decision = 'Eat lunch.';
  }
  // print(decision); // error

  /// The ternary conditional operator

  const a = 5;
  const b = 10;

  int min;
  if (a < b) {
    min = a;
  } else {
    min = b;
  }
  print('min: $min');

  min = (a < b) ? a : b;
  print('min: $min');

  /// While loops

  // Infinite loop
  // while (true) { }

  var sum = 1;
  print('sum: $sum');
  while (sum < 10) {
    sum += 4;
    print('sum: $sum');
  }

  /// Do-while loops

  sum = 1;
  print('sum: $sum');
  do {
    sum += 4;
    print('sum: $sum');
  } while (sum < 10);

  /// Comparing while and do-while loops

  sum = 11;
  while (sum < 10) {
    sum += 4;
  }
  print('while loop sum: $sum');

  sum = 11;
  do {
    sum += 4;
  } while (sum < 10);
  print('do-while loop sum: $sum');

  /// Breaking out of a loop

  sum = 1;
  print('sum: $sum');
  while (true) {
    sum += 4;
    print('sum: $sum');
    if (sum > 10) {
      break;
    }
  }

  /// A random interlude

  final random = Random();
  while (random.nextInt(6) + 1 != 6) {
    print('Not a six!');
  }
  print('Finally, you got a six!');

  /// For loops

  for (var i = 0; i < 5; i++) {
    print(i);
  }

  for (var i = 0; i < 5; i++) {
    if (i == 2) {
      continue;
    }
    print(i);
  }

  /// For-in loops

  const myString = 'I ❤ Dart';
  for (var codePoint in myString.runes) {
    print(String.fromCharCode(codePoint));
  }

  /// For-each loops

  const myNumbers = [1, 2, 3];
  myNumbers.forEach((number) => print(number));

  myNumbers.forEach((number) {
    print(number);
  });

  /// Switch statements

  const number = 10;
  switch (number) {
    case 0:
      print('Zero');
      break;
    default:
      print('Non-zero');
  }

  if (number == 0) {
    print('Zero');
  } else {
    print('Non-zero');
  }

  const weather = 'cloudy';
  switch (weather) {
    case 'sunny':
      print('Put on sunscreen.');
      break;
    case 'snowy':
      print('Get your skis.');
      break;
    case 'cloudy':
    case 'rainy':
      print('Bring an umbrella.');
      break;
    default:
      print("I'm not familiar with that weather.");
  }

  /// Enumerated types

  // Find the enum defined below, outside of the main() function.
  const weatherToday = Weather.cloudy;
  switch (weatherToday) {
    case Weather.sunny:
      print('Put on sunscreen.');
      break;
    case Weather.snowy:
      print('Get your skis.');
      break;
    case Weather.cloudy:
    case Weather.rainy:
      print('Bring an umbrella.');
      break;
  }

  print(weatherToday);
  final index = weatherToday.index;
  print(index);
}

enum Weather {
  sunny,
  snowy,
  cloudy,
  rainy,
}

// enum Weather { sunny, snowy, cloudy, rainy }
