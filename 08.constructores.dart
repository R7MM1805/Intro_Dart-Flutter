void main(List<String> args) {
  final Hero ironMan = Hero(name: 'Tony Stark', power: 'Dinero', isAlive: true);
  print(ironMan);

  final Map<String, dynamic> rawJson = {
    'name': 'Steve Rogers',
    'power': 'Strong',
    'isAlive2': true,
  };

  final Hero captainAmerica = Hero.fromJson(rawJson);
  print(captainAmerica);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive,
  });

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] != null ? bool.parse(json['isAlive']) : false;

  @override
  String toString() =>
      'name: $name - power: $power - isAlive: ${isAlive ? 'Yes' : 'No'}';
}
