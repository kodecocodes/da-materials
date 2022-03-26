// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

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
  arrowFunctions();
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
  void helloPersonAndPet(String person, String pet) {
    print('Hello, $person, and your furry friend, $pet!');
  }

  helloPersonAndPet('Fluffy', 'Chris');
  // helloPersonAndPet();
}

void makingParametersOptional() {
  String fullName(String first, String last, [String? title]) {
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
  bool withinTolerance(int value, {int min = 0, int max = 10}) {
    return min <= value && value <= max;
  }

  print(withinTolerance(9, min: 7, max: 11));
  print(withinTolerance(9, max: 11, min: 7));
  print(withinTolerance(5));
  print(withinTolerance(15));
  print(withinTolerance(5, min: 7));
  print(withinTolerance(15, max: 20));
}

void makingNamedParametersRequired() {
  bool withinTolerance({
    required int value,
    int min = 0,
    int max = 10,
  }) {
    return min <= value && value <= max;
  }

  // print(withinTolerance());
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

  compliment(number) {
    return '$number is a very nice number.';
  }

  // String compliment(dynamic number) {
  //   return '$number is a very nice number.';
  // }
}

void arrowFunctions() {
  // int add(int a, int b) {
  //   return a + b;
  // }

  int add(int a, int b) => a + b;
  print(add(2, 3));

  // void printTripled(int number) {
  //   final tripled = number * 3;
  //   print(tripled);
  // }

  void printTripled(int number) => print(number * 3);
  printTripled(4);
}
