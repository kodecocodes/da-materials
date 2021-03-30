// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> main() async {
  /// The methods below correspond to section headings in the chapter.
  /// Because of the asynchronous nature of this chapter. The printed results
  /// will be easier to follow if you only uncomment the method you want to
  /// examine.

  concurrencyInDart();

  //futureType();
  //gettingResultWithCallbacks();
  //await gettingResultWithAsyncAwait();
  //await asynchronousNetwordRequest();

  //await readingAsStringDirectly();
  //await readingFromStream();
  //await usingAsynchronousForLoop();
  //await errorHandlingCallbacks();
  //await errorHandlingTryCatch();
  //await cancellingStream();
  //await transformingStream();

  //appStoppingSynchronousCode();
  //await appStoppingAsynchronousCode();
}

void concurrencyInDart() {
  print('first');
  print('second');
  print('third');
}

void futureType() {
  Future<int> countTheAtoms() {
    return Future.delayed(Duration(seconds: 2), () => 9200000000000000000);
  }

  countTheAtoms().then((value) => print(value));

  final myFuture = Future<int>.delayed(
    Duration(seconds: 1),
    () => 42,
  );
  print(myFuture);
}

void gettingResultWithCallbacks() {
  print('Before the future');

  final myFuture = Future<int>.delayed(
    Duration(seconds: 1),
    () => 42,
  )
      .then(
        (value) => print('Value: $value'),
      )
      .catchError(
        (error) => print(error),
      )
      .whenComplete(
        () => print('Future is complete'),
      );

  print('After the future');
}

Future<void> gettingResultWithAsyncAwait() async {
  print('Before the future');

  try {
    final value = await Future<int>.delayed(
      Duration(seconds: 1),
      () => 42,
    );
    //throw Exception('There was an error');
    print('Value: $value');
  } catch (error) {
    print(error);
  } finally {
    print('Future is complete');
  }

  print('After the future');
}

Future<void> asynchronousNetwordRequest() async {
  try {
    final url = 'https://jsonplaceholder.typicode.com/todos/1';
    //final url = 'https://jsonplaceholder.typicode.com/todos/pink-elephants';
    final parsedUrl = Uri.parse(url);
    final response = await http.get(parsedUrl);
    final statusCode = response.statusCode;
    if (statusCode == 200) {
      final rawJsonString = response.body;
      //final rawJsonString = 'abc';
      final jsonMap = jsonDecode(rawJsonString);
      final todo = Todo.fromJson(jsonMap);
      print(todo);
    } else {
      throw HttpException('$statusCode');
    }
  } on SocketException catch (error) {
    print(error);
  } on HttpException catch (error) {
    print(error);
  } on FormatException catch (error) {
    print(error);
  }
}

class Todo {
  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory Todo.fromJson(Map<String, Object?> jsonMap) {
    return Todo(
      userId: jsonMap['userId'] as int,
      id: jsonMap['id'] as int,
      title: jsonMap['title'] as String,
      completed: jsonMap['completed'] as bool,
    );
  }

  final int userId;
  final int id;
  final String title;
  final bool completed;

  @override
  String toString() {
    return 'userId: $userId\n'
        'id: $id\n'
        'title: $title\n'
        'completed: $completed';
  }
}

Future<void> readingAsStringDirectly() async {
  final file = File('assets/text.txt');
  final contents = await file.readAsString();
  print(contents);
}

Future<void> readingFromStream() async {
  final file = File('assets/text_long.txt');
  final stream = file.openRead();
  stream.listen(
    (data) {
      print(data.length);
    },
  );
}

Future<void> usingAsynchronousForLoop() async {
  final file = File('assets/text_long.txt');
  final stream = file.openRead();
  await for (var data in stream) {
    print(data.length);
  }
}

Future<void> errorHandlingCallbacks() async {
  final file = File('assets/text_long.txt');
  final stream = file.openRead();
  stream.listen(
    (data) {
      print(data.length);
    },
    onError: (error) {
      print(error);
    },
    onDone: () {
      print('All finished');
    },
  );
}

Future<void> errorHandlingTryCatch() async {
  try {
    final file = File('assets/text_long.txt');
    //final file = File('assets/pink_elephants.txt');
    final stream = file.openRead();
    await for (var data in stream) {
      print(data.length);
    }
  } on Exception catch (error) {
    print(error);
  } finally {
    print('All finished');
  }
}

Future<void> cancellingStream() async {
  final file = File('assets/text_long.txt');
  final stream = file.openRead();
  StreamSubscription<List<int>>? subscription;
  subscription = stream.listen(
    (data) {
      print(data.length);
      subscription?.cancel();
    },
    cancelOnError: true,
    onDone: () {
      print('All finished');
    },
  );
}

Future<void> transformingStream() async {
  final file = File('assets/text.txt');
  final stream = file.openRead();
  await for (var data in stream.transform(utf8.decoder)) {
    print(data);
  }
}

void appStoppingSynchronousCode() {
  String playHideAndSeekTheLongVersion() {
    var counting = 0;
    for (var i = 1; i <= 10000000000; i++) {
      counting = i;
    }
    return '$counting! Ready or not, here I come!';
  }

  print("OK, I'm counting...");
  print(playHideAndSeekTheLongVersion());
}

Future<void> appStoppingAsynchronousCode() async {
  Future<String> playHideAndSeekTheLongVersion() async {
    var counting = 0;
    await Future(() {
      for (var i = 1; i <= 10000000000; i++) {
        counting = i;
      }
    });
    return '$counting! Ready or not, here I come!';
  }

  print("OK, I'm counting...");
  print(await playHideAndSeekTheLongVersion());
}
