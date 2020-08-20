// Copyright (c) 2020 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  whatNullMeans();
  problemWithNull();
  nullByDefault();
  ifNullOperator();
  nullAwareAssignmentOperator();
  nullAwareAccess();

  // Null Safety DartPad
  nonNullableByDefault();
  initializingNonNullableClassFields();
  handlingNullableValues();
  typePromotion();
  moreNullAwareOperators();
  lateKeyword();
}

void whatNullMeans() {
  // final postalCode = 12345;
  // final postalCode = -1;
  final postalCode = null;
}

void problemWithNull() {
  // bool isPositive(int anInteger) {
  //   return !anInteger.isNegative;
  // }

  // bool isPositive(int anInteger) {
  //   assert(anInteger != null);
  //   return !anInteger.isNegative;
  // }

  bool isPositive(int anInteger) {
    if (anInteger == null) {
      return false;
    }
    return !anInteger.isNegative;
  }

  isPositive(null);
  print(isPositive(null));
}

void nullByDefault() {
  int age;
  double height;
  String message;

  print(age);
  print(height);
  print(message);
}

void ifNullOperator() {
  String message;
  var text = message ?? 'Error';
  print(text);
  message = 'Greetings!';
  text = message ?? 'Error';
  print(text);

  // var text;
  if (message == null) {
    text = 'Error';
  } else {
    text = message;
  }
  print(text);
}

void nullAwareAssignmentOperator() {
  String message;
  // message = message ?? 'Error';
  message ??= 'Error';
  print(message);
}

void nullAwareAccess() {
  int age;
  print(age?.isNegative);
  print(age?.toDouble());
}

void nonNullableByDefault() {
  // String myString;
  // print(myString);

  // String myString = 'I love non-nullable types!';

  // String? myString;
  // print(myString);

  // bool isPositive(int anInteger) {
  //   if (anInteger == null) {
  //     return false;
  //   }
  //   return !anInteger.isNegative;
  // }

  bool isPositive(int anInteger) {
    return !anInteger.isNegative;
  }
}

void initializingNonNullableClassFields() {
  // final user = User(null);
}
// class User {
//   String name;
// }
// class User {
//   String name = 'anonymous';
// }
// class User {
//   User(this.name);
//   String name;
// }
// class User {
//   User(String name)
//     : _name = name;
//   String _name;
// }
// class User {
//   User([this.name = 'anonymous']);
//   String name;
// }
// class User {
//   User({this.name = 'anonymous'});
//   String name;
// }
// class User {
//   User({required this.name});
//   String name;
// }
// class User {
//   String? name;
// }

void handlingNullableValues() {
  // String? name;
  // print(name.length);
}

void typePromotion() {
  // String? name = 'Ray';
  // print(name.length);

  // String myMethod(int? myParameter) {
  //   if (myParameter == null) {
  //     return 'something';
  //   }
  //   return myParameter.toString();
  // }
}

void moreNullAwareOperators() {
  // String? nullableGreeting = 'hello';
  // String nonNullableGreeting = nullableGreeting!;

  // bool? isBeautiful(String? item) {
  //   if (item == 'flower') {
  //     return true;
  //   } else if (item == 'garbage') {
  //     return false;
  //   }
  //   return null;
  // }
  // bool flowerIsBeautiful = isBeautiful('flower');
  // bool flowerIsBeautiful = isBeautiful('flower')!;

  // User user = User()
  //   ..name = 'Ray'
  //   ..id = 42;
  // User? user = User();
  // user
  //   ?..name = 'Ray'
  //   ..id = 42;
  // String? lengthString = user?.name?.length.toString();

  // List<int>? myList = [1, 2, 3];
  // int? myItem = myList?[0];
}
// class User {
//   String? name;
//   int? id;
// }

void lateKeyword() {
  // final user = User();
  // print(user.name);
}
// class User {
//   User(this.name);
//   final String name;
//   late final int _secretNumber = _calculateSecret();
//   int _calculateSecret() {
//     return name.length + 42;
//   }
// }
// class User {
//   late String name;
// }
// class SomeClass {
//   late String? value = doHeavyCalculation();
//   String? doHeavyCalculation() {
//     // do heavy calculation
//   }
// }
