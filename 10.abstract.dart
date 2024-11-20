void main(List<String> args) {
  final windPlant = WindPlant(initialEnergy: 20);
  print('wind: ${chargePhone(windPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }
  return plant.energyLeft - 10;
}

abstract class EnergyPlant {
  double energyLeft;
  PlantType type;

  EnergyPlant({
    required this.energyLeft,
    required this.type,
  });

  void consumeEnergy(double amount);
}

enum PlantType { nuclear, wind, water }

class WindPlant extends EnergyPlant {
  WindPlant({
    required double initialEnergy,
  }) : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

//extends o heredar