import 'dart:async';

void main() {
  // countDown().listen(
  //   (event) {
  //     print(event);
  //   },
  //   onDone: () => print("DONE"),
  //   onError: () => print("Oopsie"),
  // );
  countDown2().listen(
        (event) {
      print(event);
    },
    onDone: () => print("DONE"),
  );

}

Stream<int> countDown() async* {
  for (int i = 5; i >= 0; i--) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

Stream<int> countDown2() {

  final controller = StreamController<int>();

  controller.sink.add(111);
  controller.sink.close();

  controller.stream.listen((event) {print(event);});

  return Stream.periodic(Duration(seconds: 1), (val) {
    return val;
  });
}

void countDown3() {

  final controller = StreamController<int>();

  controller.sink.add(111);
  controller.sink.add(112);
  controller.sink.add(113);
  controller.sink.add(114);
  controller.sink.close();
  controller.sink.addError("Yi fi error");

  controller.stream.listen((event) {print(event);}, onError: (err) => print(err));

  controller.close();
}