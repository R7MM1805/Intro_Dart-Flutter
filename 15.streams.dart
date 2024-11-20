void main(List<String> args) {
  emitNumber().listen((value) {
    print('Stream value: $value');
  });
}

Stream<int> emitNumber() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  }).take(5);
}
