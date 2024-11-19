void main(List<String> args) {
  print(greetEveryone());
  print('Suma: ${addTwoNumbers(10, 20)}');
  print('Suma 2: ${addTwoNumbers(50)}');
  print('Saludo: ${greetPerson(name: 'Ricardo')}');
  print('Saludo 2: ${greetPerson(name: 'Rosa', message: 'Adios')}');
}

String greetEveryone() => 'Hello everyone';

int addTwoNumbers(int a, [int b = 0]) => a + b;

String greetPerson({required String name, String message = 'Hola,'}) => '$message $name';
