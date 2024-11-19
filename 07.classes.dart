void main(List<String> args) {
  final Hero wolverine = Hero(name: 'Logan', power: 'Regeneración');
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

  Hero({
    required this.name,
    required this.power,
  });

  @override
  String toString() => 'Name: $name - Power: $power';
}
