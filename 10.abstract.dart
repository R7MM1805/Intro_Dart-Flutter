void main(List<String> args) {
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print('wind: ${chargePhone(windPlant)}');
  print('nuclear: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }
  return plant.energyLeft - 10;
}

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

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

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({
    required this.energyLeft,
  });

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}

//extends o heredar todo

//implements colocar explicitamente las propiedades de la clase abstracta, algunas propiedades

//ambos sirven para la herencia