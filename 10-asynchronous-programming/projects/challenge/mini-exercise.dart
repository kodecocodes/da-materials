// Copyright (c) 2020 Razeware LLC
// For full license & permission details, see LICENSE.

Future<void> main() async {
  //await miniExercisesFutures();
  await miniExercisesStreams();
}

/// Mini-exercises: Futures
///
/// 1. Use the `Future.delayed` constructor to provide a string that says "I
///    am from the future." after two seconds.
/// 2. Create a String variable named `message` that awaits the future to
///    complete with a value.
/// 3. Surround the code above with a `try-catch` block.
Future<void> miniExercisesFutures() async {
  print('Starting miniExercisesFutures()...');
  final message = await Future<String>.delayed(
    Duration(seconds: 2),
    () => 'I am from the future.',
  );
  print(message);
}

/// Mini-exercises: Streams
///
/// The following code produces a stream that outputs an integer every second
/// and then stops after the tenth time.
///
/// ```none
/// Stream<int>.periodic(
///   Duration(seconds: 1),
///   (value) => value,
/// ).take(10);
/// ```
///
/// 1. Set a variable named `myStream` with the stream above.
/// 2. Use `await for` to print the value of the integer on each data event
///    coming from the stream.
Future<void> miniExercisesStreams() async {
  final myStream = Stream<int>.periodic(
    Duration(seconds: 1),
    (value) => value,
  ).take(10);
  await for (var number in myStream) {
    print(number);
  }
}
