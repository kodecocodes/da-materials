// Copyright (c) 2020 Razeware LLC
//
// Permission is hereby granted, free of charge, to any person
// obtaining a copy of this software and associated documentation
// files (the "Software"), to deal in the Software without
// restriction, including without limitation the rights to use,
// copy, modify, merge, publish, distribute, sublicense, and/or
// sell copies of the Software, and to permit persons to whom
// the Software is furnished to do so, subject to the following
// conditions:
//
// The above copyright notice and this permission notice shall be
// included in all copies or substantial portions of the Software.
//
// Notwithstanding the foregoing, you may not use, copy, modify,
// merge, publish, distribute, sublicense, create a derivative work,
// and/or sell copies of the Software in any work that is designed,
// intended, or marketed for pedagogical or instructional purposes
// related to programming, coding, application development, or
// information technology. Permission for such use, copying,
// modification, merger, publication, distribution, sublicensing,
// creation of derivative works, or sale is expressly withheld.
//
// This project and source code may use libraries or frameworks
// that are released under various Open-Source licenses. Use of
// those libraries and frameworks are governed by their own
// individual licenses.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
// HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
// WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
// DEALINGS IN THE SOFTWARE.

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
