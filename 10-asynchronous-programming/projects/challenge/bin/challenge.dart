// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:isolate';

Future<void> main() async {
  /// Because of the asynchronous nature of these challenges. The printed
  /// results will be easier to follow if you only uncomment the method you
  /// want to examine.

  challenge1();
  // await challenge2();
  // await challenge3();
  // await challenge4();
}

/// Challenge 1:
///
/// This is a fun one and will test how well you understand how Dart handles
/// asynchronous tasks. In what order will Dart print the text with the
/// following `print` statements? Why?
void challenge1() {
  print('1 synchronous');
  Future(() => print('2 event queue')).then(
    (value) => print('3 synchronous'),
  );
  Future.microtask(() => print('4 microtask queue'));
  Future.microtask(() => print('5 microtask queue'));
  Future.delayed(
    Duration(seconds: 1),
    () => print('6 event queue'),
  );
  Future(() => print('7 event queue')).then(
    (value) => Future(() => print('8 event queue')),
  );
  Future(() => print('9 event queue')).then(
    (value) => Future.microtask(
      () => print('10 microtask queue'),
    ),
  );
  print('11 synchronous');
}

/// Try to answer before checking. If you were right, you deserve an ice
/// cream sundae!
///
///
/// Answer:
///
/// 1 synchronous
/// 11 synchronous
/// 4 microtask queue
/// 5 microtask queue
/// 2 event queue
/// 3 synchronous
/// 7 event queue
/// 9 event queue
/// 10 microtask queue
/// 8 event queue
/// 6 event queue
///
/// Synchronous tasks always run first so that explains 1 and 11. Here is
/// what the event queue and the microtask queue look like after 11 is finished:
///
/// Event queue: 2, 7, 9
/// Microtask queue: 4, 5
/// (Numbers on the left indicate first in line.)
///
/// The microtask queue is always emptied before anything in the event queue
/// gets a chance, so that explains 4 and 5.
///
/// After that 2 gets its turn as first in the event queue. Anything in the
/// `then` callback gets run synchronously immediately after the event queue
/// item so that examplains 3.
///
/// 7 is next in the event queue but when it finishes the `then` callback adds
/// 8 to the end of the event queue. Here is what the queues look like now:
///
/// Event queue: 9, 8
/// Microtask queue:
///
/// Next in line is 9 and when it finishes it adds 10 to the microtask queue:
///
/// Event queue: 8
/// Microtask queue: 10
///
/// Since microtasks take priority it cuts the line in front of 8. After that
/// 8 can go.
///
/// At the end of the one second delay, 6 gets put in the event queue, and since
/// there is no one else in any line, 6 gets run.
///
/// There is no more synchronous code, all the queues are empty, and all the
/// futures have completed, so the program terminates.

/// Challenge 2: Care to make a comment?
///
/// The following link returns a JSON list of comments:
///
/// https://jsonplaceholder.typicode.com/comments
///
/// Create a `Comment` data class and convert the raw JSON to a Dart list of
/// type `List<Comment>`.
Future<void> challenge2() async {
  final url = 'https://jsonplaceholder.typicode.com/comments';
  final commentList = <Comment>[];
  try {
    final response = await http.get(url);
    final statusCode = response.statusCode;
    if (statusCode == 200) {
      final rawJsonString = response.body;
      final jsonList = jsonDecode(rawJsonString);
      for (var element in jsonList) {
        final comment = Comment.fromJson(element);
        commentList.add(comment);
      }
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

  print('Comment list length: ${commentList.length}');
}

class Comment {
  Comment({this.postId, this.id, this.name, this.email, this.body});

  factory Comment.fromJson(Map<String, Object> jsonMap) {
    return Comment(
      postId: jsonMap['postId'],
      id: jsonMap['id'],
      name: jsonMap['name'],
      email: jsonMap['email'],
      body: jsonMap['body'],
    );
  }

  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  @override
  String toString() {
    return '$postId, $id, $name, $email, $body';
  }
}

/// Challenge 3: Data stream
///
/// The following code allows you to stream content from the URL:
///
/// ```none
/// final url = Uri.parse('https://raywenderlich.com');
/// final client = http.Client();
/// final request = http.Request('GET', url);
/// final response = await client.send(request);
/// final stream = response.stream;
/// ```
///
/// Your challenge is to transform the stream from bytes to strings
/// and see how many bytes each data chunk is. Add error handling,
/// and when the stream is finished, close the client.
Future<void> challenge3() async {
  final url = Uri.parse('https://raywenderlich.com');
  final client = http.Client();
  try {
    final request = http.Request('GET', url);
    final response = await client.send(request);
    final stream = response.stream;
    await for (var data in stream.transform(utf8.decoder)) {
      print(data.length);
    }
  } on Exception catch (error) {
    print(error);
  } finally {
    client.close;
  }
}

/// Challenge 4: Fibonacci from afar
///
/// In Challenge 4 of Chapter 4, you wrote some code to calculate the *n*th
/// Fibonacci number. Now repeat that challenge but run the code in a separate
/// isolate. Pass the value of _n_ to the new isolate as an argument, and send
/// the result back to the main isolate.
Future<void> challenge4() async {
  final receivePort = ReceivePort();
  final n = 10;
  final arguments = {
    'sendPort': receivePort.sendPort,
    'n': n,
  };

  final isolate = await Isolate.spawn(
    fibonacci,
    arguments,
  );

  receivePort.listen((message) {
    print('Fibonacci number $n is $message.');
    receivePort.close();
    isolate.kill();
  });
}

void fibonacci(Map<String, Object> arguments) {
  final SendPort sendPort = arguments['sendPort'];
  final int n = arguments['n'];
  var current = 1;
  var previous = 1;
  var done = 2;
  while (done < n) {
    final next = current + previous;
    previous = current;
    current = next;
    done += 1;
  }
  sendPort.send(current);
}
