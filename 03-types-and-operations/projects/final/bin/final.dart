// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  /// Type inference

  // int myInteger = 10;
  // double myDouble = 3.14;
  // const int myInteger = 10;
  // const double myDouble = 3.14;
  // final int myInteger = 10;
  // final double myDouble = 3.14;
  const myInteger = 10;
  const myDouble = 3.14;

  num myNumber = 3.14;
  print(myNumber is double);
  print(myNumber is int);
  print(myNumber.runtimeType);

  /// Type conversion

  var integer = 100;
  var decimal = 12.5;
  // integer = decimal;
  integer = decimal.toInt();
  print(integer);

  const hourlyRate = 19.5;
  const hoursWorked = 10;
  // const totalCost = hourlyRate * hoursWorked;
  // const totalCost = (hourlyRate * hoursWorked).toInt();
  final totalCost = (hourlyRate * hoursWorked).toInt();
  print(totalCost);

  // const wantADouble = 3;
  // final actuallyDouble = 3.toDouble();
  const double actuallyDouble = 3;
  const wantADouble = 3.0;

  num someNumber = 3;
  // print(someNumber.isEven);
  final someInt = someNumber as int;
  print(someInt.isEven);
  // final someDouble = someNumber as double;
  final someDouble = someNumber.toDouble();

  /// Object and dynamic types

  // var myVariable = 42;
  // myVariable = 'hello'; // compile-time error

  // dynamic myVariable = 42;
  // myVariable = 'hello'; // OK

  // var myVariable;       // defaults to dynamic
  // myVariable = 42;      // OK
  // myVariable = 'hello'; // OK

  Object? myVariable = 42;
  myVariable = 'hello'; // OK
}
