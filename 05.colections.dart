void main(List<String> args) {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 7, 8, 8, 9, 9];
  print('Original List: $numbers');
  print('Original List Length: ${numbers.length}');
  print('Original List Index[0]: ${numbers[0]}');
  print('Original List First: ${numbers.first}');
  print('Original List Last: ${numbers.last}');
  print('Original List Reversed: ${numbers.reversed}');

  Iterable<int> reversedNumbers = numbers.reversed;
  print('Iterable: ${reversedNumbers}');
  print('Iterable toList: ${reversedNumbers.toList()}');
  print('Iterable toSet: ${reversedNumbers.toSet()}');

  Iterable<int> numbersGreaterThan5 = numbers.where((x) => x > 5);
  print('Mayores a 5: ${numbersGreaterThan5}');
  print('Mayores a 5 toSet: ${numbersGreaterThan5.toSet()}');
}
