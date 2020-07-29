// Copyright (c) 2020 Razeware LLC
// For full license & permission details, see LICENSE.

import 'dart:math';

void main() {
  /// Comments
  
  // This is a comment. It is not executed.

  // This is also a comment,
  // over multiple lines.

  /* This is also a comment. Over many...
  many...
  many lines. */

  /* This is a comment. 
  /* And inside it is 
  another comment. */ 
  Back to the first. */

  /// I am a documentation comment
  /// at your service.

  /**
   * Me, too!
   */

  // Command+click on a Mac, or Control+click on a PC, the [print] keyword.
  print('Hello, Dart!');

  /// Printing out

  print("Hello, Dart Apprentice reader!");

  /// Arithmetic operations
  
  /// Simple operations
  print(2 + 6);
  print(10 - 2);
  print(2 * 4);
  print(24 / 3);

  print(2+6);
  print(2 + 6);

  /// Decimal numbers
  print(22 / 7);
  print(22 ~/ 7);

  /// The Euclidean modulo operation
  print(28 % 10);

  /// Order of operations
  print(((8000 / (5 * 10)) - 32) ~/ (29 % 5));
  print(350 / 5 + 2);
  print(350 / (5 + 2));

  /// Math functions
  print(sin(45 * pi / 180));
  print(cos(135 * pi / 180));
  print(sqrt(2));
  print(max(5, 10));
  print(min(-5, -10));
  print(max(sqrt(2), pi / 2));

  /// Naming data
  
  /// Variables
  int number = 10;
  number = 15;
  double apple = 3.14159;
  print(10.isEven);
  print(3.14159.round());

  /// Type safety
  int myInteger = 10;
  //myInteger = 3.14159; // No, no, no. That not allowed.

  num myNumber;
  myNumber = 10;      // OK
  myNumber = 3.14159; // OK
  //myNumber = 'ten'; // No, no, no.

  dynamic myVariable;
  myVariable = 10;      // OK
  myVariable = 3.14159; // OK
  myVariable = 'ten';   // OK

  /// Type inference
  var someNumber = 10;
  someNumber = 15; // OK
  //someNumber = 3.14159; // No, no, no.

  /// Constants
  const myConstant = 10;
  //myConstant = 0; // Not allowed.

  //final myConstant = userAge;
  //myConstant = 0; // Not allowed.

  /// Increment and decrement
  var counter = 0;
  counter += 1;
  counter -= 1;
  counter = counter + 1;
  counter = counter - 1;
  counter++;
  counter--;

  double myValue = 10;
  myValue *= 3;
  myValue /= 2;
  myValue = myValue * 3;
  myValue = myValue / 2;
}
