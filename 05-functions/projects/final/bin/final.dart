// Copyright (c) 2020 Razeware LLC
// For full license & permission details, see LICENSE.

import 'package:meta/meta.dart';

/// Since this lesson is about functions, the source code also
/// uses nested functions to divide the sections out. This
/// prevents the main function from getting too long. Notice that
/// the function names also act as their own documentation,
/// removing the need for so many comments.
///
/// If you only want to run one section at a time, you can
/// comment out all of the functions in main() except for the
/// one you're testing.
///
/// Remember that you can Command+click (or Control+click) a
/// function name to go to its source.
void main() {
  anatomyOfDartFunction();
  usingMultipleParameters();
  makingParametersOptional();
  providingDefaultValues();
  namingParameters();
  makingNamedParametersRequired();
  avoidingSideEffects();
  optionalTypes();

  assigningFunctionsToVariables();
  usingAnonymousFunctions();
  returningAFunction();
  anonymousFunctionsInForEachLoops();
  closuresAndScope();

  arrowFunctionRefactoringExample1();
  arrowFunctionRefactoringExample2();
  arrowFunctionRefactoringExample3();
}

void anatomyOfDartFunction() {
  String compliment(int number) {
    return '$number is a very nice number.';
  }

  const input = 12;
  final output = compliment(input);
  print(output);
}

void usingMultipleParameters() {
  void helloPersonAndPet(String member, String pet) {
    print('Hello, $member, and your furry friend, $pet!');
  }

  helloPersonAndPet('Fluffy', 'Chris');
  // helloPersonAndPet();
}

void makingParametersOptional() {
  String fullName(String first, String last, [String title]) {
    if (title != null) {
      return '$title $first $last';
    } else {
      return '$first $last';
    }
  }

  print(fullName('Ray', 'Wenderlich'));
  print(fullName('Albert', 'Einstein', 'Professor'));
}

void providingDefaultValues() {
  bool withinTolerance(int value, [int min = 0, int max = 10]) {
    return min <= value && value <= max;
  }

  print(withinTolerance(5));
  print(withinTolerance(15));
  print(withinTolerance(9, 7, 11));
  print(withinTolerance(9, 7));
}

void namingParameters() {
  bool withinTolerance({int value, int min = 0, int max = 10}) {
    return min <= value && value <= max;
  }

  print(withinTolerance(value: 9, min: 7, max: 11));
  print(withinTolerance(min: 7, value: 9, max: 11));
  print(withinTolerance(max: 11, min: 7, value: 9));
  print(withinTolerance(value: 5));
  print(withinTolerance(value: 15));
  print(withinTolerance(value: 5, min: 7));
  print(withinTolerance(value: 15, max: 20));

  //print(withinTolerance());
}

void makingNamedParametersRequired() {
  bool withinTolerance({
    @required int value,
    int min = 0,
    int max = 10,
  }) {
    return min <= value && value <= max;
  }

  //print(withinTolerance());
  print(withinTolerance(value: 9));
}

void avoidingSideEffects() {
  // void hello() {
  //   print('Hello!');
  // }
  // hello();

  String hello() {
    return 'Hello!';
  }

  print(hello());

  var myPreciousData = 5782;

  String anInnocentLookingFunction(String name) {
    myPreciousData = -1;
    return 'Hello, $name. Heh, heh, heh.';
  }

  print(myPreciousData);
  print(anInnocentLookingFunction('Bob'));
  print(myPreciousData);
}

void optionalTypes() {
  // String compliment(int number) {
  //   return '$number is a very nice number.';
  // }

  // compliment(number) {
  //   return '$number is a very nice number.';
  // }

  dynamic compliment(dynamic number) {
    return '$number is a very nice number.';
  }
}

void assigningFunctionsToVariables() {
  int number = 4;
  String greeting = 'hello';
  bool isHungry = true;
  Function multiply = (int a, int b) {
    return a * b;
  };

  // Function myFunction = int multiply(int a, int b) {
  //   return a * b;
  // };
}

void usingAnonymousFunctions() {
  final multiply = (int a, int b) {
    return a * b;
  };
  print(multiply(2, 3));
}

void returningAFunction() {
  Function applyMultiplier(num multiplier) {
    return (num value) {
      return value * multiplier;
    };
  }

  final triple = applyMultiplier(3);
  print(triple(6));
  print(triple(14.0));
}

void anonymousFunctionsInForEachLoops() {
  const numbers = [1, 2, 3];
  numbers.forEach((number) {
    final tripled = number * 3;
    print(tripled);
  });

  // You can also define the function separately and pass it in
  // directly to `forEach()`.
  final triple = (int number) {
    final tripled = number * 3;
    print(tripled);
  };
  numbers.forEach(triple);
}

void closuresAndScope() {
  var counter = 0;
  final incrementCounter = () {
    counter += 1;
  };

  incrementCounter();
  incrementCounter();
  incrementCounter();
  incrementCounter();
  incrementCounter();
  print(counter);

  Function countingFunction() {
    var counter = 0;
    final incrementCounter = () {
      counter += 1;
      return counter;
    };
    return incrementCounter;
  }

  final counter1 = countingFunction();
  final counter2 = countingFunction();

  print(counter1());
  print(counter2());
  print(counter1());
  print(counter1());
  print(counter2());
}

void arrowFunctionRefactoringExample1() {
  // final multiply = (int a, int b) {
  //   return a * b;
  // };

  final multiply = (int a, int b) => a * b;

  print(multiply(2, 3));
}

void arrowFunctionRefactoringExample2() {
  // Function applyMultiplier(num multiplier) {
  //   return (num value) {
  //     return value * multiplier;
  //   };
  // }

  Function applyMultiplier(num multiplier) {
    return (num value) => value * multiplier;
  }

  final triple = applyMultiplier(3);
  print(triple(6));
  print(triple(14.0));
}

void arrowFunctionRefactoringExample3() {
  const numbers = [1, 2, 3];

  numbers.forEach((number) {
    final tripled = number * 3;
    print(tripled);
  });

  numbers.forEach((number) => print(number * 3));
}
