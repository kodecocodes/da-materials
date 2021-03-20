// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {

}

/// Dart classes

/// Dart classes: Mini-exercise 1
/// 
/// Create a class called `Password` and give it a string property 
/// called `value`.

// class Password {
//   String value = '';
// }

/// Dart classes: Mini-exercise 2
/// 
/// Override the `toString` method of `Password` so that it prints `value`.

// class Password {
//   String value = '';
//
//   @override
//   String toString() {
//     return value;
//   }
// }

/// Dart classes: Mini-exercise 3
/// 
/// Add a method to `Password` called `isValid` that returns `true` only 
/// if the length of `value` is greater than `8`.

// class Password {
//   String value = '';
//
//   bool isValid() {
//     return value.length > 8;
//   }
//
//   @override
//   String toString() {
//     return value;
//   }
// }


/// Constructors

/// Constructors: Mini-exercise 1
/// 
/// Given the following class:
/// 
/// ```none
/// class Password {
///   String value = '';
/// }
/// ```
/// 
/// Make `value` a `final` variable, but not private.

// class Password {
//   final value = '';
// }

/// Constructors: Mini-exercise 2
/// 
/// Add a `const` constructor as the only way to initialize a 
/// `Password` object.

// class Password {
//   const Password(this.value);
//   final String value;
// }