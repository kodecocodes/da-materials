// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  nullOverviewMiniExercise1();
  nullOverviewMiniExercise2();
  nullOverviewMiniExercise3();
}

void nullOverviewMiniExercise1() {
  /// Null overview: Mini-exercise 1
  /// 
  /// Create a `String?` variable called `profession`, but don't give it a value. 
  /// Then you'll have `profession` `null`. :]
  
  String? profession;
  print(profession);
}

void nullOverviewMiniExercise2() {
  /// Null overview: Mini-exercise 2
  /// 
  /// Give `profession` a value of "basketball player".
  
  String? profession;
  profession = 'basketball player';
  print(profession);
}

void nullOverviewMiniExercise3() {
  /// Null overview: Mini-exercise 3
  /// 
  /// Write the following line and then hover your cursor over the variable 
  /// name. What type does Dart infer `iLove` to be?
  /// 
  /// ```
  /// const iLove = 'Dart';
  /// ```
  
  const iLove = 'Dart';
  print(iLove.runtimeType);
  // `iLove` is of type String (non-nullable).
}