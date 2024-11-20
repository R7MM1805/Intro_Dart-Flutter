void main(List<String> args) {
  emitNumber().listen((int value) {
    print('Stream value: $value');
  });
}

Stream<int> emitNumber() async* {
  final List<int> valuesToEmit = [1, 2, 3, 4, 5];
  for (int value in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield value;
  }
}
